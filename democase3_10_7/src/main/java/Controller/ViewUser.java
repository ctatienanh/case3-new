package Controller;

import Controller.Filter.FilterAdmin;
import Controller.Filter.FilterUser;
import Dao.SearchDao;
import Dao.VeDao;
import Modal.Film;
import Modal.Ve;
import Service.AccountService;
import Service.FilmService;
import Service.VeService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = "/viewUser")
public class ViewUser extends HttpServlet {
    VeDao veDao = new VeDao();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("films", FilmService.films);
        req.setAttribute("idUser",  AccountService.findIdAccountByName(FilterUser.account.getUserName()));
        req.setAttribute("username", FilterUser.account1.getUserName());
        req.setAttribute("img", FilterUser.account1.getImg());
        req.setAttribute("idname", FilterUser.account.getId());
        int idUser = AccountService.findIdAccountByName(FilterUser.account.getUserName());
        ArrayList<Ve> listVeByIdUser = VeService.listVeByIdUser(idUser);
        req.setAttribute("quantity",listVeByIdUser.size());
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/ViewUser.jsp");
        requestDispatcher.forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String ten = req.getParameter("search");
        List<Film> filmList = SearchDao.getSearch(ten);
        req.setAttribute("films", filmList);
        req.setAttribute("idUser",  AccountService.findIdAccountByName(FilterUser.account.getUserName()));
        req.setAttribute("username", FilterUser.account.getUserName());
        int idUser = AccountService.findIdAccountByName(FilterUser.account.getUserName());
        ArrayList<Ve> listVeByIdUser = VeService.listVeByIdUser(idUser);
        req.setAttribute("quantity",listVeByIdUser.size());
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/ViewUser.jsp");
        requestDispatcher.forward(req,resp);
    }
}
