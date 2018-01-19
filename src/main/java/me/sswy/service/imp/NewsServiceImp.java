package me.sswy.service.imp;

import java.util.List;

import me.sswy.domain.News;
import me.sswy.mapper.NewsMapper;
import me.sswy.service.inter.NewsServiceInter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NewsServiceImp implements NewsServiceInter{

	@Autowired
	private NewsMapper newsMapper;
	
	
	@Override
	public List<News> getNewTimeNews() {
		return newsMapper.findTimeNews();
	}


	@Override
	public News findNewsById(Integer id) {
		return newsMapper.findNewsById(id);
	}

}
