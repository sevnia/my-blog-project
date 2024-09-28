$(document).ready(function() {
	var maxLength = 100; // 최대 글자수 설정
    var blogText = $('.card-text');
    var originalText = blogText.text();

    // 글이 너무 길면 자르고 '...' 추가
    if (originalText.length > maxLength) {
    	var truncatedText = originalText.substring(0, maxLength) + '...';
        blogText.text(truncatedText);
    }
});