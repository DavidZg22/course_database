    CREATE DATABASE dsrp_prestamos_financieros;
    GO

    USE dsrp_prestamos_financieros;
    

    CREATE TABLE personas_naturales (
        id INT PRIMARY KEY IDENTITY(1,1),
        numero_documento VARCHAR(15) UNIQUE NOT NULL,
        nombres VARCHAR(50) NOT NULL,
        apellido_paterno VARCHAR(50) NOT NULL,
        apellido_materno VARCHAR(50) NOT NULL,
        direccion NVARCHAR(1000) NOT NULL,
        celular VARCHAR(15) NOT NULL,
        email VARCHAR(50) NOT NULL
    );
    GO

    -- Personas juridicas
    CREATE TABLE personas_juridicas(
        id INT PRIMARY KEY IDENTITY(1,1),
        numero_documento VARCHAR(15) UNIQUE NOT NULL,
        razpn_social VARCHAR(100) NOT NULL,
        domicilio_fiscal NVARCHAR(1000) NOT NULL,
        telefono VARCHAR(15) NOT NULL,
        email VARCHAR(50) NOT NULL
    );
    GO

    -- Clientes
    CREATE TABLE clientes(
        id INT PRIMARY KEY IDENTITY(1,1),
        persona_id INT NOT NULL,
        tipo_cliente VARCHAR(100) NOT NULL,
        fecha_registro DATETIME DEFAULT getdate() NOT NULL,
    );
    GO

    -- tipos de prestamos
    CREATE TABLE tipos_prestamos(
        id INT PRIMARY KEY IDENTITY(1,1),
        nombre VARCHAR(100) NOT NULL,
        estado BIT NOT NULL,
        descripcion VARCHAR(1000),
    );
    GO

    --EXEC sp_help clientes;
    -- 
    --SELECT GETDATE();