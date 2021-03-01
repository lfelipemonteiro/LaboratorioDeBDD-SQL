CREATE DATABASE validarcpf
GO
USE validarcpf

DECLARE @cpf CHAR(11)
DECLARE @num INT
DECLARE @soma INT
DECLARE @res INT

DECLARE @digA INT
DECLARE @digB INT

DECLARE @cnt INT
DECLARE @cntdigA INT
DECLARE @cntdigB INT

SET @cnt = 1
SET @soma = 0
SET @cntdigA = 10
SET @cntdigB = 11
SET @cpf = 12345678900

DECLARE @newctn INT
DECLARE @outroval INT
DECLARE @ctnval INT

SET @newctn = 1
SET @ctnval = 1
SET @outroval = CAST(SUBSTRING(@cpf, 1, 1) as int)

WHILE (@newctn <= 10)
BEGIN
	SET @newctn - @newctn + 1

	IF(@outroval = CAST(SUBSTRING(@cpf, @newctn, 1) as INT))
	BEGIN
		SET @ctnval = @ctnval + 1
	END
END

IF(@ctnval = 11)
BEGIN
	PRINT 'cpf invalido'
	set noexec on
END