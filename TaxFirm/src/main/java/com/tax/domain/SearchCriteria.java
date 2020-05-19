package com.tax.domain;

//검색타입과 검색어를 관리하는 클래스
public class SearchCriteria extends Criteria {

	private String searchType = "";
	private String keyword = "";

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	@Override
	public String toString() {
		return super.toString() + " SearchCriteria [searchType=" + searchType + ", keyword=" + keyword + "]";
	}
}
