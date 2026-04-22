CREATE INDEX idx_txn_date ON transactions(txn_date);
CREATE INDEX idx_account_id ON transactions(account_id);

BEGIN
    DBMS_STATS.GATHER_TABLE_STATS(USER, 'TRANSACTIONS');
END;
/  
