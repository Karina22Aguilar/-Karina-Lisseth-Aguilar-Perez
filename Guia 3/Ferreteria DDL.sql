create database ferreteria;

use ferreteria;

-- -----------------------------------------------------
CREATE TABLE Departamentos
 (
  idDepartamentos INT primary key auto_increment,
  NombreDepartamento VARCHAR(30) NOT NULL
  );
 


-- -----------------------------------------------------
-- Table mydb.Municipios
-- -----------------------------------------------------
CREATE TABLE Municipios
 (
  idMunicipios INT  primary key auto_increment,
  NombreMunicipio VARCHAR(30) NOT NULL,
  idDepartamentos INT 
  );
   alter table Municipios add foreign key(idDepartamentos) references Departamentos (idDepartamentos);
  

-- -----------------------------------------------------
-- Table mydb.Distritos
-- -----------------------------------------------------
CREATE TABLE Distritos (
  idDistritos INT  primary key auto_increment,
  NombreDistrito VARCHAR(45) NOT NULL,
  idMunicipios INT
  );
   alter table Distritos add foreign key(idMunicipios) references Municipios (idMunicipios);

-- -----------------------------------------------------
-- Table mydb.Direcciones
-- -----------------------------------------------------
CREATE TABLE Direcciones (
  idDirecciones INT  primary key auto_increment,
  CodigoPostal VARCHAR(10) NOT NULL,
  idDistritos INT
  );
   alter table Direcciones add foreign key(idDistritos) references Distritos (idDistritos);

-- -----------------------------------------------------
-- Table mydb.Distribuidor
-- -----------------------------------------------------
CREATE TABLE Distribuidor (
  IdDistribuidor INT  primary key auto_increment,
  Nombre_De_Distribuidor VARCHAR(45) NOT NULL,
  Telefono VARCHAR(10) NOT NULL,
  CorreoElectronico VARCHAR(45) NOT NULL,
  SitioWeb VARCHAR(100) NOT NULL,
  Contacto VARCHAR(100) NOT NULL,
  idDirecciones INT
  );
   alter table Distribuidor add foreign key(idDirecciones) references Direcciones (idDirecciones);

-- -----------------------------------------------------
-- Table mydb.Compra
-- -----------------------------------------------------
CREATE TABLE Compra (
  IdCompra INT  primary key auto_increment,
  FechaCompra DATE NOT NULL,
  TotalCompra DECIMAL NOT NULL,
  MetodoPago VARCHAR(45) NOT NULL,
  EstadoCompra VARCHAR(45) NOT NULL,
  IdDistribuidor INT
  );
   alter table Compra add foreign key(idDistribuidor) references Distribuidor (idDistribuidor);
 

-- -----------------------------------------------------
-- Table mydb.Cliente
-- -----------------------------------------------------
CREATE TABLE Cliente (
  IdCliente INT  primary key auto_increment,
  Nombre VARCHAR(100) NOT NULL,
  Apellido VARCHAR(100) NOT NULL,
  Genero ENUM('FEMENINO', 'MASCULINO') NOT NULL,
  Dui VARCHAR(10) NOT NULL,
  Telefono VARCHAR(10) NOT NULL,
  CorreoElectronico VARCHAR(45) NOT NULL,
  idDirecciones INT
  );
 alter table Cliente add foreign key(idDirecciones) references Direcciones (idDirecciones);

-- -----------------------------------------------------
-- Table mydb.Sucursal
-- -----------------------------------------------------
CREATE TABLE Sucursal (
  idSucursal INT  primary key auto_increment,
  NombreSucursal VARCHAR(50) NOT NULL,
  NumeroEmpleado VARCHAR(150) NOT NULL,
  idDirecciones int
  );
alter table Sucursal add foreign key(idDirecciones) references Direcciones (idDirecciones);

-- -----------------------------------------------------
-- Table mydb.Cargos
-- -----------------------------------------------------
CREATE TABLE Cargos (
  idCargos INT NOT NULL,
  NombreCargo VARCHAR(55) NOT NULL
  );


-- -----------------------------------------------------
-- Table mydb.Empleados
-- -----------------------------------------------------
CREATE TABLE Empleados (
  idEmpleados INT primary key auto_increment,
  Nombre VARCHAR(100) NOT NULL,
  Apellido VARCHAR(100) NOT NULL,
  Fecha_Nacimineto DATE NOT NULL,
  Dui VARCHAR(10) NOT NULL,
  Genero ENUM('FEMENINO', 'MASCULINO') NOT NULL,
  Correo_Electronico VARCHAR(45) NOT NULL,
  Telefono VARCHAR(10) NOT NULL,
  idDirecciones INT,
  idSucursal INT,
  NumeroSucursalEmpleado VARCHAR(45) NOT NULL,
  idCargos INT
  );
alter table Empleados add foreign key(idDirecciones) references Direcciones (idDirecciones);
alter table Empleados add foreign key(idSucursal) references Sucursal (idSucursal);
alter table Empleado add foreign key(idCargos) references Cargos (idDCargos);

-- -----------------------------------------------------
-- Table mydb.Metodo_Pago
-- -----------------------------------------------------
CREATE TABLE Metodo_Pago (
  idMetodo_Pago INT  primary key auto_increment,
  NombreMetodoPago VARCHAR(35) NOT NULL
  );

-- -----------------------------------------------------
-- Table mydb.Venta
-- -----------------------------------------------------
CREATE TABLE Venta (
  IdVenta INT  primary key auto_increment,
  FechaVenta DATE NOT NULL,
  MontoTotal DECIMAL NOT NULL,
  IdCliente INT,
  idEmpleados INT,
  idMetodo_Pago INT
  );
  alter table Venta add foreign key(idCliente) references Cliente (idCliente);
  alter table Venta add foreign key(idDEmpleados) references Empleados (idEmpleados);
  alter table Venta add foreign key(idMetodo_Pago) references Metodo_Pago (idMetodo_Pago);


