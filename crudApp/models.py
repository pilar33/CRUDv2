# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class Cajas(models.Model):
    iidcaja = models.BigAutoField(db_column='iIdCaja', primary_key=True)  # Field name made lowercase.
    inrocaja = models.IntegerField(db_column='iNroCaja')  # Field name made lowercase.
    dfechaapertura = models.DateTimeField(db_column='dFechaApertura')  # Field name made lowercase.
    dfechacierre = models.DateTimeField(db_column='dFechaCierre', blank=True, null=True)  # Field name made lowercase.
    fmontoapertura = models.DecimalField(db_column='fMontoApertura', max_digits=8, decimal_places=2)  # Field name made lowercase.
    fmontocierre = models.DecimalField(db_column='fMontoCierre', max_digits=8, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)
    sobservaciones = models.CharField(db_column='sObservaciones', max_length=2000)  # Field name made lowercase.
    iidempleado = models.ForeignKey('Empleados', models.DO_NOTHING, db_column='iIdEmpleado')  # Field name made lowercase.
    iidsucursal = models.ForeignKey('Sucursales', models.DO_NOTHING, db_column='iIdSucursal')  # Field name made lowercase.
    iidtipomovimiento = models.ForeignKey('TipoMovimiento', models.DO_NOTHING, db_column='iIdTipoMovimiento')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'cajas'


class Clientes(models.Model):
    iidcliente = models.BigAutoField(db_column='iIdCliente', primary_key=True)  # Field name made lowercase.
    snombrecliente = models.CharField(db_column='sNombreCliente', max_length=191)  # Field name made lowercase.
    sapellidocliente = models.CharField(db_column='sApellidoCliente', max_length=191)  # Field name made lowercase.
    idni = models.IntegerField(db_column='iDNI')  # Field name made lowercase.
    iidestado = models.IntegerField(db_column='iIdEstado')  # Field name made lowercase.
    semail = models.CharField(db_column='sEmail', max_length=50)  # Field name made lowercase.
    stelefono = models.CharField(db_column='sTelefono', max_length=15)  # Field name made lowercase.
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)
    iidtipocliente = models.ForeignKey('TipoCliente', models.DO_NOTHING, db_column='iIdTipoCliente', blank=True, null=True)  # Field name made lowercase.
    user = models.OneToOneField(AuthUser, models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'clientes'


class ComprobanteVentas(models.Model):
    iidcomprobanteventa = models.BigAutoField(db_column='iIdComprobanteVenta', primary_key=True)  # Field name made lowercase.
    dfechaemision = models.DateTimeField(db_column='dFechaEmision')  # Field name made lowercase.
    fimporte = models.DecimalField(db_column='fImporte', max_digits=8, decimal_places=2)  # Field name made lowercase.
    iidestado = models.IntegerField(db_column='iIdEstado')  # Field name made lowercase.
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)
    iidcomprobante = models.ForeignKey('Comprobantes', models.DO_NOTHING, db_column='iIdComprobante')  # Field name made lowercase.
    iidventa = models.ForeignKey('Ventas', models.DO_NOTHING, db_column='iIdVenta')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'comprobante_ventas'


class Comprobantes(models.Model):
    iidcomprobante = models.BigAutoField(db_column='iIdComprobante', primary_key=True)  # Field name made lowercase.
    snombrecomprobante = models.CharField(db_column='sNombreComprobante', max_length=191)  # Field name made lowercase.
    sdescripcion = models.CharField(db_column='sDescripcion', max_length=191)  # Field name made lowercase.
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)
    iidtipocomprobante = models.ForeignKey('TipoComprobante', models.DO_NOTHING, db_column='iIdTipoComprobante')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'comprobantes'


class Detallepedidos(models.Model):
    iiddetallepedido = models.BigAutoField(db_column='iIdDetallePedido', primary_key=True)  # Field name made lowercase.
    icantidad = models.IntegerField(db_column='iCantidad')  # Field name made lowercase.
    precio_unitario = models.DecimalField(max_digits=10, decimal_places=2)
    iidpedido = models.ForeignKey('Pedidos', models.DO_NOTHING, db_column='iIdPedido', blank=True, null=True)  # Field name made lowercase.
    iidproducto = models.ForeignKey('Productos', models.DO_NOTHING, db_column='iIdProducto')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'detallepedidos'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    id = models.BigAutoField(primary_key=True)
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Empleados(models.Model):
    iidempleado = models.BigAutoField(db_column='iIdEmpleado', primary_key=True)  # Field name made lowercase.
    snombre = models.CharField(db_column='sNombre', max_length=191)  # Field name made lowercase.
    sapellido = models.CharField(db_column='sApellido', max_length=191)  # Field name made lowercase.
    idni = models.IntegerField(db_column='iDNI')  # Field name made lowercase.
    iidestado = models.IntegerField(db_column='iIdEstado')  # Field name made lowercase.
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)
    iidtipoempleado = models.ForeignKey('TipoEmpleado', models.DO_NOTHING, db_column='iIdTipoEmpleado')  # Field name made lowercase.
    user = models.OneToOneField(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'empleados'


class Mesas(models.Model):
    iidmesa = models.BigAutoField(db_column='iIdMesa', primary_key=True)  # Field name made lowercase.
    inromesa = models.IntegerField(db_column='iNroMesa')  # Field name made lowercase.
    iidestado = models.IntegerField(db_column='iIdEstado')  # Field name made lowercase.
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)
    iidsucursal = models.ForeignKey('Sucursales', models.DO_NOTHING, db_column='iIdSucursal')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'mesas'


