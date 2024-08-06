document.addEventListener('DOMContentLoaded', function () {
    const itemsPerPage = 2;
    const listItems = document.querySelectorAll('#historyList .list-group-item');
    const pageCount = Math.ceil(listItems.length / itemsPerPage);
    const paginationControls = document.getElementById('paginationControls');
    
    function showPage(page) {
        const start = (page - 1) * itemsPerPage;
        const end = start + itemsPerPage;
        listItems.forEach((item, index) => {
            if (index >= start && index < end) {
                item.style.display = 'block';
            } else {
                item.style.display = 'none';
            }
        });
    }
    
    function createPaginationControls() {
        paginationControls.innerHTML = '';  
        for (let i = 1; i <= pageCount; i++) {
            const li = document.createElement('li');
            li.classList.add('page-item');
            const a = document.createElement('a');
            a.classList.add('page-link');
            a.href = '#';
            a.dataset.page = i;
            a.textContent = i;
            a.addEventListener('click', function (e) {
                e.preventDefault();
                showPage(parseInt(this.dataset.page));
                document.querySelectorAll('#paginationControls .page-item').forEach(item => item.classList.remove('active'));
                this.parentElement.classList.add('active');
            });
            li.appendChild(a);
            paginationControls.appendChild(li);
        }
        paginationControls.querySelector('.page-item').classList.add('active');
    }
    
    createPaginationControls();
    showPage(1);
});