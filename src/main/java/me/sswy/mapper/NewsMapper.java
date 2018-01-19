package me.sswy.mapper;

import java.util.List;

import me.sswy.domain.News;

public interface NewsMapper {
	public List<News> findTimeNews();

	public News findNewsById(Integer id);
}
