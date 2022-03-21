
<%@ page contentType="text/html;charset=UTF-8" language="java"
    pageEncoding="UTF-8" isELIgnored="false" %>

<div class="buyPageDiv">
    <form action="forecreateOrder" method="post">

        <div class="buyFllow">
            <img class="pull-left" src="img/site/simpleLogo.png" style="width: 190px">
            <img class="pull-right" src="img/site/buyflow.png">
            <div style="clear: both"></div>
        </div>

        <div class="address">
            <div class="addressTip">请输入收货地址：</div>

            <div>
                <table class="addressTable">
                    <tr>
                        <td class="firstColumn">
                            详细地址 <span class="redStar">*</span>
                        </td>
                        <td>
                            <textarea name="address" placeholder="建议您如实填写收货地址"></textarea>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            邮政编码
                        </td>
                        <td>
                            <input name="post" placeholder="如不清楚，请填 000000" type="text">
                        </td>
                    </tr>

                    <tr>
                        <td>
                            收货人姓名<span class="redStar">*</span>
                        </td>
                        <td>
                            <input name="reciver" placeholder="XXX" type="text">
                        </td>
                    </tr>

                    <tr>
                        <td>
                            收货人手机号<span class="redStar">*</span>
                        </td>
                        <td>
                            <input name="mobile" placeholder="请输入 11 位手机号码" type="text">
                        </td>
                    </tr>
                </table>
            </div>
        </div>

        <div class="productList">
            <div class="productListTip">确认订单信息</div>

            <table class="productListTable">
                <thead>
                <tr>
                    <th colspan="2" class="productListTableFirstColumn">
                        <img class="tmallbuy" src="img/site/tmallbuy.png">
                        <a class="marketLink" href="#nowhere">店铺：天猫店铺</a>
                        <a class="wangwanglink" href="#nowhere"> <span class="wangwangGif"></span> </a>
                    </th>
                    <th>单价</th>
                    <th>数量</th>
                    <th>小计</th>
                    <th>配送方式</th>
                </tr>
                <tr class="rowborder">
                    <td  colspan="2" ></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                </thead>
                <tbody class="productListTableTbody">
                    <c:forEach items="${ois}" var="oi" varStatus="s">
                        <tr class="orderItemTR">
                            <td class="orderItemFirstTD"><img class="orderItemImg" src="img/productSingle_middle/${oi.product.firstProductImage.id}.jpg"></td>
                            <td class="orderItemProductInfo">
                                <a href="foreproduct?pid=${oi.product.id}" class="orderItemProductLink">${oi.product.name}</a>
                                <img src="img/site/creditcard.png" title="支持信用卡支付">
                                <img src="img/site/7day.png" title="消费者保障服务,承诺7天退货">
                                <img src="img/site/promise.png" title="消费者保障服务,承诺如实描述">
                            </td>

                            <td>
                                <span class="orderItemProductPrice">¥<fmt:formatNumber type="number" value="${oi.product.promotePrice}" minFractionDigits="2"/></span>
                            </td>

                            <td>
                                <span class="orderItemProductNumber">${oi.number} 个</span>
                            </td>

                            <td>
                                <span class="confirmPayOrderItemSumPrice">¥<fmt:formatNumber type="number" value="${oi.product.promotePrice * oi.number}" minFractionDigits="2"/></span>
                            </td>

                            <c:if test="${s.count==1}">
                                <td rowspan="5"  class="orderItemLastTD">
                                    <label class="orderItemDeliveryLabel">
                                        <input type="radio" value="" checked="checked">
                                        普通配送
                                    </label>

                                    <select class="orderItemDeliverySelect" class="form-control">
                                        <option>快递 免邮费</option>
                                    </select>
                                </td>
                            </c:if>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>


        </div>

        <div class="orderItemTotalSumDiv">
            <div class="pull-right">
                <span>实付款：</span>
                <span class="orderItemTotalSumSpan">¥<fmt:formatNumber type="number" value="${total}" minFractionDigits="2"/></span>
            </div>
        </div>

        <div class="submitOrderDiv">
            <button type="submit" class="submitOrderButton">提交订单</button>
        </div>
    </form>
</div>
