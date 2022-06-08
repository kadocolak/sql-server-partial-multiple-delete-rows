-- My web site url: https://kadircolak.com
DECLARE @count as int
DECLARE @status as bit
set @status=1
WHILE(@status=1)
BEGIN
  SET @count = (SELECT COUNT(*) from data with(nolock) WHERE ID>=10000000)
  IF(@count=0)
  BEGIN
    print 'delete operation finished'
	set @status=0
  END
  ELSE
  BEGIN
    DELETE TOP (100000) FROM data WHERE ID>=10000000
    WAITFOR DELAY '00:00:10';
  END
END
