    SELECT 
        ORDERID as order_id, 
        PAYMENTMETHOD,
        STATUS,
        AMOUNT  
    FROM raw.stripe.payment

