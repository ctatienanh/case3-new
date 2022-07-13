<%--
  Created by IntelliJ IDEA.
  User: TienAnh
  Date: 7/11/2022
  Time: 1:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <title>Title</title>
    <style>

        body {
            background: antiquewhite;
        }

        .form-control:focus {
            box-shadow: none;
            border-color: #BA68C8
        }

        .profile-button {
            background: rgb(99, 39, 120);
            box-shadow: none;
            border: none
        }

        .profile-button:hover {
            background: #682773
        }

        .profile-button:focus {
            background: #682773;
            box-shadow: none
        }

        .profile-button:active {
            background: #682773;
            box-shadow: none
        }

        .back:hover {
            color: #682773;
            cursor: pointer
        }

        .labels {
            font-size: 11px
        }

        .add-experience:hover {
            background: #BA68C8;
            color: #fff;
            cursor: pointer;
            border: solid 1px #BA68C8
        }


    </style>
</head>
<body>

<form action="/dichvu?action=edit" method="post" enctype="multipart/form-data">
<div class="container rounded bg-white mt-5 mb-5">
    <div class="row">
        <div class="col-md-3 border-right">
            <div  class="d-flex flex-column align-items-center text-center p-3 py-5">
                <label for="file-input">
                <img  class="rounded-circle mt-5" src="imgg/${u.img}" style="height: 205px; width: 159px">
                </label>
                <input id="file-input" type="file" name="img"  hidden>
                <span class="font-weight-bold">${u.userName}</span><span
                    class="text-black-50">${u.mailUser}</span><span> </span>
            </div>

        </div>
        <div class="col-md-5 border-right">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 class="text-right">Profile Settings</h4>
                </div>

                <div class="row mt-2">
                    <input value="${u.id}" name="id" hidden>
                    <div class="col-md-6"><label class="labels">Name</label>
                        <input type="text" class="form-control" name="name" value="${u.userName}">
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-12"><label class="labels">PhoneNumber</label>
                        <input type="text" class="form-control" name="phone" placeholder="enter phone number"
                               value="${u.numberUser}">
                    </div>
                    <div class="col-md-12"><label class="labels">Address</label>
                        <input type="text" class="form-control" name="andres" placeholder="enter address" value="${u.addressUser}">
                    </div>
                    <div class="col-md-12"><label class="labels">Email ID</label>
                        <input type="text" class="form-control" name="mail" placeholder="enter email id" value="${u.mailUser}">
                    </div>
                    <div class="col-md-12"><label class="labels">password</label>
                        <input type="text" class="form-control" name="pass" placeholder="education" value="${u.passwordUser}">
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-6"><label class="labels">Birthday</label>
                        <input type="text" class="form-control" name="birdday" value="${u.birthdayUser}">
                    </div>
                </div>
                <div class="mt-5 text-center">
                    <button class="btn btn-primary profile-button" type="submit">Save Profile</button>
                </div>
            </div>
        </div>
    </div>
</div>

</form>
</body>

</html>
