from django.urls import path, include
from . import views

urlpatterns = [
    path('', views.Inicio,name='Inicio'),
    path('clientes/', views.crudClientes,name='Clientes'),
    path('clientes/tabla/', views.tabla_clientes, name='tabla_clientes'),
    path('ventas/', views.crudVentas,name='Ventas'),
]