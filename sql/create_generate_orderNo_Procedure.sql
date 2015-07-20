    CREATE DEFINER=PROCEDURE `generate_orderNo`(in orderNamePre char(2), in num int, out newOrderNo varchar(25))    
    BEGIN    
      DECLARE currentDate varCHAR (15) ;-- 当前日期,有可能包含时分秒     
      DECLARE maxNo INT DEFAULT 0 ; -- 离现在最近的满足条件的订单编号的流水号最后5位，如：SH2013011000002的maxNo=2     
    --  DECLARE l_orderNo varCHAR (25) ;-- 新生成的订单编号     
    --  DECLARE oldDate DATE ;-- 离现在最近的满足条件的订单编号的日期     
      DECLARE oldOrderNo VARCHAR (25) DEFAULT '' ;-- 离现在最近的满足条件的订单编号     
          
      if num = 8 then -- 根据年月日生成订单编号     
        SELECT DATE_FORMAT(NOW(), '%Y%m%d') INTO currentDate ;-- 订单编号形式:前缀+年月日+流水号，如：SH2013011000002     
      elseif num = 14 then -- 根据年月日时分秒生成订单编号     
        SELECT DATE_FORMAT(NOW(), '%Y%m%d%H%i%s') INTO currentDate ; -- 订单编号形式：前缀+年月日时分秒+流水号，如：SH2013011010050700001,个人不推荐使用这种方法生成流水号     
      else -- 根据年月日时分生成订单编号     
        SELECT DATE_FORMAT(NOW(), '%Y%m%d%H%i') INTO currentDate ;-- 订单形式：前缀+年月日时分+流水号,如：SH20130110100900005     
      end if ;    
          
      SELECT IFNULL(orderNo, '') INTO oldOrderNo     
      FROM test_orders     
      WHERE SUBSTRING(orderNo, 3, num) = currentDate     
        AND SUBSTRING(orderNo, 1, 2) = orderNamePre     
        and length(orderNo) = 7 + num    
      ORDER BY id DESC LIMIT 1 ; -- 有多条时只显示离现在最近的一条     
          
      IF oldOrderNo != '' THEN     
        SET maxNo = CONVERT(SUBSTRING(oldOrderNo, -5), DECIMAL) ;-- SUBSTRING(oldOrderNo, -5)：订单编号如果不为‘‘截取订单的最后5位     
      END IF ;    
      SELECT     
        CONCAT(orderNamePre, currentDate,  LPAD((maxNo + 1), 5, '0')) INTO newOrderNo ; -- LPAD((maxNo + 1), 5, '0')：如果不足5位，将用0填充左边     
          
      INSERT INTO test_orders (orderNo, orderName) VALUES (newOrderNo, 'testNo') ; -- 向订单表中插入数据     
    --    set newOrderNo = l_orderNo;     
      SELECT     
        newOrderNo ;    
    END 
