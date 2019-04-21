<%@page import="java.util.Date"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<html>
	<head>
		<title>Online Bus pass</title>
		<link href="css2/style.css" rel="stylesheet" type="text/css"  media="all" />
		<meta name="keywords" content="legend iphone web template, Andriod web template, Smartphone web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
		<link href='css/style.css' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="css/responsiveslides.css">
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
		<script src="js/responsiveslides.min.js"></script>
		  <script>
		    // You can also use "$(window).load(function() {"
			    $(function () {
			
			      // Slideshow 1
			      $("#slider1").responsiveSlides({
			        maxwidth: 1600,
			        speed: 600
			      });
			});
		  </script>
	</head>
	<body>
		<!---start-wrap---->
		
			<!---start-header---->
			<div class="header">
				<div class="wrap">
				<!---start-logo---->
				<div class="logo">
					<a href="index.html"><img src="images/logo.png" title="logo" /></a>
				</div>
				<!---end-logo---->
				<!---start-search---->
				<div class="top-search-bar">
					<div class="header-top-nav">
						
					</div>
				</div>
				<div class="clear"> </div>
				</div>
			</div>
				<div class="clear"> </div>
				<div class="header-nav">
					<div class="wrap">
					<div class="left-nav">
						<ul>	<li> <class="active"><a href="index.jsp">Home</a></li>
							<li class="active"><a href="studentlogin.jsp">STUDENT LOGIN</a></li>
							<li><a href="Depologin.jsp">DEPOT LOGIN</a></li>
							<li><a href="collegelogin.jsp">COLLEGE LOGIN</a></li>
							<li><a href="contact.jsp">Contact</a></li>
				</ul>
					</div>
					
					<div class="clear"> </div>
				</div>
				<!---start-search---->
			</div>
			<!---end-header---->
			<!--start-image-slider---->
			<div class="wrap">
					<div class="image-slider">
				<li> <img src="https://venturenorth.com.au/assets/uploads/content/images/Seniors_Coach_Tours.jpg" alt=""></li>
					    <ul class="rslides" id="slider1">
			     
					   
					      
					      
					    </ul>
				
					</div>
					<!--End-image-slider---->
					<!---start-content---->
					<div class="content">
						<div class="section group">
						<div class="grid_1_of_4 images_1_of_4">
							<h4>Bus Depots</h4>
							 <img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUSExMVFRUWFxUVFxgXFxUYFhcVGBUZFxYWFxcYHSggGBolHRcWITEhJSkrLi4uFx8zODMsNygtLisBCgoKDg0OGxAQGy0lHR8tLS0tLy0tLS0rLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rLS0tLS0tLS0tLf/AABEIAK0BIwMBIgACEQEDEQH/xAAcAAAABwEBAAAAAAAAAAAAAAABAgMEBQYHAAj/xABREAABAwICBQcGCAoIBgMBAAABAgMRAAQSIQUGMUFREyJhcYGRsQcUMqHB0SMkQlJykrLwFTNTYoKDk6LS4RYXQ0RUY3PCJTSjw+LxNWSEs//EABsBAAMBAQEBAQAAAAAAAAAAAAABAgMEBQYH/8QANREAAgICAQIEAwYDCQAAAAAAAAECEQMSIQQxBUFR0RNhcRQyUpGSoVNy4QYVIkJDYrHB8P/aAAwDAQACEQMRAD8As4GauzwonmiDglCe4fNpZIzV2eFGQPQ+/wAk1kMSFqBjIUsRshaoHNG4kj1UpyC5AC5mfSSk7PoxSsZL+/yRSoGaeo0AMVtrgkpQqCdhUknvmkltEGC2recilQyjpHHhUkRzVdZ8BSik88dSvFNNSa7MKTIfGkZmUgb1JUB3xHrpZlxJ9FST1EHwNPyjmn6X++udtkqVzkg83eAd441fxZ+otUMXWzwpJLRO6nf4PQEiAU875BUn5cfJIo6bM4jDi4AGRwq3neoE7uNNZmhaoa8nXJRTlLTmFBltWKNqVJ2idyvZRLt4tpWtTcpQATgUCT1JIHjWkc6XdEyg/IBKK6Kp69esK1YkjDJjEFIITulQkbKk7PW+3cGeJPSIWO9OfqrpjlizBwkidiuim9tpJlzJDqCeEgHuOdO8NaJpk0EKaAopSK6KAtiQRRwmjRXRQAEV0UbDRgigQnFdFLBFCG6BiGGuCKccnQFFACBFBFHNJmlsPUCK5aOFHC67lKxcpNmqjFCSGyaK63FKIcNJvyaFKVhUaEVCgS2TRgTSgVUybZUUC3bjfnSbrBJyOW6j4qHEay5LG/mxoKcYzXUcgOEDM9ntoUDJHZ9k0KBmez20ZAyR2fZNc5QMen9/kilQM09vhRY9P7/JFKJ2p++6gApHNX1nwFKkc4dSvFNJq9FfWfsilSOcOo+KaACqHNPWftUcjndh8RRVDmnrPjSpHO7D4igBNSeaPp/9yjpTzj1DxNAr0R9P/uUYekfojxNACSBzW+seFNNPkBi4J2BINPEDJHWPGmmsaJt7gcW/fRdcgZpZ2yX0lSHWYGRxLAzjhXOaqIVJ5S3B4hagdvEJq3+TbQzKGi4hJSuYxYidoG4kg9op7prXN9h5TQZDmGBiC0pmQD6OAxt4muReLYZTcIxba+i/5Zrj6TJP7pnltqu8BBu2ZxGJUtwFO6cTc91SNpaXrfo3LEfmruUj6vJKT6qsifKHcyJtYH+oJ7OZU6/rDchkvpalOHGOeBI7BRPxOEGrhLn5x9y5dFkXfzK7Z31yPSdYX1ofnvS0PCpa3vwRz4B/MS+oetoUpoXWa7uAshoDDAycO+erhTVrW28Vc8hySRz1InlFTlPTG6qXjCTcdXa78xJ+wTba9B4m9a4rPU09/DQ+cI4O9jLv8NNNM6xXNrCQlMqlUFaykZ5nJU5ndUW5rlpMDEWUBOWZ5YDPZnjpx8W3Skod/wDcio+HZJK12ZZEvj8m/wDsHPdRuV/ybk/qFe00jofTF1cNhxIQMykgqXkofpdI76duLvI2t96/fWEv7QKL1cOfqvYzfRU6Ynyqt1tdH9SB4roq31iJtbkSYEoQJPAc+qozrPpFw4UBpR2wlCyY+tXK1hvAvA/yYEiRgKVJ/OE7xtrofiuT8C/V/Q3/ALqmW7E7/hLj/pj/AHVx5fdZPdq2hUdp926ZYLiXUSCkeiDkSBwqCsL3SjwxNrSUhUEhDQjYTtHA1jDxqU4bqKr5yfsTHw5yjt5FrKLg/wByX2vsj2UXkLj/AAkddw1/DUdrP50yzjS+AcaRIQmYM8RUFYN6TfSVt3BKQcOxoZgAxs6RSh4zOcN6il82/YcfDto7XwW029x/h2x13KPYmk+TuMWDk7cGMWb6oiY2hOZ6Krmrl9cre5Fy4UcWIA4UyFJBMZRIyNPNbluspQlL68SiozHohMDLPbzvGpl4xmWRY9Y2/m/Yp+GtTUPNk15pcfNtP2rp8BXGyueNmP0nzVPToi/W1ywuXcGEr/HKxYQJOXZTvVFTjylNOPuqhOJJxZ7QCCd+0UT8XyqLktXXfuU/DaTd3RY/MLj59mOy4PtoDo24/LWo6mnj4qqG01qo+45iauVpTAEFxYzkzkkRwqp2+i1uPBnl3MRUUSXFESJz6sqnF4tkyxtSjx34fH7jh4epK0zQTox//FMDqtlnxVUVpZm+QUhl9DmLfyLLYHRKpM12hdUORKy46peIACCconj11KI0C1I9PaPldPVXM/HMinScWv5f6mUuliuxW/O7oZEkkZHmoOfXFdTxRzPWR666vpbOAsSBmeoe2hRsR2fZNGQOceoe2uRsR2fZrlNQ4Hpff5Io6R6P3+TRQPS++6jp+T9/k0AAoZL7fsilT6Q6j4iubYUoLCROZ3gbUjjS7lqoEE9Ps91ADdXoq6zSqhzuw+IoxtVlKhG0mlvNVFU5bCPWOHVTpgM1+j+n/wByjxzuweJp8xZQCFJxZkjMpzmaJfYG0FxYCAIBVKlRJgc1Mk5nhRqAyA5qfpD7VNdPD4B//S/ipNvTdqpMpuGyEkEyFg5lRHNKZI5qsxllSOkdKW7jLuF9o4klA50c4JnMGCMlp3b6htV3L0l6MQ8nv/Lq+kPCoXWBwIv1LOYSttUcYCTU/qHaqQwZggqyKVJWkxIOaSdhEVCaxc2+xKHNxNkyMiAEz17DXzGHHOPUT2i6a9j1+ga2a+R2sGmk3XJpQgpIUdpTnOUdFWO7tS1o9TZMlLUHhO01X9ar+3dSgMgSFEmEYco6hNTqELVo2CCVFk9ZG0eqKzyqoY6Wq27PudGRVCHFK+zGWoXoPfSR4Go60/8Ak/1zn+6h1S0w0wHA4SMRSRAJ2AzspPQ6+V0hjQCUlxxf6OeZ4bR31q4yjkyya4aNZQankk1xQ718tFlxLgSSjBhKgJAOInPhtpJnWVDrfI3LZKOaMTZg83ZKezceypnWfTb1upIQlBSpO1QJ5wOYyI3RVe05fWjqJbbUl3LMAJT+dIBz7qjp0544KcePJryJwJzhFSjx5NeRcNX2WEtnzcygqk5knFABBnMZRlT93Yeo1A6islNuSRAUskdIwpE94NTzuw9R8K87qFWVq75ODMqytXfJQ9SE/Gf1a/FNF17/AOZ/Vp8VU11c0ohh4uLBIwFMJgmSQd5HCu01d+d3A5JKpUEoSDE5TmY2DPuFew4SXUbvtr3PV0ks+77UWrW8fFFdbf2hVb1f0q+0koaaxpK5JwrVBIAIlJjYKsuuZAtFydhb+2BVb1a1mbt0FspKipcgggDMAb+qubp+emdR257HPgi307qN8lh16/5b9YnwNV/V/SF0hspYZC04iScKjzoAIkEDYB31Pa9n4t+sT4KoNQj8WP8Aqq+yms8eRR6S2r5FCSj01tXyRurGhXhcB5xBQE4jnkSpQIgDhmTQeUL02for8U1dMVVPX2zWoNupBUlIUFRmRMEHqyNT0/U/F6mMpceRGHM8mdSlx5D+0/8Ajv8A86vsGq/qEPh1/wCmftppNGtJFt5vyQ/FlvFiOwiJiPbT/UWwWkrdUClKkhKZyJzknqyFbSi8WHJvxb4NZQePHPbzfBbQKzjQo+Pp/wBVz/dWkCs40IhXnyThVHKOZwY2K31j0LWmT6e5j0v3Z/Q0FYoGhmOseNCTQtjMdY8a48Tua+qON9ioL2nrNdRlba6v0g8gtjdguZjh7ffS7eiVQBw90VMPqIHNTJ4Z+ylLckjMQaxpGhGN6J2ydtKKsW0RiMcOOXAVLAVGaUgqQVPttpSZIVhkmeJIimA5Z0enbFJW9w0tbjaDm1GOEnKZgYognI91VvymXt2lloWpdSlZcU640FShKEYkSpIOBBMyZGwZ1WPJv5Q8eO1u1qUvFjQ4olUpgApI25RPaaOQ4NRIHDvzrsVQ91rLatqwKeExigBaoETJKQQMs6kmH0rSlaFBSVAFJBkEHYRQAoTSN1bocSUOJC0KyKVCQR0ilYropAQKNT7FIUBbNgKEKABgxsynpPfSQ1KsQkpFukJJkgFQzyzyPQO6rCRQKpUh7Mj9D6IatUFtlJSknFEzmdu2njgBEEAjgRI9dCTSSlUxWR7mg7YqxciiRnkIHaBkaHSVw42grQgORmRMKjo408KqTLo2VzZejwZWnkin/wC+Rp8afqzPntPWqiVGzTJ25qHqFLWetjbchq1SmdsEyfVNVHXhstXziGwkJVhXGcyuSqOiR66Y6J0oG3ueDsIjZG+emm+j6Vqnj4/ml7jfUZWqcmX+71vK0lK7dBTwVij1imH4fZH90t/3jVf0ppxtaClIM5R79lQXnR41Mek6SPCxfvL3BZsq7SZpY18WMgyjsJoqtfHPySf3qzcXR40PnJpfYui/gr837k7z/EXY6woOy0t/qfzpVjWtTfoW7KJ+akjwNU23mczx8KQvLkgDPeBWn2bpXw8S/f3G82V95Mvr2tz6xhUy0pJ3KQSOjImm41gcGxi3H6r+dVZFwrpolxeEDPxoXS9Ku2GP7i+LkX+Zlwc1wuDkUtHrRPiaKnXC5AgJbA6Ege2qYbs4aXafMCn9m6VKvgx/IW8/xMtZ1wu+CO5Pvon9L7zcU9yarCnDR7UqKhs7d/VTXT9Mv9GH5C2l6ss39Ir470jsbHjQHTt98/1N+6m9zbxh6ukeECh5Ix9/d7aWnT/wofpRVy9X+YsNLXx/tu7k/dRLjSt6kYlPGB0p91Nm3SgyIk9GVMNJaWLiFtxO0TEbNu/jFa48WKT4xQ/SiJSa83+Y/Tp27UQA8ZOXpD3Uu5c38TyxHTjPuqt6PRz0fST41adKOnkiOMbOurywx42qxx/ShRbku7G3njnH10FRa8jBMHrrqn4jDVFvd09dlgrNy4FcqlAKQ2nm8m4ojmp4pT3VG3mkrpTFspTz6VL5Yrl9w5BxKQclQcgY665Sviwz/vB/dYV/FQ6ReTydtmPxbhAy/LrEj6oqCgdNtSWsUq+Lsk4iTKipwkmdpiM+gUXTNohL7kISISwkwkDPzRijaaeAUgSJFvbZb4LQVMdpo2nnAbt9IMkKaSQATHwDQHhSAd+URLnnDDaH30BaHSpIdc5M8nyQAKJiDjOWzorM9aUhCmVJAB5MTEDbIOzoNad5RlRdt/m294r99oeyso1nuAstxuQkdoFWhDFBXGSl9hVl01zgfAxYnQNs4lbOO2rZoGzm2eVMRjH/AEwabu2g80xb+Tno2indE7FcS/cpglx4CQPxi/fTt+8uk80PPhX+q4PbUpp5gJbTE+kk+v8AnSbrg5VAO2U+ND9RKREfhq8SY84uZP8Amu/xUqjWC9Gy7uej4Zz31K3yEBbc7So+NQbBThTmSRikdGUH10dykx2rWe+EfG7kfrV+00Ua3aQ/xlx9c03L2LrrinYN8g+umkFj1vXDSW68f+t/KmH4buQ4FoXDmLEF4G8eKIxBWGZg08uFjCQOGdSSTBbMD0V+uDQxbHC6cuW23X1co5ChiUBOTigNg4AUtd6NxWy31GC2YSRtmR76R0GPgEfSWP8AqGnGkbj4q6jgUeuSfZU+ZRGWAK0JUd8g9hI9lPE2/gKQ0D+JH0leNSMeA9tJoY282Ejqo6LQZUvGY6qMN3WKKEAw1mDiPokbtkHoprpxgBqRkcSM+0U/a3dtNNO/iv0keIqkIk0WyeHrNNdI6OxgRlBPTu6SKfJNHn21fAiHetMFqZBxpSpQHA7QMj95qRtLdJbQSMylJO3aRnRdKn4Fz6J8KXssm0fRT9mhJACLVHzfXTfSAQ0kL9HnIE5nIqAp9NMtLJHJ5gHnI3fnpo4A0lei2DtRPDNXvon4CtvyYjrV76L+FEcFdw99G/CiPmq9XvrRxihJtgJ0PbT+JTPb76zbSrID74AgBboA4DEYFaK5pISMjWf6QMuPK4qdPrNVgpyYsnYDRLY5VoHZjR3SK0Ndm0cihJHA51nujjDjZO5ST3EVefwkPmnvFXm1tWTC/ITVoK1Jk27fdXVx0oPmHvFdWdRK5KtpdQSxa5E/GnlEAZ5WwGz9Ku0lcJ5S2VISBZSMWXp3Th78q0N/U1EMp5dYLJdUClqZLoAM58B66G61BYdWlxbpMMoZgoAEJUtWKARBJWcq5aNTP9JrHnzwkZNWKN2cWqFf7/XS146n8JXYKgCbpKRO+G2k5Ve77yd2zrrjq3FystmAEwnk2kNAJ6IQNtLK1BtVPOPqW4VOP+cH0OauUkJTzZw8wUUBSvKar40ei1ufW8n+Gsg0krnd1a35QuddOD/6qv3nXP4azvWHV1THmilOBXnLIfgJIKEzGEkk4j05U0IFi7cS3hStQChzgDtMAZ9lAVFSIxKgCIkxHCK5Y8KVsWhzlL9BIM8SpQIQkdM59SSd1a1wY2ML25UUgEJPTGeR7qRbexKBhIjcBkesUN0c/vFNRtoooeXl0oxkkRshIG3jx2VHJV9+yjhU/fhREjf99lTVFBxToLyneYA6hTdOdKRNUxDgA4VzuSaeByVp+jG/eBUejYrpSfCnLK/RMyPaR4+6omJEpq9/y6fpr+1/OmWl3SEqHziPUkU91cM26f8AUc8U0lpTRjjiQW0lWUnoyj2VF8moOr4+BT0lX2iPZUq0wpasKUlRIEAAk79wplohvCygcNvXiM1cNQE/HE9CCf3o9tK+QK2tsgwQQRIIIzB4Ghw+j1irE+lpSwpDLQSpLz76lIlRSFqACBPplWZmNtQ6Lkj0m2OcQE4UKEJJyJlXp9IpWFCCU7KR0naLcbwtpKjIVA4Agk9QFTDekY/sWczvRMZbpOVPtH6U5+bDSpbehKUhOIhlagkmDkYjt7KaYURSrZ5KjiRCAEknOc8x0RmO+jYfbVi0olsqcUmUgtW6kpHyknAMEg5ERu4GoJxOE4TmRIp2KhlpQfBL+ifClrT8WjLalP2aT0ofgl/RNLWJ+CR9BH2RTvgKFopnpgfB/pJ+2mn00w0z+L/SR9tNCbAk0ac/ylxsnm+/ooWtNgmChQ649dNtIoVbuqbWqefggAESEBciRO+k0rCkmFKSrdCU4T0GQaxeTIzRRiiX89J2JzBO/d9/GoJ0SV9a/bTtl1UYTIKRmcpIjKnNtoZxbbjpGFOFxUnaTB2Dh0119Fs5u/Qyz1qqIq0SSpAG0lIHXuq1s6IuVejh7SR35VXba0WFM7sZRhVuGKIPrrQGlFAGcmIyJAJykJHCo8RnKMo0HTJNOyEOgbr/ACvrK91dVmQ6qB6NdXnfaMnqdGkSQLylIUQSCUrKestIdT4LFJ6GvFK5EqVIKnW1TvMBSJ74p1aaPYSvEkmZVliJGaYiOgExRrLRrKQAlaiAtLgzB5wER6Owiu1GPJNJQOA7qiLfSYgYklWJ0IECcM7JgZARvp6+2hakKJVLasQgkCYjnDeOulLZCESE5SSTnvNUHBi+v6vjlx+batet16oPykIj8GJ4WCftGpTX9Xxi9Vwt2B/1Fn21EeUK4Lq2ClOEWzKLYkqSZV6c4doyI7qEJkGwkmABJkADeScgB0zRtILAhpJBSiZI2Kc+UrpA9EdAneaYM3LiTKVgGCJyykEZcDBOdJEqPyx6q0UjPRgOZ0s/pMqZFvgbgRzgnngzJznaaYXKlgbQRxEbabocIpNpj1H9m2CrqSs/uGPXFN0p8fZQ2zqxJBAkFOcbDtoIPEffsosdA4I6jS7SQdpjv9lNyT84ffsooWoZTP36qewtSRS2n53qP34Uzul55HYfXReVVvjty9lJLn5wqWxpFn1dV8XH+o6PsVZNDacat218qSMaQlMCc+dt4baqmrqVKaLaEqWUKK1FIKoSsASYGXomh0lKghIzz2Z57dkVnKG3DLToc6NdAbA4e81bdSWFOvEpcKA3gcVA9IJKzgJkQDB41SGVQIORyyq46jrKWb1znAoakAb/AIN/mkdZTT1FY7/BRSHJyLbHKRxcUsjF3A5dNRekbUoSymJKi2vKSednHrqavuUl1wrKTyrbSUKgBwOlXpb+bmB11AjWJDbqkh4qeabwNrAwkEwCuYj0FLAjiKKAc2ti6cKuScKScjgVhOW4xBpTVxGK5QBudcB6AQsdm2iau2Lr7ikodPNcKygrcGUGFIEHbO7pqcatBaXLRcCUlRUUwNpAmCSBSbpWPluhDWfRENmAeURZJeQoCClbIUSI2KmQDPWM6jtIWxaVgVtCUz1lIJ9ZqUveUDicLi4dFy22FFZICFKxBWXokCRuOWeYqC1gvUhWMrK0qSmFHMkmYERsgD101yJjDSrnwt0kSEpQjCnhzAT3mT21O6EtUqtkqO3DG35rOIZddVzS9wlT9wUqCgppogjfLSDUtobTrbVmklW8pyTJnkQkjvUKdcAK6MTjDYUdoTJ7Kh1vqVbhSjJ5QepwU50fpRpvk+UJgAEwnEYAzgb9oqJ87T5uUjcudmwY5z7KdCskvKQr4+s4iE8omYK4gtJz5p9dNl2DTQLi33cEAxnmcvRz29EcaLpTTNo6y5icW3cJ/FpwqAJCCBJAIzxRmRUPpG9NzhSHAQlIyS0s84oAUokSCZkZVCxvhF7E2NbLUGSl1SojFgEkdMqz3d1aZZOhywC0+iu3xAHIwW5E8DnWFDRRicRjjyT38Nbjq8n/AIY0JmLVInP8ltzE99d3SRUW6MMsm1yV9xUN2yjmAGjHUBlVl0TpZsuBOGCck5ggbIEn751Ur5SvNmSn0uTRGzbhy9dNtAvvFpKnRhd2nIceacjwwmp63HGdWPDJrsatjPAd/wDKuqPt7gKSlXNzAO08OuurwtGdtlgtUNpIguZFQAUkgc4bCY2Um1YsIOS8IS6XcOHKQISkQNgqtf1mW4UUqbuAQSMg0Rl+kDVl1b1havQtTRVCCEqxpjMicucZr0lRzkioMBfJEthxaVEIxALUn5SgmZI6aTNgylaAMKSCVRiMnPbBNeZdP6wuvaUXeIWQsPy0oE81DasLYHRhSJG+Txr0xo+8bfaZfhPwiUFMxMlOPCD0Z91VYGLa+Kl6/wD/AM6P3SqtcRq9aOMtqctmHFFKZUtpCiYG8kZ1jWuCybq6SAYVcNpJjLmstgAnjKz3Gt5tUnzdsfmikhFd0joHR7LS3VWdthQJPwLXUBmMs4qoas6T0fduqYVo62bUUrU2Q22rEEgyPQEGJz6K0q8tUuoU2tOJKwUqHEGq3obUq3s1uPN4yopUBjIIQCM4gDvNZzU9lXY2g8er27+Qvd6nWTjeDzZhMpHODLWJJj0gSnb1zTf+gmjgAPNGTG/k0Sc9+VWSch1Ck1Kq7MiCf1csEgk2dsANvwDeQ7E0wb0dotaglFvaqJ2AMIn7NWR9pKwUqAUk7QcwaYp0TbpUFJZbSQZBCQCDxBosBgvViyH9ztv2Lf8ADTdWrNnIPmzEAERyLUGYgnmzlB2canXFUgo0AUXWXRllapW8LVgmW0pQW0YSo4zwyySTs3UOrK7S5QZs2G3EmFJDaCOIg4asekdHN3AcbdEpPJnIwQRigg7tvrNNdHaDZtxDaoEyZIJJ6TU/4tvkaLTT5nGybabuOTbQiWs8CUpnM7YFZjodvGlDwIiYgjMEGD1Vqd4ocncZz8F7axvV98oWWVAg45/lHGuuPaH1/wCzmfdkhpOzIl2RmoSOGe2rTq5crSzdhKTmlBxDbOJCUoA4kqqlaSv4WtEbwJntmKtGj9LKtrRbyQJDzKkzvIdaJEDMiGz3VOTtL6lQ4aZuNs22pKVFtGIgKPNTtIk7qJftHD8ChgLkfjEc3Dv9HOdlYU/5UrlKiQpIUZObYEScgN8Rv6Kl9DeU0lJNzcDF8kNoVmN4OWRGXf0VjZbNkS02CVBCASBJCQJjjxqoeVRSk2iHGkklDyVKCRMoCVFQMbsh6qz3TflNdxQw7jQRsLZntmPuKih5TLhQLSlICFpUlcojmkbExsVunpobscXq7LTpjTDrQJS2lQTcKSjnQS24hKiT3Ky6qiNH2jLn4xoQhRUkE5QZ4ZHaaUXpdPJMrXdlvG22YABw/BhJIiYOZ21UF6SLalYHcSJJJlMqAmMt1MjuK3qkcu/gMowgJzByECJHDZ2U0afHmgRhM4yoKnL5Iwxx3zTKxWAk7Zw87rKicuyKUQtPIwZmVRw2jb3VQD9bvOQegj7NIuL5rnXSKnecnonxT7q5xyQuN5yqrER16uLhRmIjp+SKReIUZxCZJ2HwAy2VYdIXLSrZaOSRymFOFeFOKQtJMq2+iCKrdtbFWYUBnvPrqfMYIaSR6aR2L9gr0JqwP+GsiQfiyRImD8HG+vPt6FyMSwrbERXoHVEf8OYEzFukZbDzK6ul+8zPL2RV31RbMHglPZFVrTOnkpaUGVnGcIT6p7hNWF0A2jM7IgngJIPqrPtMNW6LpIZXjaMEGFCCZER0HPLiKXVq2gxeZqdnZXi20LQQElKSAVtJMRvClgjtFdUAvWogkJKcIJA27N26urjuXobceoppXQl0l5ZNs9HKLIPJrIiTBkCIq1+TR9bVpfuKSpGFJWMQIzS2s7+GVagKgPKG9h0Zen/67ifrJw+2igPM+rlmp19CE7SCeoBOZr0T5M4e0ewFH8UtQ7QSofbT3VmXkibRybqlQklS0hZSgkDkp5piclQYJjo21oPkZc+KOJ4PK/8A5s0OgTM704+TfON5Qq8CumQptHdtrdkBHmyFKAMIkkgHICTWEX6U+fJXiEG5UVyRzSLlW3owpSZ6att75YWWB5ubZbhQSjEFoCVRGeY2GfVSQVRZLy4uENpueTZU0YUW0tSQ2TmeUGxYGeyDEb6ZaR1nKX1tt2qHG2jDnN58D01DKEgdPDdVJV5UWCpKjbXJSiMLfLNYQAQQmQjGUAgc0qIy4ZUFx5TLJT3Lq0evGdquWhJI+ckCDsG0Z75qUnRVqzXr9aG21LwJMDmjCM1HJKYAnMkDtqgu62PCwcdKGRcs3It3ByUJIKoBCFZjLp2g1GP+WVtWRsVGCFCXR6Q2EczbUY/5S7VWMnRTSitQUvEUEqUJhS5b5xEnM8aGnZJY39Z3vNnHQlnEm982A5JOPk5j4RByS51GKIzrO6tLScLIU7euW2Pk04m20FMBaDkHiCeIy2VXXfKXbqJnRbJxqClElJxKGxR+CzUJOZ40J8pjJxj8HMwo4lZjnqEkKUOTzOzM5iaWrAnLzTz6U3JCG1C0um21qDSCXGVqIUIiA4nm5jLnbKktXX3nLh9l9CByKpybbAKHEpU0mYzIGOSOAqnI8quFGBNgylHzQshMzPohuJnOh/rackkWbYJifhFSY2ScGdPRhZcdP6VWy6GmW2pCA4rEBzhKsk5iMknPOpW7tVqSXA6GUpBgFKCCsIC8K5EkZxCSKy298pJdKVOWTCin0SpSzHRszHRspvpDyiuOnEu2bMGSnlXwlUbMaQoJX+kNmWym0xpo1O+QVpcSBClspgHcVAKg9UxWfI1CuEuh0utnOSAFe6nGrGvjt1dhtxtsY0rzQVfJGLfxzq5Ov9fr91W8jVL0J1szu91CfW4pfKIAJBjPgKJfagvuKxBbYyA3+6tE5YdNAXR01DyNj1Mt0h5PrwkYeTVlHpYYjroqtQ7sABKUmBnCkjPvzrU+WHA99HS8Ovt/lS3HRkDuod8T6CY4con30B1FvfyKf2iPfWw8uOmg5QdPeKe4UY6jUe+H9ik/po99cvUe+3MpH6aPfWwYx9z/ACrg4KNxUZOjUu9/Jp+un30qnUq8+aj66a1UOjh6/wCVAHxwP37KNwozAaj3fFv638qUTqLc/OR3mtLxp6aELFG4ambK1DufntntIrjqFc/OaPafdWkl0UUvj7xT3DUzkagXHzmu8+6tI1fb5G1bYWRiQ2EGNmQjKk+VFBywrTHn0domWPYrt3YL5PkW0LISYClACQTM5HdMdlVr+hV1+Z9Y+6tFL4+8UXl008nUOfcI49TO/wCh11wT9Y+6urRPOB9//dDWe49Smt+WG8TtTbq/RM/ukUbTPlUVe2rto5bhJcSBjQtRgBQJ5quqNu+m7+o9udnKI6lT9oGmg1GKVYm3uxaD4pPsqNolUwPJ3pJDalW6m+e4VHEcOFQCAAg4gfz8sttXnyRay27KTbOOYXXXZQClRBxIaSkYgIBkHbVCc1duWTyvwZCATKCvEMtoBHtquXVyUqMEgpMAgwQRGwjqp3YizaTUC85zhm86TnxWogesVW9NJHKZEEg/7U/zpmpDhMw5nnJC8+BnfRlIeVmUrP6B9gqqEAlpUyB2fc50fk1fNyO0e7OuSy981Xbl41wccH/tPvpgByKo9E5bOIoUsrOYT4Z9lHF0vo70++h8+I2x3j30AN3xgyUIB2bPVSXLjjmN8fypy+8hyMU5bMx7qTSw1849491MBJLwnaM9uWXhSjJxEJSZO7dHaRTJxMEjpp9ocQoq4CO00UA48yX+bn0ih8wc6OuRUgHhxoweFFCGujrZxtwOZCARkYIyjdU0jS76djrg/SUfE0x5ShC/vAp0gslE6x3Y/tldoSfEUu3rTcjaoK60j/bFQnZ6qMD0UtUFssTetzu9CD9Ye2nTeuR3tdy/emqsFUMiloh7MuLeuDe9tY6ik+6nSNa7c7SsdafdNUTKhCRR8NBszQm9PW6v7UDry8RThu7bV6LiT1KSazbBXYaXwg2NQT30MddZo0+pPorUnqUoeBp6zpe4Gx5farF9qaXwmPYv0V2VUxGsNyPlhXWhPsApZGtLw2toPYoe2peKQ9kWyRXSOFVtGtKt9uew/wDjSw1lRvadH6IPtpaSHaJuBSakCo1GnGjudHW0vxFOGtINKyDiJ4KVB9VKmO0LKAopox609k+JpOB9z7NlAAEiuouXRXUCHCXT0eujhXX3/wAqbJHQKMFdAooLHoAIgg95qMVq1aH+6tfVFO0OdAoxdPRTAanV+3IALDcDIAjYKA6s2n+Ha+on3U8DvQKNy/RSAiF6l2Z/sQPolQ8DTZXk+tDvdHUsfw1ZEqnhSyRTtgVT+rqz4u/X/wDGhHk6sv8AN/af+NW7AOFGCKLYUiof1dWXB79p/Kh/q6suDv7T+VW/AK7COFFsOCo/1eWXzXP2h91KJ1Ash8lz9oqrThocNFv1CkVkai2fzXPrqpQakWnzF/XVVgNCR0mi2FIgRqXafk1fXVRhqdZ/k1fXV76msf3k0ei2FIhRqjZ/kj9Zfvof6KWn5H99f8VSynI3CgLsCcIothSIwasWn5EfXWfbRhq3afkB3q99P2rsHLCBSp7I6j76VsdIjBoG1/IJ9fvo40Jb/kG+6pA9VJlI+5NFsKG40Qx+RbH6KaMnRrI2Nt/VT7qWiuxUAAm0bHyEdiEe6jBpI2JT9VNAVVxVQAfL5qe4e6uKvzR2EjwpImi4qAFguPkn6yvfRZHzfXSJcovKmgQstKeFMnbNsmcCe1KfdSxXRCqgBHk4EAQOjIUkulVqNEM8aYDYoNdSxB411ID/2Q==">
					 <h3>Airoli bus depot.</h3>
					 <h3>Rabale bus depot.</h3>
					 <h3>ghansoli bus depot.</h3>
					 <h3>koparkhairane bus depot.</h3>
					 <h3>turbhe bus depot.</h3>
					 <h3>sanpada bus depot.</h3>
					 <h3>nerul bus depot.</h3>
						
				
						</div>
						<div class="grid_1_of_4 images_1_of_4">
							<h4>What would You Do?</h4>
							 <img src="http://glaadblog.org/wp-content/uploads/2011/02/WWYD-Logo.jpg">
							  <h3>first step : you login in student login.</h3>
							 <h3> Second step :fill the form</h3>
							    <h3>Third step : Submit the form</h3>
							     <h3>Fourth step : Print the form</h3>
							
						
						</div>
						<div class="grid_1_of_4 images_1_of_4">
							<h4>What is quick bus pass?</h4>
							 <img src="">
							
							 <p>This system was intended to develop an application to perform functionalities like accessing the basic information for authentication and provide Bus pass to a particular person without placing him/her in a queue for a long time. Online bus pass generation system is helpful as it reduces the paper work, time consumption and makes the process of getting bus pass in  simple and faster way. User can refill their account and extend the validity every time when the pass expires. Admin can view all users’ details and balance through its login..</p>
						     
						</div>
					
					</div>
					<div class="image group">
						<div class="grid span_2_of_3">
							
						</div>
						
					</div>
				</div> 
				
					<!---End-content---->
					<div class="clear"> </div>
				</div>
					<div class="footer"> 
						<div class="wrap"> 
						<div class="footer-left">
							
						</div>
						<div class="footer-right">
		
						</div>
						<div class=="clear"> </div>
					</div>
					<div class="clear"> </div>
		<!---end-wrap---->
		</div>
	</body>
</html>

