<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: phamd
  Date: 7/7/2022
  Time: 11:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
    .payment-info {
      background: cadetblue;
      padding: 10px;
      border-radius: 6px;
      color: #fff;
      font-weight: bold;
    }

    .product-details {
      padding: 10px;
    }

    body {
      background: #eee;
    }

    .cart {
      background: beige;
    }

    .p-about {
      font-size: 12px;
    }

    .table-shadow {
      -webkit-box-shadow: 5px 5px 15px -2px rgba(0,0,0,0.42);
      box-shadow: 5px 5px 15px -2px rgba(0,0,0,0.42);
    }

    .type {
      font-weight: 400;
      font-size: 10px;
    }

    label.radio {
      cursor: pointer;
    }

    label.radio input {
      position: absolute;
      top: 0;
      left: 0;
      visibility: hidden;
      pointer-events: none;
    }

    label.radio span {
      padding: 1px 12px;
      border: 2px solid #ada9a9;
      display: inline-block;
      color: #8f37aa;
      border-radius: 3px;
      text-transform: uppercase;
      font-size: 11px;
      font-weight: 300;
    }

    label.radio input:checked + span {
      border-color: #fff;
      background-color: blue;
      color: #fff;
    }

    .credit-inputs {
      background: rgb(102,102,221);
      color: #fff !important;
      border-color: rgb(102,102,221);
    }

    .credit-inputs::placeholder {
      color: #fff;
      font-size: 13px;
    }

    .credit-card-label {
      font-size: 9px;
      font-weight: 300;
    }

    .form-control.credit-inputs:focus {
      background: rgb(102,102,221);
      border: rgb(102,102,221);
    }

    .line {
      border-bottom: 1px solid rgb(102,102,221);
    }

    .information span {
      color: black;
      font-size: 12px;
      font-weight: 500;
    }

    .information {
      margin-bottom: 5px;
    }

    .items {
      -webkit-box-shadow: 5px 5px 4px -1px rgba(0,0,0,0.25);
      box-shadow: 5px 5px 4px -1px rgba(0, 0, 0, 0.08);
      background: #fff;
    }

    .spec {
      font-size: 11px;
    }
  </style>
