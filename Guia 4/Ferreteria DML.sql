INSERT INTO departamentos (NombreDepartamento) VALUES
('Ahuachapán'),
('Cabañas'),
('Chalatenango'),
('Cuscatlán'),
('La Libertad'),
('La Paz'),
('La Unión'),
('Morazán'),
('Santa Ana'),
('San Miguel'),
('San Salvador'),
('San Vicente'),
('Sonsonate'),
('Usulután');


INSERT INTO municipios (NombreMunicipio, idDepartamento) VALUES
('Ahuachapán Norte', 1),
('Ahuachapán Centro', 1),
('Ahuachapán Sur', 1),
('Cabañas Este', 2),
('Cabañas Oeste', 2),
('Chalatenango Norte', 3),
('Chalatenango Centro', 3),
('Chalatenango Sur', 3),
('Cuscatlán Norte', 4),
('Cuscatlán Sur', 4),
('La Libertad Norte', 5),
('La Libertad Centro', 5),
('La Libertad Oeste', 5),
('La Libertad Este', 5),
('La Libertad Sur', 5),
('La Libertad Costa', 5),
('La Paz Oeste', 6),
('La Paz Centro', 6),
('La Paz Este', 6),
('La Unión Norte', 7),
('La Unión Sur', 7),
('Morazán Norte', 8),
('Morazán Sur', 8),
('Santa Ana Norte', 9),
('Santa Ana Centro', 9),
('Santa Ana Este', 9),
('Santa Ana Oeste', 9),
('San Miguel Norte', 10),
('San Miguel Centro', 10),
('San Miguel Oeste', 10),
('San Salvador Norte', 11),
('San Salvador Oeste', 11),
('San Salvador Este', 11),
('San Salvador Centro', 11),
('San Salvador Sur', 11),
('San Vicente Norte', 12),
('San Vicente Sur', 12),
('Sonsonate Norte', 13),
('Sonsonate Centro', 13),
('Sonsonate Este', 13),
('Sonsonate Oeste', 13),
('Usulután Norte', 14),
('Usulután Este', 14),
('Usulután Oeste', 14);


INSERT INTO distritos (NombreDistrito, idMunicipio) VALUES
('Atiquizaya', 1),
('Sensuntepeque', 4),
('La Palma', 6),
('Suchitoto', 9),
('Quezaltepeque', 11);


INSERT INTO direcciones (CodigoPostal, idDistrito) VALUES
('02311', 1),
('02306', 2),
('02302', 3),
('02301', 4),
('02113', 5);


INSERT INTO cliente (Nombre, Apellido, Genero, Dui, Telefono, CorreoElectronico, idDireccion) VALUES
('María', 'González', 'FEMENINO', '123456789', '7777-7777', 'maria@gmail.com', 1),
('Juan', 'Martínez', 'MASCULINO', '987654321', '8888-8888', 'juan@hotmail.com', 2),
('Ana', 'López', 'Femenino', '456789123', '9999-9999', 'ana@yahoo.com', 3),
('Carlos', 'Pérez', 'Masculino', '654321987', '6666-6666', 'carlos@gmail.com', 4),
('Sofía', 'Rodríguez', 'Femenino', '789123456', '5555-5555', 'sofia@outlook.com', 5);


INSERT INTO proveedor (NombreProveedor, RazonSocial, NIT_RUC, Telefono, CorreoElectronico, SitioWeb, idDireccion) VALUES
('Productos y Suministros S.A.', 'Suministros Rápidos', '1234-567890-123-4', '2233-4455', 'info@productossuministros.com', 'www.productossuministros.com', 1),
('ElectroMega', 'Electrónica y Más S.A.', '9876-543210-987-6', '5544-3322', 'ventas@electromega.com', 'www.electromega.com', 2),
('Muebles Fantásticos', 'Mueblería Fantasía S.R.L.', '4567-890123-456-7', '6677-8899', 'contacto@mueblesfantasticos.com', 'www.mueblesfantasticos.com', 3),
('TechSoluciones', 'Tecnología Soluciones Innovadoras', '6543-210987-654-3', '7788-9900', 'info@techsoluciones.com', 'www.techsoluciones.com', 4),
('SuperParts', 'Super Partes Automotrices S.A.', '7890-123456-789-0', '1122-3344', 'ventas@superparts.com', 'www.superparts.com', 5);


INSERT INTO pedido (FechaPedido, Cantidad, IdProveedor, idEmpleado) VALUES
('2024-02-13', 100, 1, 1),
('2024-02-14', 150, 2, 2),
('2024-02-15', 200, 3, 3),
('2024-02-16', 120, 4, 4),
('2024-02-17', 180, 5, 5);


