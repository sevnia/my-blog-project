$(document).ready(function() {
    const itemsPerPage = 5; // 페이지당 게시글 수
    const blogItems = $('.blog-item'); // 모든 게시글 요소
    const totalItems = blogItems.length; // 총 게시글 수
    const totalPages = Math.ceil(totalItems / itemsPerPage); // 총 페이지 수
    let currentPage = 1; // 현재 페이지
    let displayedPageButtons = 10; // 최대 페이지 버튼 수

    // 초기화: 모든 게시글 숨기기
    blogItems.hide();

    // 페이징 처리 함수
    function paginate(page) {
        const start = (page - 1) * itemsPerPage;
        const end = start + itemsPerPage;

        // 현재 페이지에 해당하는 게시글만 표시
        blogItems.hide().slice(start, end).show();

        // 페이지 버튼 생성
        updatePaginationButtons(page);
    }

    // 페이지 버튼 업데이트 함수
    function updatePaginationButtons(page) {
        $('#pagination-container').find('.btn:not(#first-page):not(#last-page)').remove(); // 기존 페이지 버튼 제거

        const startPage = Math.max(1, page - Math.floor(displayedPageButtons / 2));
        const endPage = Math.min(totalPages, startPage + displayedPageButtons - 1);

        // 페이지 버튼 추가
        for (let i = startPage; i <= endPage; i++) {
            $('#pagination-container').append(`<button class="btn btn-primary page-button" data-page="${i}">${i}</button>`);
        }

        // 현재 페이지 버튼 활성화
        $('.page-button[data-page="' + page + '"]').addClass('active');
    }

    // 버튼 클릭 이벤트 처리
    $(document).on('click', '.page-button', function() {
        const page = $(this).data('page');

        // "처음" 버튼 클릭
        if ($(this).attr('id') === 'first-page') {
            currentPage = 1;
        }
        // "끝" 버튼 클릭
        else if ($(this).attr('id') === 'last-page') {
            currentPage = totalPages;
        } else {
            currentPage = page;
        }

        paginate(currentPage);
    });

    // 첫 페이지 로드
    paginate(currentPage);
});
