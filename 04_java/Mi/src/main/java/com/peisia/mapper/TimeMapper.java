package com.peisia.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

public interface TimeMapper {
//	@Select("SELECT sysdate From dual")
	@Select("SELECT now() From dual")
	public String getTime();
	@Mapper
	public String getTime2();

}
