package com.javaex.model;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

@Repository
public class ShopDao {
	ArrayList<ShopVo> list = new ArrayList<ShopVo>(); 
	{
		for(int i=1;i<=12;i++) {
			ShopVo shop = new ShopVo("가게이름"+i, "가게위치"+i, i*10, 10+i, 100*i, i, Math.round(Math.random()*50)/10, false, "5만원 미만(2인 기준)", "대충 맛이 있을거라는 내용"+i);
			list.add(shop);
		}		
	}
	
	public ArrayList<ShopVo> shopList(){
		return list;
	}
	public ShopVo shopOne(int shopId) {
		ShopVo vo = null;
		
		for(int i=0;i<list.size();i++) {
			if(list.get(i).getShopIdx() == shopId) {
				vo = list.get(i);
			}
		}				
		return vo;
	} 
}
