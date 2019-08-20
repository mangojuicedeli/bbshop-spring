package com.bbshop.bit.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.bbshop.bit.domain.Criteria;
import com.bbshop.bit.domain.DormantUserVO;
import com.bbshop.bit.domain.FAQVO;
import com.bbshop.bit.domain.GoodsVO;
import com.bbshop.bit.domain.ReviewVO;

public interface AdminService {

	public List<GoodsVO> getGoodsList();
	public List<Object> getGdList(int category, long goods_NUM);
	public void insertGoods(GoodsVO vo, Object obj);
	public void deleteGoods(Map<String, Object> deleteMap);
	public List<FAQVO> getFAQList();
	public void write_FAQ(FAQVO faq);
	public void deleteFAQ(Map<String, Object> deleteMap);
	public FAQVO getFAQ(int faq_num);
	public void ModifyFAQ(FAQVO faq);
	
	/* 의정 - 후기관리 */
	// 후기 목록 출력
	public List<ReviewVO> getReviewList(Criteria criteria, long score);
	// 후기 개수
	public int getReviewCount(long score);
	
	/* 의정 - 회원관리 - 회원탈퇴 */
	// 휴면유저 출력
	public List<DormantUserVO> getDormantUsers(Criteria criteria);
	// 휴면 > 탈퇴
	public void modifyFlag(long user_key);
}
