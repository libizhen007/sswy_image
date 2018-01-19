package me.sswy.service.inter;

import java.util.List;

import me.sswy.domain.News;

public interface NewsServiceInter {
	public List<News> getNewTimeNews();
	public News findNewsById(Integer id);
}
