package com.javaex.model;


public class ShopVo {
	String name;
	String location;
	int reserv;
	int review;
	int view;
	int shopIdx;
	double score;
	boolean dibs;
	String budget;
	String comment;
	
	public ShopVo() {}	
	
	public ShopVo(String name, String location, int reserv, int review, int view, int shopIdx, double score,
			boolean dibs, String budget, String comment) {
		this.name = name;
		this.location = location;
		this.reserv = reserv;
		this.review = review;
		this.view = view;
		this.shopIdx = shopIdx;
		this.score = score;
		this.dibs = dibs;
		this.budget = budget;
		this.comment = comment;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public int getReserv() {
		return reserv;
	}
	public void setReserv(int reserv) {
		this.reserv = reserv;
	}
	public int getReview() {
		return review;
	}
	public void setReview(int review) {
		this.review = review;
	}
	public int getView() {
		return view;
	}
	public void setView(int view) {
		this.view = view;
	}
	public int getShopIdx() {
		return shopIdx;
	}
	public void setShopIdx(int shopIdx) {
		this.shopIdx = shopIdx;
	}
	public double getScore() {
		return score;
	}
	public void setScore(double score) {
		this.score = score;
	}
	public boolean isDibs() {
		return dibs;
	}
	public void setDibs(boolean dibs) {
		this.dibs = dibs;
	}
	public String getBudget() {
		return budget;
	}
	public void setBudget(String budget) {
		this.budget = budget;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	@Override
	public String toString() {
		return "[name=" + name + ", location=" + location + ", reserv=" + reserv + ", review=" + review
				+ ", view=" + view + ", shopIdx=" + shopIdx + ", score=" + score + ", dibs=" + dibs + ", budget="
				+ budget + ", comment=" + comment + "]";
	}
}
