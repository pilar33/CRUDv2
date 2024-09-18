from django.urls import path, include
from . import views
# from .views import ClientesCreateView

urlpatterns = [
    path('', views.Inicio,name='Inicio'),
    path('clientes/', views.crudClientes, name='Clientes'),
    path('clientes/tabla/', views.tabla_Clientes,name='tabla_clientes'),
 
    path('clientes/add/',views.crear_cliente, name='clientes_add'),
    path('clientes/edit/<int:pk>/', views.editar_cliente, name='clientes_edit'),
    

    path('ventas/', views.crudVentas,name='Ventas'),
    path('ventas/tabla/', views.tabla_ventas, name='tabla_ventas'),
]