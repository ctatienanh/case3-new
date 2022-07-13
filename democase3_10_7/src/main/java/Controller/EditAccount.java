package Controller;

import Connect.ConnectionMySQL;
import Modal.Account;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class EditAccount {

    static ConnectionMySQL connectionMySQL = new ConnectionMySQL();

    public boolean edit( Account account) {
        String sql = "UPDATE account SET userName = ?,birthdayUser = ?, " +
                "numberUser = ?,mailUser = ?,passwordUser = ?, addressUser=?, img = ? WHERE id = ?";
        try (Connection connection = connectionMySQL.getConnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(8, account.getId());
            preparedStatement.setString(1, account.getUserName());
            preparedStatement.setDate(2, account.getBirthdayUser());
            preparedStatement.setInt(3, account.getNumberUser());
            preparedStatement.setString(4, account.getMailUser());
            preparedStatement.setString(5, account.getPasswordUser());
            preparedStatement.setString(6, account.getAddressUser());
            preparedStatement.setString(7, account.getImg());
            preparedStatement.execute();
            return true;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return false;
        }
    }
}