</head>
<body style="background: peachpuff">
<div class="container mt-5 p-3 rounded cart">
  <div class="row no-gutters">
    <div class="col-md-8">
      <div class="product-details mr-2">
        <div class="d-flex flex-row align-items-center" style="justify-content: space-between">
          <div>
            <i class="fa fa-long-arrow-left"></i>
            <a href="/viewUser"> <span class="ml-2">Continue Shopping</span></a>
          </div>
          <div>
            <a href="/dichvu?action=lichsumuave&idUser=${idUser}"> <span class="ml-2">History buy</span></a>
            <i class="fa fa-long-arrow-right"></i>
          </div>
        </div>
        <hr>
        <h6 class="mb-0">Shopping cart</h6>
        <div class="d-flex justify-content-between"><span>You have ${quantity} tickets in your cart</span>
          <div class="d-flex flex-row align-items-center"><span class="text-black-50">Sort by:</span>
            <div class="price ml-2"><span class="mr-1">price</span><i class="fa fa-angle-down"></i></div>
          </div>
        </div>
        <c:forEach items="${listVe}" var="i">
          <div class="d-flex justify-content-between align-items-center mt-3 p-2 items rounded">
            <div class="d-flex flex-row">
              <img class="rounded" src="${i.film.img}" width="40">
              <div class="ml-2"><span class="font-weight-bold d-block" style="color: chocolate">${i.film.tenPhim}</span><span class="spec">${i.film.loaiPhim},${i.film.quocGia}</span></div>
            </div>
            <div class="d-flex flex-row align-items-center">
              <span class="d-block">1</span>
              <span class="d-block ml-5 font-weight-bold priceTicket"style="width: 50px;color:coral;">${i.film.giaPhim}</span>đ
              <a href="/dichvu?action=xoave&idUser=${idUser}&idVe=${i.idVe}"><i class="fa fa-trash-o ml-3 text-black-50"></i></a>
            </div>
          </div>
        </c:forEach>
      </div>
    </div>
    <div class="col-md-4">
        <div class="payment-info">
          <div class="d-flex justify-content-between align-items-center"><span>Card details</span><img class="rounded" src="https://i.imgur.com/WU501C8.jpg" width="30"></div><span class="type d-block mt-3 mb-1">Card type</span><label class="radio"> <input type="radio" name="card" value="payment" checked> <span><img width="30" src="https://img.icons8.com/color/48/000000/mastercard.png"/></span> </label>

          <label class="radio"> <input type="radio" name="card" value="payment"> <span><img width="30" src="https://img.icons8.com/officel/48/000000/visa.png"/></span> </label>

          <label class="radio"> <input type="radio" name="card" value="payment"> <span><img width="30" src="https://img.icons8.com/ultraviolet/48/000000/amex.png"/></span> </label>

          <form action="/dichvu?action=thanhtoan&idUser=${idUser}" method="post">
          <label class="radio"> <input type="radio" name="card" value="payment"> <span><img width="30" src="https://img.icons8.com/officel/48/000000/paypal.png"/></span> </label>
          <div><label class="credit-card-label">Name on card</label><input type="text" class="form-control credit-inputs" placeholder="Name"></div>
          <div><label class="credit-card-label">Card number</label><input type="text" class="form-control credit-inputs" placeholder="0000 0000 0000 0000"></div>
          <div class="row">
            <div class="col-md-6"><label class="credit-card-label">Date</label>
              <input type="text" class="form-control credit-inputs" placeholder="12/24"></div>
            <div class="col-md-6"><label class="credit-card-label">CVV</label>
              <input type="text" class="form-control credit-inputs" placeholder="342"></div>
          </div>
          <hr class="line">
          <div class="d-flex justify-content-between information">
            <span>Subtotal</span>
            <div>
            <span id="totalMoney">
          </span><i style="margin-left: 5px;font-size: 10px;color: black;">đ</i>
            </div>
          </div>
          <div class="d-flex justify-content-between information"><span>Bonus Money</span>
            <div>
              <span id="bonusMoney"></span><i style="margin-left: 5px;font-size: 10px;color: black;">đ</i>
            </div></div>
          <div class="d-flex justify-content-between information"><span>Total(Incl. taxes)</span><div>
            <span style="color: red" id="totalPayment"></span><i style="margin-left: 5px;font-size: 10px;color: black;">đ</i>
          </div></div>
          <p style="font-size: 12px;color: darkgreen;font-weight: 400"><i>Chú ý: hóa đơn trên 500000 thì sẽ đc 5% tổng hóa đơn</i></p>
          <button  class="btn btn-primary btn-block d-flex justify-content-between mt-3" type="submit">
            <span id="totalPaymentBtn"></span>
            <span>Thanh toán<i class="fa fa-long-arrow-right ml-1"></i></span>
          </button>
            </form>
        </div>
    </div>
  </div>
</div>
</body>
</html>
<%--<script src="notification.js"></script>--%>
<script>
  let priceTicket = document.getElementsByClassName("priceTicket");
  let totalMoney=0;
  for(let i=0;i<priceTicket.length;i++){
    totalMoney += Number(priceTicket[i].innerHTML);
  }
  let moneyTotal = document.getElementById("totalMoney");
  moneyTotal.innerHTML=totalMoney;
  let bonusMoney = document.getElementById("bonusMoney");
  let money = Number(moneyTotal.innerHTML);
  if(Number(moneyTotal.innerHTML)>500000){
    bonusMoney.innerHTML=(money-0.95* money);
  }
  else {
    bonusMoney.innerHTML =0;
  }
  let totalPayment = document.getElementById("totalPayment");
  totalPayment.innerHTML=money-Number(bonusMoney.innerHTML);
  document.getElementById("totalPaymentBtn").innerHTML=Number(totalPayment.innerHTML) +"đ";
</script>
