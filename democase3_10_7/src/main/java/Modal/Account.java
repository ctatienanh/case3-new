package Modal;

import java.sql.Date;

public class Account {
    private  int id ;

    private  String userName;

    private Date birthdayUser;

    private int numberUser;

    private String mailUser;

    private  String passwordUser;

    private String addressUser;

    private int status;
    private String img;

    public Account() {
    }

    public Account(String userName, String passwordUser) {
        this.userName = userName;
        this.passwordUser = passwordUser;
    }

    public Account(String userName, Date birthdayUser, int numberUser, String mailUser, String passwordUser, String addressUser) {
        this.userName = userName;
        this.birthdayUser = birthdayUser;
        this.numberUser = numberUser;
        this.mailUser = mailUser;
        this.passwordUser = passwordUser;
        this.addressUser = addressUser;
    }

    public Account(int id, String userName, Date birthdayUser, int numberUser, String mailUser, String passwordUser, String addressUser, int status) {
        this.id = id;
        this.userName = userName;
        this.birthdayUser = birthdayUser;
        this.numberUser = numberUser;
        this.mailUser = mailUser;
        this.passwordUser = passwordUser;
        this.addressUser = addressUser;
        this.status = status;
    }

    public Account(int id, String userName, Date birthdayUser, int numberUser, String mailUser, String passwordUser, String addressUser, int status, String img) {
        this.id = id;
        this.userName = userName;
        this.birthdayUser = birthdayUser;
        this.numberUser = numberUser;
        this.mailUser = mailUser;
        this.passwordUser = passwordUser;
        this.addressUser = addressUser;
        this.status = status;
        this.img = img;
    }

    public Account(int id, String userName, Date birthdayUser, int numberUser, String mailUser, String passwordUser, String addressUser, String img) {
        this.id = id;
        this.userName = userName;
        this.birthdayUser = birthdayUser;
        this.numberUser = numberUser;
        this.mailUser = mailUser;
        this.passwordUser = passwordUser;
        this.addressUser = addressUser;
        this.img = img;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Date getBirthdayUser() {
        return birthdayUser;
    }

    public void setBirthdayUser(Date birthdayUser) {
        this.birthdayUser = birthdayUser;
    }

    public int getNumberUser() {
        return numberUser;
    }

    public void setNumberUser(int numberUser) {
        this.numberUser = numberUser;
    }

    public String getMailUser() {
        return mailUser;
    }

    public void setMailUser(String mailUser) {
        this.mailUser = mailUser;
    }

    public String getPasswordUser() {
        return passwordUser;
    }

    public void setPasswordUser(String passwordUser) {
        this.passwordUser = passwordUser;
    }

    public String getAddressUser() {
        return addressUser;
    }

    public void setAddressUser(String addressUser) {
        this.addressUser = addressUser;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
