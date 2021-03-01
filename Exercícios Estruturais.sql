CREATE DATABASE exerciciosEst
GO
USE exerciciosEst

/* Fazer um algoritmo que leia 3 valores e retorne se os valores formam um triângulo e se ele é isóceles, escaleno ou equilátero. 
Condições para formar um triângulo Nenhum valor pode ser = 0, Um lado não pode ser maior que a soma dos outros 2.
*/
DECLARE @a INT
DECLARE @b INT
DECLARE @c INT

SET @a = 2
SET @b = 3
SET @c = 2

IF(@a = 0 OR @b = 0 OR @c = 0)
BEGIN
	PRINT 'Triangulo invalido'
END
ELSE
BEGIN
	IF ( (@a > @b + @c) OR (@b > @a + @c) OR (@c = @b + @a) )
	BEGIN
		PRINT 'Triangulo invalido'
	END
	ELSE
	BEGIN
		IF (@a != @b AND @a != @c AND @c != @b)
		BEGIN
			PRINT 'Triangulo invalido'
		END
		ELSE
		BEGIN
			IF(@a = @b AND @a = @c)
			BEGIN
				PRINT 'Triangulo invalido'
			END
			ELSE
				PRINT 'Triangulo valido'
			END
		END
END

-- Fazer um algoritmo que leia 1 número e mostre se são múltiplos de 2,3,5 ou nenhum deles
DECLARE @num INT
SET @num = 10

IF (@num % 2 = 0)
BEGIN
	PRINT 'O numero é multiplo de 2'
END
	IF (@num % 3 = 0)
	BEGIN
		PRINT 'O numero é multiplo de 3'
	END
		IF (@num % 5 = 0)
		BEGIN
			PRINT 'O numero é multiplo de 5'
		END
		ELSE
		BEGIN
			PRINT 'Não é multiplo de nenhum dos tres numeros'
		END
-- Fazer um algoritmo que leia 3 número e mostre o maior e o menor
DECLARE @a INT
DECLARE @b INT
DECLARE @c INT
DECLARE @maior INT
DECLARE @menor INT

SET @a = 10
SET @b = 5
SET @c = 3

IF (@a > @b)
BEGIN
	SET @maior = @c
	SET @menor = @a

	IF(@maior < @c)
	BEGIN
		SET @maior = @c
	END

	IF(@menor > @c)
	BEGIN
		SET @menor = @c
	END

	PRINT @maior
	PRINT @menor
END
ELSE
BEGIN
	SET	@menor = @c
	SET @maior = @a

	IF (@maior < @c)
	BEGIN
		SET @maior = @c
	END

	IF(@menor > @c)
	BEGIN
		SET @menor = @c
	END

	PRINT @maior
	PRINT @menor

END

-- Fazer um algoritmo que calcule os 15 primeiros termos da série 1,1,2,3,5,8,13,21,... E calcule a soma dos 15 termos

DECLARE @a INT
DECLARE @b INT
DECLARE @cnt INT
DECLARE @aux INT
DECLARE @soma INT

SET @a = 0
SET @b = 1
SET @cnt = 1
SET @soma = 0

WHILE (@cnt <= 15)
BEGIN

	SET @soma = @soma + @b
	SET @aux = @a + @b
	SET @a = @b
	SET @b = @aux
	SET @cnt = @cnt + 1

END

	PRINT 'A soma dos valores é: ' + CAST(@soma as varchar(4))

-- Fazer um algoritmo que separa uma frase, colocando todas as letras em maiúsculo e em minúsculo

DECLARE @frase VARCHAR(15)
DECLARE @novafrase VARCHAR(15)
DECLARE @letra char(1)
DECLARE @cntd INT
DECLARE @size INT

SET @frase = 'pizza deliciosa'
SET @cntd = 0
SET @size = LEN(@frase)

WHILE (@cntd <= @size)
BEGIN
	
	SET @cntd = @cntd + 1

	IF (@cntd % 2 = 0)
	BEGIN
		SET @letra = SUBSTRING(@frase, @cntd, 1)
	END
	ELSE
	BEGIN
		SET @letra = UPPER(SUBSTRING(@frase,@cntd , 1))
	END

	SET @novafrase = concat(@novafrase, @letra)
END

	PRINT @novafrase


-- Fazer um algoritmo que inverta uma palavra

DECLARE @frase2 VARCHAR(15)
DECLARE @newfrase VARCHAR(15)
DECLARE @letra2 char(1)
DECLARE @ctn2 INT
DECLARE @size2 INT

SET @frase2 = 'pizza deliciosa'
SET @size2 = LEN(@frase2)
SET @ctn2 = @size2

WHILE (@ctn2 >= 0)
BEGIN

	SET @letra2 = SUBSTRING(@frase2, @ctn2, 1)
	SET @newfrase = concat(@newfrase, @letra2)
	SET @ctn2 = @ctn2 - 1
END

	PRINT @frase2
	PRINT @newfrase

-- Verificar palindromo
DECLARE @frase3 VARCHAR(15)
DECLARE @newfrase2 VARCHAR(15)
DECLARE @letra3 char(1)
DECLARE @ctn3 INT
DECLARE @size3 INT

SET @frase3 = 'arara'
SET @size3 = LEN(@frase3)
SET @ctn3 = @size3


WHILE (@ctn3 >= 0)
BEGIN

	SET @letra3 = SUBSTRING(@frase3, @ctn3, 1)
	SET @newfrase2 = concat(@newfrase2, @letra3)
	SET @ctn3 =  @ctn3 - 1

END
	
	SET @newfrase2 = REPLACE(@newfrase2, ' ', '')
	SET @frase3 = REPLACE(@frase3,' ','')

	PRINT @newfrase2
	PRINT @frase3

	IF (@frase3 = @newfrase2)
	BEGIN
		PRINT 'É UM PALINDROMO'
	END
	ELSE
	BEGIN
		PRINT 'NAO É UM PALINDROMO'
	END