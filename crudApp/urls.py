from django.urls import path, include
from . import views

urlpatterns = [
    path('', views.Inicio,name='Inicio'),
    path('clientes/', views.crudClientes,name='Clientes'),
    path('clientes/tabla/', views.tabla_clientes, name='tabla_clientes'),
    
    path('clientes/add/', views.clientes_add, name='clientes_add'),



    path('ventas/', views.crudVentas,name='Ventas'),
    path('ventas/tabla/', views.tabla_ventas, name='tabla_ventas'),
]