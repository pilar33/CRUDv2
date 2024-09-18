from django.shortcuts import render, redirect, get_object_or_404
# from django.views.generic import View
# from django.views.generic import CreateView, UpdateView, DeleteView
from crudApp.models import Clientes, Ventas
from django.http import JsonResponse

# Configurar la cabecera de forma específica en la vista
# Puedes usar un decorador para configurar el encabezado de una vista específica que deseas cargar en el <iframe>.
#     Agregar el decorador a tu vista:
#     Django proporciona un decorador llamado @xframe_options_exempt para eximir ciertas vistas de las restricciones del encabezado X-Frame-Options. Para usarlo, asegúrate de importar el decorador y aplicarlo a la vista que deseas cargar en el <iframe>.
from django.views.decorators.clickjacking import xframe_options_exempt

#OPCION 1
from django.urls import reverse_lazy
from django.views.generic import ListView, DetailView, CreateView, UpdateView, DeleteView
from django.views import generic
from crudApp.forms import ClientesForm


# Create your views here.


def Inicio(request):
    return render(request, 'index.html')


def tabla_Clientes(request):
    clientes = Clientes.objects.all().values('iidcliente', 'snombrecliente', 'sapellidocliente', 'idni')
    data = {
        "data": list(clientes)  # DataTables espera los datos dentro de la clave "data"
    }
    return JsonResponse(data)

def crudClientes(request):
    # Renderiza la plantilla clientes.html
    return render(request, 'clientes.html')


def tabla_ventas(request):
    ventas = Ventas.objects.all().values('inroventa', 'dfechaventa', 'fmontoventa')
    data = {
        "data": list(ventas)  # DataTables espera los datos dentro de la clave "data"
    }
    return JsonResponse(data)

def crudVentas(request):
    # Renderiza la plantilla clientes.html
    return render(request, 'ventas.html')
    
# @xframe_options_exempt
# class ClientesCreateView(CreateView):
#     model = Clientes
#     form_class = ClientesForm
#     template_name = 'agregarClientes.html'
#     success_url = reverse_lazy('Clientes')

#     def form_valid(self, form):
#         form.save()
#         return JsonResponse({'form_is_valid': True, 'message': 'El cliente se agregó correctamente'})

#     def form_invalid(self, form):
#         return JsonResponse({
#             'form_is_valid': False,
#             'errors': form.errors.as_json()
#         })

@xframe_options_exempt  # Maintain the decorator
def crear_cliente(request):
    if request.method == 'POST':
        form = ClientesForm(request.POST)
        if form.is_valid():
            form.save()
            return JsonResponse({'form_is_valid': True, 'message': 'El cliente se agregó correctamente'})
        else:
            return JsonResponse({'form_is_valid': False, 'errors': form.errors.as_json()})
    else:
        form = ClientesForm()
    context = {'form': form}
    return render(request, 'clientes_form.html', context)

@xframe_options_exempt
def editar_cliente(request, pk):
    cliente = Clientes.objects.get(pk=pk)
    if request.method == 'POST':
        form = ClientesForm(request.POST, instance=cliente)
        if form.is_valid():
            if request.headers.get('X-Requested-With') == 'XMLHttpRequest':
                form.save()
                return JsonResponse({'form_is_valid': True})
            else:
                form.save()
                return redirect('Clientes')  # Assuming this is your desired redirect URL
        else:
            if request.headers.get('X-Requested-With') == 'XMLHttpRequest':
                return JsonResponse({'form_is_valid': False, 'errors': form.errors.as_json()})
            else:
                context = {'form': form}
                return render(request, 'clientes_form.html', context)
    else:
        form = ClientesForm(instance=cliente)
        context = {'form': form}
        return render(request, 'clientes_form.html', context)
