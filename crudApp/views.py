from django.shortcuts import render, redirect, get_object_or_404
# from django.views.generic import View
# from django.views.generic import CreateView, UpdateView, DeleteView
from crudApp.models import Clientes, Ventas
from django.http import JsonResponse

#OPCION 1
# from django.urls import reverse_lazy
# from django.views.generic import ListView, DetailView, CreateView, UpdateView, DeleteView

from django.views import generic
from crudApp.forms import ClientesForm


# Create your views here.


def Inicio(request):
    return render(request, 'index.html')


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
    ventas = Ventas.objects.all().values('inroventa', 'dfechaventa', 'fmontoventa')
    data = {
        "data": list(ventas)  # DataTables espera los datos dentro de la clave "data"
    }
    return JsonResponse(data)

def tabla_ventas(request):
    # Renderiza la plantilla clientes.html
    return render(request, 'ventas.html')


# /*vistas de ADM CLIENTES*/

#OPCION 1
# class ProductoCreateView(CreateView):
#     model = Clientes
#     form_class = ClientesForm
#     success_url = reverse_lazy('producto_list')


#OPCION2
def clientes_add(request):
    if request.method== "POST":
        formulario=ClientesForm(request.Post)
        if formulario.is_valid():
            cliente=formulario.save(commit=False)
            cliente.nombre=formulario.cleaned_data['snombrecliente']
            cliente.nombre=formulario.cleaned_data['sapellidocliente']
            cliente.nombre=formulario.cleaned_data['idni']
            cliente.save()
            return redirect('Clientes')
        else:
            formulario=ClientesForm()

        return render(request,'agregarClientes.html', {'formulario': formulario})

