package com.exam.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.exam.dto.RefrigeratorDTO;

@Mapper
public interface RefrigeratorMapper {

	public int refrigeratorAdd(RefrigeratorDTO dto);
	public List<RefrigeratorDTO> refrigeratorList(String userid);
	public int refrigeratorDelete(int num);
	public int getRefrigeratorStock(String userid, String gCode);
	public int updateRefrigeratorStock(String userid, String gCode, int amount);
	

}
