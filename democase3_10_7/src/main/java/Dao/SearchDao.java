package Dao;

import Connect.ConnectionMySQL;
import Modal.Film;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class SearchDao {
    static ConnectionMySQL connectionMySQL = new ConnectionMySQL();
    public static List<Film> getSearch(String searchName){
        String sql = "select * from phim where tenPhim like concat('%',?,'%')";
        List<Film> films = new ArrayList<>();
        try (Connection connection = connectionMySQL.getConnection() ) {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, searchName);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int idphim = resultSet.getInt("idPhim");
                String tenphim = resultSet.getString("tenPhim");
                String thoigian = resultSet.getString("thoiGian");
                String loaiphim = resultSet.getString("loaiPhim");
                String daodien = resultSet.getString("daoDien");
                String quocgia = resultSet.getString("quocGia");
                String dienVien = resultSet.getString("dienVien");
                String nhasx = resultSet.getString("nhaSX");
                Date ngaykhoichieu =resultSet.getDate("ngayKhoiChieu");
                String mota = resultSet.getString("moTa");
                String trailer = resultSet.getString("trailer");
                String img = resultSet.getString("img");
                int giaPhim = resultSet.getInt("giaPhim");
                double star = resultSet.getDouble("star");
                films.add(new Film(idphim,tenphim,thoigian,loaiphim,daodien,quocgia,dienVien,nhasx, (java.sql.Date) ngaykhoichieu,mota,trailer,img,giaPhim,star));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return films;
    }
}
