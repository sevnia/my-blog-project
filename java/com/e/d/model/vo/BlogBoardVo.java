package com.e.d.model.vo;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import lombok.*;

@Data
public class BlogBoardVo {
	private Number id;
	private String title;
	private String writer;
	private String blogcontent;
	private LocalDateTime dateTime;
	private String formatDateSave;
	
    public LocalDateTime getDateTime() {
        return dateTime;
    }

    public void setDateTime(LocalDateTime dateTime) {
        this.dateTime = dateTime;
    }

    public String getFormatDateSave() {
        return formatDateSave;
    }

    public void setFormatDateSave(String formatDateSave) {
        this.formatDateSave = formatDateSave;
    }
}
