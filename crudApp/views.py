from django.shortcuts import render
from django.views.generic import View
from django.views.generic import CreateView, UpdateView, DeleteView
from crudApp.models import Clientes
from django.http import JsonResponse

# Create your views here.


def Inicio(request):
    return render(request, 'index.html')

# def crudClientes(request):
#     clientes = Clientes.objects.all().values('iidcliente', 'snombrecliente', 'sapellidocliente', 'idni')
#     data = {
#         'titulo' : 'Gestion de Clientes', 
#         'clientes' : clientes
#     }
#     return render(request, 'clientes.html', data)

def crudClientes(request):
    clientes = Clientes.objects.all().values('iidcliente', 'snombrecliente', 'sapellidocliente', 'idni')
    data = {
        "data": list(clientes)  # DataTables espera los datos dentro de la clave "data"
    }
    return JsonResponse(data)

def tabla_clientes(request):
    # Renderiza la plantilla clientes.html
    return render(request, 'clientes.html')


def crudVentas(request):
    return render(request, 'ventas.html')