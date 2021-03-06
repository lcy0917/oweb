package net.pkusoft.controller;

import java.util.List;

public class DatagridJsonResult {
	private int current;
	private int rowCount;
	private int total;
	private List<?> rows;
	
	public int getCurrent() {
		return current;
	}
	public void setCurrent( int current ) {
		this.current = current;
	}
	public int getRowCount() {
		return rowCount;
	}
	public void setRowCount( int rowCount ) {
		this.rowCount = rowCount;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal( int total ) {
		this.total = total;
	}
	public List<?> getRows() {
		return rows;
	}
	public void setRows( List<?> rows ) {
		this.rows = rows;
	}
	
}