-- Generate sample transaction data

BEGIN
    FOR i IN 1..100000 LOOP
        INSERT INTO transactions VALUES (
            i,
            MOD(i, 10000),
            SYSDATE - MOD(i, 365),
            ROUND(DBMS_RANDOM.VALUE(10, 10000),2),
            CASE WHEN MOD(i,2)=0 THEN 'CREDIT' ELSE 'DEBIT' END
        );

        IF MOD(i,10000)=0 THEN
            COMMIT;
        END IF;
    END LOOP;
    COMMIT;
END;
/