package src.vo;

public class User {
	private int id;
	private String email;
	private String pwd;
	private String name;
	private String stu_num;
	private String qq;
	private String phone;

	public String getQq() {
		return qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public void setName(String tmp) {
		name = tmp;
	}

	public void setEmail(String tmp) {
		email = tmp;
	}

	public void setId(int tmp) {
		id = tmp;
	}

	public void setPwd(String tmp) {
		pwd = tmp;
	}

	public void setStu_num(String tmp) {
		stu_num = tmp;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getPwd() {
		return pwd;
	}

	public int getId() {
		return id;
	}

	public String getStu_num() {
		return stu_num;
	}

}
