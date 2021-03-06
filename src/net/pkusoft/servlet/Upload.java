package net.pkusoft.servlet;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Barudisshu
 */
@MultipartConfig
@WebServlet( name = "Upload", urlPatterns = { "/Upload" } )
public class Upload extends HttpServlet {
	private static String UPLOAD_PATH;
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public void init() throws ServletException {
		
		super.init();
		String rootPath = getServletContext().getRealPath( "/" );
		if ( rootPath == null ) {
			rootPath = "";
		} else {
			rootPath += "/";
		}
		UPLOAD_PATH = rootPath + "temp/";
		File dir = new File(UPLOAD_PATH);
		dir.mkdirs();
	}

	/**
	 * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
	 * methods.
	 *
	 * @param request
	 *            servlet request
	 * @param response
	 *            servlet response
	 * @throws ServletException
	 *             if a servlet-specific error occurs
	 * @throws IOException
	 *             if an I/O error occurs
	 */
	protected void processRequest( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
		response.setContentType( "text/html;charset=UTF-8" );
		// 读取请求Body
		byte[] body = readBody( request );
		// 取得所有Body内容的字符串表示
		String textBody = new String( body, "ISO-8859-1" );
		// 取得上传的文件名称
		String fileName = getFileName( textBody );
		// 取得文件开始与结束位置
		Position p = getFilePosition( request, textBody );
		// 输出至文件
		try {
			//int i = 1 / 0;
			writeTo( fileName, body, p );
 		} catch(Exception e) {
 			e.printStackTrace();
 		}
	}

	// 构造类
	class Position {

		int begin;
		int end;

		public Position( int begin, int end ) {
			this.begin = begin;
			this.end = end;
		}
	}

	private byte[] readBody( HttpServletRequest request ) throws IOException {
		// 获取请求文本字节长度
		int formDataLength = request.getContentLength();
		// 取得ServletInputStream输入流对象
		DataInputStream dataStream = new DataInputStream( request.getInputStream() );
		byte body[] = new byte[ formDataLength ];
		int totalBytes = 0;
		while ( totalBytes < formDataLength ) {
			int bytes = dataStream.read( body, totalBytes, formDataLength );
			try {
				Thread.sleep( 100 );
			} catch ( InterruptedException e ) {
				e.printStackTrace();
			}
			totalBytes += bytes;
		}
		return body;
	}

	private Position getFilePosition( HttpServletRequest request, String textBody ) throws IOException {
		// 取得文件区段边界信息
		String contentType = request.getContentType();
		String boundaryText = contentType.substring( contentType.lastIndexOf( "=" ) + 1, contentType.length() );
		// 取得实际上传文件的气势与结束位置
		int pos = textBody.indexOf( "filename=\"" );
		pos = textBody.indexOf( "\n", pos ) + 1;
		pos = textBody.indexOf( "\n", pos ) + 1;
		pos = textBody.indexOf( "\n", pos ) + 1;
		int boundaryLoc = textBody.indexOf( boundaryText, pos ) - 4;
		int begin = ( ( textBody.substring( 0, pos ) ).getBytes( "ISO-8859-1" ) ).length;
		int end = ( ( textBody.substring( 0, boundaryLoc ) ).getBytes( "ISO-8859-1" ) ).length;

		return new Position( begin, end );
	}

	private String getFileName( String requestBody ) {
		String fileName = requestBody.substring( requestBody.indexOf( "filename=\"" ) + 10 );
		fileName = fileName.substring( 0, fileName.indexOf( "\n" ) );
		fileName = fileName.substring( fileName.indexOf( "\n" ) + 1, fileName.indexOf( "\"" ) );
		try {
			fileName = new String( fileName.getBytes( "ISO-8859-1" ), "UTF-8" );
		} catch ( UnsupportedEncodingException e ) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return fileName;
	}

	private void writeTo(String fileName, byte[] body, Position p) throws IOException   {
        FileOutputStream fileOutputStream;
		fileOutputStream = new FileOutputStream(new File( UPLOAD_PATH + fileName ));
        fileOutputStream.write(body, p.begin, (p.end - p.begin));
        fileOutputStream.flush();
        fileOutputStream.close();
    }
	// <editor-fold defaultstate="collapsed"
	// desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
	/**
	 * Handles the HTTP <code>GET</code> method.
	 *
	 * @param request
	 *            servlet request
	 * @param response
	 *            servlet response
	 * @throws ServletException
	 *             if a servlet-specific error occurs
	 * @throws IOException
	 *             if an I/O error occurs
	 */
	@Override
	protected void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
		processRequest( request, response );
	}

	/**
	 * Handles the HTTP <code>POST</code> method.
	 *
	 * @param request
	 *            servlet request
	 * @param response
	 *            servlet response
	 * @throws ServletException
	 *             if a servlet-specific error occurs
	 * @throws IOException
	 *             if an I/O error occurs
	 */
	@Override
	protected void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
		processRequest( request, response );
	}

	/**
	 * Returns a short description of the servlet.
	 *
	 * @return a String containing servlet description
	 */
	@Override
	public String getServletInfo() {
		return "Short description";
	}// </editor-fold>
}