INSERT INTO factura_Compra (Fecha_Emision, Numero_Factura, Total_Factura, IdProveedor) VALUES
('2024-02-13', 'FC2024-001', 1500.00, 1),
('2024-02-14', 'FC2024-002', 2200.00, 2),
('2024-02-15', 'FC2024-003', 1800.00, 3),
('2024-02-16', 'FC2024-004', 1350.00, 4),
('2024-02-17', 'FC2024-005', 1950.00, 5);


INSERT INTO Detalle_pedidio (FacturaCompra, FacturaVenta, idFactura_Compra, TotalPagarCompra, idDetalle_Venta) VALUES
('FC2024-001', 'FV2024-001', 1, 1500.00, 1),
('FC2024-002', 'FV2024-002', 2, 2200.00, 2),
('FC2024-003', 'FV2024-003', 3, 1800.00, 3),
('FC2024-004', 'FV2024-004', 4, 1350.00, 4),
('FC2024-005', 'FV2024-005', 5, 1950.00, 5);


INSERT INTO Detalle_venta (Cantidad_vendida, Detalle_ventacol, PrecioUnitario, IdVenta, IdProducto) VALUES
(10, 'Color: Rojo', 25.00, 1, 1),
(15, 'Color: Azul', 30.00, 2, 2),
(20, 'Color: Verde', 35.00, 3, 3),
(12, 'Color: Amarillo', 28.00, 4, 4),
(8, 'Color: Negro', 22.00, 5, 5);


INSERT INTO Empleados (nombre, apellido, fecha_nacimiento, DUI, genero, correo_electronico, telefono, numero_sucursal) VALUES
('Laura', 'López', '1992-06-10', '123456789', 'Femenino', 'laura@example.com', '7777-7777', 1),
('Carlos', 'Gómez', '1985-12-20', '987654321', 'Masculino', 'carlos@example.com', '8888-8888', 2),
('Ana', 'Martínez', '1990-03-15', '456789123', 'Femenino', 'ana@example.com', '9999-9999', 1),
('Pedro', 'Díaz', '1988-08-05', '654321987', 'Masculino', 'pedro@example.com', '6666-6666', 3);


INSERT INTO Sucursal (nombre_sucursal, numero_empleado) VALUES
('Sucursal Central', 100),
('Sucursal Norte', 80),
('Sucursal Sur', 120);


INSERT INTO Distribuidor (nombre_distribuidor, telefono, correo_electronico, sitio_web, contacto) VALUES
('Distribuidora C', '2233-4455', 'info@distribuidoraC.com', 'www.distribuidoraC.com', 'Juan Pérez'),
('Distribuidora D', '5544-3322', 'info@distribuidoraD.com', 'www.distribuidoraD.com', 'María González');


INSERT INTO Cargos (nombre_cargo) VALUES
('Gerente'),
('Vendedor'),
('Cajero');


INSERT INTO Compra (fecha_compra, total_compra, metodo_pago, estado_compra) VALUES
('2024-02-01', 150.00, 'Tarjeta de crédito', 'Finalizada'),
('2024-02-05', 200.00, 'Efectivo', 'Pendiente'),
('2024-02-10', 180.00, 'Transferencia bancaria', 'Finalizada');


INSERT INTO Detalle_compra (cantidad_comprada, precio_unitario) VALUES
(10, 15.00),
(15, 10.00),
(20, 8.00);


INSERT INTO Producto (categoria, precio) VALUES
('Fontaneria', 50.00),
('Contruccion', 30.00),
('Remodelacion', 25.00);


INSERT INTO Categoria (nombre_categoria) VALUES
('Fontaneria'),
('Contruccion'),
('Remodelacion');


INSERT INTO Marca (nombre_marca) VALUES
('Marca A'),
('Marca B'),
('Marca C');


INSERT INTO Factura_Venta (fecha_emision, numero_factura, total_factura) VALUES
('2024-02-20', 'FV2024-001', 150.00),
('2024-02-22', 'FV2024-002', 200.00),
('2024-02-25', 'FV2024-003', 180.00);


INSERT INTO Venta (fecha_venta, monto_total) VALUES
('2024-02-20', 150.00),
('2024-02-22', 200.00),
('2024-02-25', 180.00);

INSERT INTO Inventario (estante, pasillo, stock, bodega) VALUES
(1, 2, 100, 'Principal'),
(2, 1, 80, 'Norte'),
(3, 3, 120, 'Sur');


INSERT INTO Metodo_pago (nombre_metodo_pago) VALUES
('Efectivo'),
('Tarjeta de crédito'),
('Transferencia bancaria');