class Pedidos(models.Model):
    iidpedido = models.BigAutoField(db_column='iIdPedido', primary_key=True)  # Field name made lowercase.
    inropedido = models.IntegerField(db_column='iNroPedido')  # Field name made lowercase.
    dfechapedido = models.DateTimeField(db_column='dFechaPedido')  # Field name made lowercase.
    iidestado = models.IntegerField(db_column='iIdEstado')  # Field name made lowercase.
    itotal = models.IntegerField(db_column='iTotal')  # Field name made lowercase.
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)
    iidcliente = models.ForeignKey(Clientes, models.DO_NOTHING, db_column='iIdCliente', blank=True, null=True)  # Field name made lowercase.
    iidempleado = models.ForeignKey(Empleados, models.DO_NOTHING, db_column='iIdEmpleado', blank=True, null=True)  # Field name made lowercase.
    iidmesa = models.ForeignKey(Mesas, models.DO_NOTHING, db_column='iIdMesa', blank=True, null=True)  # Field name made lowercase.
    iidtipopedido = models.ForeignKey('TipoPedidos', models.DO_NOTHING, db_column='iIdTipoPedido')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'pedidos'


class Productos(models.Model):
    iidproducto = models.BigAutoField(db_column='iIdProducto', primary_key=True)  # Field name made lowercase.
    snombreproducto = models.CharField(db_column='sNombreProducto', max_length=191)  # Field name made lowercase.
    sdescripcion = models.CharField(db_column='sDescripcion', max_length=191)  # Field name made lowercase.
    istock = models.IntegerField(db_column='iStock')  # Field name made lowercase.
    dprecio = models.IntegerField(db_column='dPrecio')  # Field name made lowercase.
    iidestado = models.IntegerField(db_column='iIdEstado')  # Field name made lowercase.
    surl = models.CharField(db_column='sUrl', max_length=250)  # Field name made lowercase.
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)
    iidtipoproducto = models.ForeignKey('TipoProductos', models.DO_NOTHING, db_column='iIdTipoProducto')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'productos'


class Sucursales(models.Model):
    iidsucursal = models.BigAutoField(db_column='iIdSucursal', primary_key=True)  # Field name made lowercase.
    snombre = models.CharField(db_column='sNombre', max_length=191)  # Field name made lowercase.
    iidestado = models.IntegerField(db_column='iIdEstado')  # Field name made lowercase.
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'sucursales'


class TipoCliente(models.Model):
    iidtipocliente = models.BigAutoField(db_column='iIdTipoCliente', primary_key=True)  # Field name made lowercase.
    stipocliente = models.CharField(db_column='sTipoCliente', max_length=191)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tipo_cliente'


class TipoComprobante(models.Model):
    iidtipocomprobante = models.BigAutoField(db_column='iIdTipoComprobante', primary_key=True)  # Field name made lowercase.
    snombretipocomprobante = models.CharField(db_column='sNombreTipoComprobante', max_length=191)  # Field name made lowercase.
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tipo_comprobante'


class TipoEmpleado(models.Model):
    iidtipoempleado = models.BigAutoField(db_column='iIdTipoEmpleado', primary_key=True)  # Field name made lowercase.
    stipoempleado = models.CharField(db_column='sTipoEmpleado', max_length=191)  # Field name made lowercase.
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tipo_empleado'


class TipoMovimiento(models.Model):
    iidtipomovimiento = models.BigAutoField(db_column='iIdTipoMovimiento', primary_key=True)  # Field name made lowercase.
    stipomovimiento = models.CharField(db_column='sTipoMovimiento', max_length=191)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tipo_movimiento'


class TipoPedidos(models.Model):
    iidtipopedido = models.BigAutoField(db_column='iIdTipoPedido', primary_key=True)  # Field name made lowercase.
    stipo = models.CharField(db_column='sTipo', max_length=191)  # Field name made lowercase.
    iidestado = models.IntegerField(db_column='iIdEstado')  # Field name made lowercase.
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tipo_pedidos'


class TipoProductos(models.Model):
    iidtipoproducto = models.BigAutoField(db_column='iIdTipoProducto', primary_key=True)  # Field name made lowercase.
    snombretipoproducto = models.CharField(db_column='sNombreTipoProducto', max_length=191)  # Field name made lowercase.
    iidestado = models.IntegerField(db_column='iIdEstado')  # Field name made lowercase.
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tipo_productos'


class Ventas(models.Model):
    iidventa = models.BigAutoField(db_column='iIdVenta', primary_key=True)  # Field name made lowercase.
    inroventa = models.IntegerField(db_column='iNroVenta')  # Field name made lowercase.
    dfechaventa = models.DateTimeField(db_column='dFechaVenta')  # Field name made lowercase.
    fmontoventa = models.DecimalField(db_column='fMontoVenta', max_digits=8, decimal_places=2)  # Field name made lowercase.
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)
    iidcaja = models.ForeignKey(Cajas, models.DO_NOTHING, db_column='iIdCaja')  # Field name made lowercase.
    iidempleado = models.ForeignKey(Empleados, models.DO_NOTHING, db_column='iIdEmpleado')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ventas'
