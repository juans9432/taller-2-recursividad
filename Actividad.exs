defmodule Actividad do

  def main do
    
  end

  #funcion recursiva que realiza una suma
  def suma(0), do: 0
  def suma(n) do
    n + suma(n-1)
  end

  #funcion recursiva que calcula un factorial
  def factorial_recursividad(0) do
    1
  end
  def factorial_recursividad(n) do
    n * factorial_recursividad(n-1)
  end

  #funcion recursiva que cuenta los elementos de una lista
  def contar_lista([]) do
    0
  end
  def contar_lista([_ | tail]) do
    1 + contar_lista(tail)
  end

  #funcion recursiva que calcula el balance
  def balance([]) do
    0
  end
  def balance([head | tail]) do
    head + balance(tail)
  end

  #funcion recursiva dice si un elemento se encuentra en una lista o no
  def elemento_esta?(_, []), do: false
  def elemento_esta?(buscado, [head | _]) when buscado == head do
    true
  end
  def elemento_esta?(buscado, [_ | tail]) do
    elemento_esta?(buscado, tail)
  end

  #reservas en un hotel
  def sumar_dias([]) do
    0
  end
  def sumar_dias([%{dias: d} | tail]) do
    d  + sumar_dias(tail)
  end

  #potencia de un numero
  def potencia(_, 0) do
    1
  end
  def potencia(base, exponente) do
    base * potencia(base, exponente-1)
  end

  #sumar numeros pares de una lista
  def sumar_pares([]) do
    0
  end
  def sumar_pares([head | tail]) when rem(head, 2) == 0 do
    head + sumar_pares(tail)
  end
  def sumar_pares([_head | tail]) do
    sumar_pares(tail)
  end

  #pedidos de una tienda
  def sumar_cantidades([]) do
    0
  end
  def sumar_cantidades([%{cantidad: c} | tail]) do
    c + sumar_cantidades(tail)
  end




end

Actividad.main()
