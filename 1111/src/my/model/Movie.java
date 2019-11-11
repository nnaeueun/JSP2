package my.model;

public class Movie {
	private int movieId;
	private String title;
	private String maker;
	private String memo;
	private String movieImage;//db에 있는 애들로 변수 선언
	
	public Movie(){}//기본생성자

	
	//파라미터 생성자 툴을 이용하여 만들기**주의할 점은 id값은 자동 입력 값이기 때문에 선택 해제 한다!!
	public Movie(String title, String maker, String memo, String movieImage) {
		super();
		this.title = title;
		this.maker = maker;
		this.memo = memo;
		this.movieImage = movieImage;
	}


	
	//getter setter만들어줌 이건 전부 다 선택해야한다!
	public int getMovieId() {
		return movieId;
	}


	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getMaker() {
		return maker;
	}


	public void setMaker(String maker) {
		this.maker = maker;
	}


	public String getMemo() {
		return memo;
	}


	public void setMemo(String memo) {
		this.memo = memo;
	}


	public String getMovieImage() {
		return movieImage;
	}


	public void setMovieImage(String movieImage) {
		this.movieImage = movieImage;
	}
	
}
