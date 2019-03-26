def bubbleSort(array):
  tamanhoDoArray = len(array) - 1

  for i in range( tamanhoDoArray ):
    for j in range( tamanhoDoArray - i ):
      if array[j] < array[j + 1]:
        array[j], array[j + 1] = array[j + 1], array[j]
  return array

array = [2, 1, 5, 4, 3]

bubbleSort(array)