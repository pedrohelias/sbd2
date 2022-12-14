USE aula1exer2;

-- CRIA PAPEIS
	CREATE ROLE EMPREGADO;
    CREATE ROLE GERENTE;

-- PRIVILEGIO DO PAPEL
	-- EMPREGADO
		GRANT ALL PRIVILEGES ON *.* TO EMPREGADO;
        GRANT ALL PRIVILEGES ON *.* TO GERENTE;
        
-- CRIAR USUARIO
	CREATE USER pedroHelias IDENTIFIED BY '@pedrow323';
	GRANT EMPREGADO to pedrohelias;
    
    CREATE USER heliasCarlos IDENTIFIED BY '@Helias11';
    GRANT GERENTE to heliasCarlos;