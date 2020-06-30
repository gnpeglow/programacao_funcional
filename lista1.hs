--explo do slide todosIguais
todosIguais ::Int -> Int -> Int -> Bool
todosIguais a b c
    | (a == b ) && (b==c) = True
    | otherwise     = False


-- 1 quatro iguais
quatroIguais :: Int ->Int ->Int ->Int -> Bool
quatroIguais w x y z
    | ((x == y ) && (y==w)) && ((w== z) && (z== x))= True
    | otherwise     = False

--2 quantos Iguais 
quantosIguais :: Int ->Int ->Int ->Int
quantosIguais a b c
    |(a==b)&&(b==c)= 3
    |(a/=b)&&(b==c)= 2
    |(c/=b)&&(b==a)= 2
    | otherwise     = 0

--3 todos diferentes
todosDiferentes :: Int -> Int -> Int -> Bool
todosDiferentes a b c
    | ((a /= b ) && (b/=c)) && (a/=c)= True
    | otherwise     = False

--4 caso n = p e n/=m o programa retornaria True

--5 quantos iguais com funcoes todos diferentes e todosiguais
quantosSaoIguais :: Int ->Int ->Int ->Int
quantosSaoIguais a b c
    |todosDiferentes a b c =0
    |todosIguais a b c =3
    | otherwise     = 2
--6 elevadoDois
elevadoDois :: Int -> Int
elevadoDois a = a*a
--7 elevado 4
elevadoQuatro :: Int -> Int
elevadoQuatro a = elevadoDois(elevadoDois a)
--8 vendas
vendas:: Int->Int
vendas n
vendas 0 = vendas
vendasTotais:: Int -> Int
vendasTotais n = vendas n + (vendasTotais(n-1))
vendasTotais 0 = vendas 0