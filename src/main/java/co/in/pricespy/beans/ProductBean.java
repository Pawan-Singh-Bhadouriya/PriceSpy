package co.in.pricespy.beans;

public class ProductBean {
	private int productId;
	private String productName;
	private int flipcartPrice;
	private int amzonPrice;
	private int categoryId;
	private String flinks;
	private String alinks;

	public String getFlinks() {
		return flinks;
	}

	public void setFlinks(String flinks) {
		this.flinks = flinks;
	}

	public String getAlinks() {
		return alinks;
	}

	public void setAlinks(String alinks) {
		this.alinks = alinks;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public ProductBean() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getFlipcartPrice() {
		return flipcartPrice;
	}

	public void setFlipcartPrice(int flipcartPrice) {
		this.flipcartPrice = flipcartPrice;
	}

	public int getAmzonPrice() {
		return amzonPrice;
	}

	public void setAmzonPrice(int amzonPrice) {
		this.amzonPrice = amzonPrice;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

}
