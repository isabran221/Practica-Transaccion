USE banmodelo
GO

BEGIN TRANSACTION
BEGIN TRY

UPDATE cuenta SET saldo=saldo -2500 WHERE numCuenta=7685;

UPDATE cuenta SET saldo=saldo +2500 WHERE numCuenta=7690;

INSERT INTO movimiento VALUES(7685,7690,2500, '2019-03-28');

PRINT 'Trasaccion Existosa'
COMMIT TRANSACTION
END TRY

BEGIN CATCH
ROLLBACK TRANSACTION
PRINT 'Trasaccion Fallida'
END CATCH