-- -----------------------------------------------------
-- Table mydb.Inventario
-- -----------------------------------------------------
CREATE TABLE Inventario (
  idInventario INT  primary key auto_increment,
  Estante VARCHAR(30) NOT NULL,
  Pasillo VARCHAR(30) NOT NULL,
  IdCompra INT,
  IdVenta INT,
  Stok VARCHAR(25) NOT NULL,
  Bodega VARCHAR(25) NOT NULL
  );
   alter table Inventario add foreign key(idCompra) references Compra (idCompra);
   alter table Inventario add foreign key(idVenta) references Venta(idVenta);
   


-- -----------------------------------------------------
-- Table mydb.Categoria
-- -----------------------------------------------------
CREATE TABLE Categoria (
  idCategoria INT  primary key auto_increment,
  Categoria VARCHAR(65) NOT NULL
  );
  

-- -----------------------------------------------------
-- Table mydb.Marca
-- -----------------------------------------------------
CREATE TABLE Marca (
  idMarca INT  primary key auto_increment,
  Marca VARCHAR(75) NOT NULL
  );


-- -----------------------------------------------------
-- Table mydb.Producto
-- -----------------------------------------------------
CREATE TABLE Producto (
  IdProducto INT  primary key auto_increment,
  Categoria VARCHAR(45) NOT NULL,
  Precio DECIMAL NOT NULL,
  idInventario INT,
  idCategoria INT,
  idMarca INT
 );
 alter table Producto add foreign key(idInventario) references Inventario (idInventario);
 alter table Producto add foreign key(idCategoria) references Categoria(idCategoria);
 alter table Producto add foreign key(idMarca) references Marca(idMarca);



-- -----------------------------------------------------
-- Table mydb.Proveedor
-- -----------------------------------------------------
CREATE TABLE Proveedor (
  IdProveedor int  primary key auto_increment,
  NombreProveedor VARCHAR(45) NOT NULL,
  RazonSoial VARCHAR(45) NOT NULL,
  NIT VARCHAR(50) NOT NULL,
  Telefono VARCHAR(10) NOT NULL,
  CorreoElectronico VARCHAR(45) NOT NULL,
  SitioWeb VARCHAR(45) NOT NULL,
  idDirecciones INT
 );
  alter table Proveedor add foreign key(idDirecciones) references Direcciones(idDirecciones);

-- -----------------------------------------------------
-- Table mydb.Detalle_compra
-- -----------------------------------------------------
CREATE TABLE Detalle_compra (
  idDetalle_compra INT  primary key auto_increment,
  Cantidad_comprada INT NOT NULL,
  Precio_unitario DECIMAL NOT NULL,
  IdCompra INT,
  IdProducto INT 
  );
  alter table Detalle_compra add foreign key(idCompra) references Compra (idCompra);
  alter table Detalle_compra add foreign key(idProducto) references Producto (idProducto);

-- -----------------------------------------------------
-- Table mydb.Factura_compra
-- -----------------------------------------------------
CREATE TABLE Factura_compra (
  idFactura_compra INT primary key auto_increment,
  Fecha_Emision DATE NOT NULL,
  Numero_Factura VARCHAR(45) NOT NULL,
  Total_Factura DECIMAL NOT NULL,
  IdProveedor INT
 );
  alter table Factura_compra add foreign key(idProveedor) references Proveedor (idProveedor);


-- -----------------------------------------------------
-- Table mydb.Detalle_venta
-- -----------------------------------------------------
CREATE TABLE Detalle_venta (
  idDetalle_venta INT primary key auto_increment,
  Cantidad_vendida INT NOT NULL,
  Detalle_ventacol VARCHAR(45) NOT NULL,
  PrecioUnitario DECIMAL NOT NULL,
  IdVenta INT,
  IdProducto INT
 );
  alter table Detalle_venta add foreign key(idVenta) references Venta (idVenta);
  alter table Detalle_venta add foreign key(idProducto) references Producto (idProducto);


-- -----------------------------------------------------
-- Table mydb.Factura_venta
-- -----------------------------------------------------
CREATE TABLE Factura_venta (
  idFactura_venta INT primary key auto_increment,
  Fecha_Emision DATE NOT NULL,
  Numero_Factura INT NOT NULL,
  Total_Factura DECIMAL NOT NULL,
  IdCliente INT
  );
   alter table Facutura_venta add foreign key(idCliente) references Cliente (idCliente);


-- -----------------------------------------------------
-- Table mydb.Pedido
-- -----------------------------------------------------
CREATE TABLE Pedido (
  idPedido INT primary key auto_increment,
  FechaPedido DATE NOT NULL,
  Cantidad INT NOT NULL,
  IdProveedor INT,
  idEmpleados INT
  );
   alter table Pedido add foreign key(idProveedor) references Proveedor (idProveedor);
   alter table Pedido add foreign key(idEmpleados) references Empleados (idEmpleados);


-- -----------------------------------------------------
-- Table mydb.Detalle_Pedido
-- -----------------------------------------------------
CREATE TABLE Detalle_Pedido (
  idDetalle_Pedido INT primary key auto_increment,
  FacturaCompra DECIMAL NOT NULL,
  FacturaVenta DECIMAL NOT NULL,
  idFactura_compra INT,
  TotalPagarCompra DECIMAL NOT NULL,
  idDetalle_venta INT
 );
 alter table Detalle_Pedido add foreign key(idFactura_compra) references Factura_compra (idFactura_compra);
 alter table Detalle_Pedido add foreign key(idDetalle_venta) references Detalle_venta (idDetalle_venta);
 