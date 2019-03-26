def bubble_sort(vetor)
  tamanho_vetor = vetor.length
  inicio = Time.now

  loop do
    trocado = false

    (tamanho_vetor-1).times do |i|
      if vetor[i] > vetor[i+1]
        vetor[i], vetor[i+1] =  vetor[i+1], vetor[i]
        trocado = true
      end
    end
    break unless trocado
  end
  fim = Time.now
  
  puts "#{vetor}\n\n Tempo de execução: #{fim - inicio}"

end

def vetor_de n_posicoes
  vetor = []
  for i in 0..n_posicoes do
    vetor << rand(1000)
  end
  return vetor
end
vetor = vetor_de 10000

bubble_sort(vetor)