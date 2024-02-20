
/*1.  Display total number of albums sold per artist*/
SELECT artist, 2022_sales FROM album_sales;

/*2.  Display combined album sales per artist*/
SELECT artist, SUM(2022_sales) AS total_albums_sold FROM album_sales GROUP BY artist;

/*3.  Display the top 1 artist who sold most combined album sales*/
SELECT artist, SUM(2022_sales) AS combined_album_sales FROM album_sales
GROUP BY artist ORDER BY combined_album_sales DESC LIMIT 1;

/*4.  Display the top 10 albums per year based on their number of sales*/
SELECT * FROM album_sales ORDER BY 2022_sales DESC LIMIT 10;

/*5.  Display list of albums based on the searched artist*/
SELECT * FROM album_sales WHERE artist = 'aespa';
