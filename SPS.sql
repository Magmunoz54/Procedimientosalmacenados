
--CONSULTA  

CREATE PROCEDURE SeleccionaridLibros   
AS
SELECT * FROM Libros 
GO

--CONSULTA ID

CREATE PROCEDURE SeleccLibros @id int  
AS
SELECT * FROM Libros WHERE idlibros = @id
GO


 ------INSERTAR LIBRO 

 
 CREATE PROCEDURE InsertaridLibros (@Titulo nvarchar (30),
 @autor nvarchar (30), @descripcion nvarchar (30), 
 @totalPaginas int, @precio money) 
AS
BEGIN 
INSERT INTO Libros(Titulo, Autor, Descripcion, TotalPag, Precio)
 values (@titulo, @autor, @descripcion, @totalPaginas, @precio)
END
GO

DROP PROCEDURE InsertarLibros
GO

-----------ELIMINAR LIBRO

CREATE PROCEDURE  EliminaridLibros 
(@Id int)
AS
DELETE FROM Libros
where @id = idlibros
GO


----------------ACTUALIZA LIBRO

CREATE PROCEDURE ActualizarLibro 
(@titulo nvarchar(30),@autor nvarchar (30), 
@descripcion nvarchar (30),@totalpaginas int, @id int,@precio money) 
AS
UPDATE Libros SET @titulo = Titulo, @autor = Autor, @precio=Precio, @descripcion = Descripcion, @totalpaginas = TotalPaginas 
where idlibros = @id
GO


--CONSULTA   

CREATE PROCEDURE SeleccionarUsuarios  
AS
SELECT * FROM Usuario 
GO;


DROP PROCEDURE InsertarLibros ;  
GO 

--CONSULTA ID

CREATE PROCEDURE SeleccUsuario @usr nvarchar(30), @pwd nvarchar (30) 
AS
SELECT * FROM Usuario WHERE Username = @usr and Password = @pwd
GO

------INSERTAR USUARIO 
 
CREATE PROCEDURE InsertaridUsuario (@nombre nvarchar (30), 
@apellidos nvarchar (30), @correo nvarchar (30), 
@username nvarchar (30),@password nvarchar (30), 
@rol nvarchar (30)) 
AS
BEGIN 
INSERT INTO Usuario(Nombre, Apellidos, Correo, Username, Password, Rol)
values (@nombre, @apellidos, @correo, @username, @password, @rol)
END
GO


 -----------ELIMINAR Usuario

CREATE PROCEDURE  EliminarUsuario
(@Id int)
AS
DELETE FROM Usuario
where @Id = IdUsuario
GO

----------------ACTUALIZA LIBRO

CREATE PROCEDURE ActualizarUsuario         
(@nombre nvarchar(30), @id int,@apellidos nvarchar (30), 
@correo nvarchar (30),@username nvarchar (30), @password nvarchar (30),
@rol nvarchar (30)) 
AS
UPDATE Usuario SET Nombre = @nombre, @apellidos = Apellidos,
 @correo = Correo, @username = Username, @password =Password,
 @rol=Rol
where IdUsuario = @id
GO
