def bubble_sort(vetor)
  # Atribuindo o tamanho do vetor para ser ordenado
  tamanho_vetor = vetor.length
  inicio = Time.now
  count = 1
  loops = 0
  reps  = 0
  
  puts "INICIO:\n"
  puts "Tamanho do vetor:#{tamanho_vetor}\n"
  
    loop do
    puts "Loop: ##{loops += 1}"
    trocado = false
    # Tamanho de repetições sempre será o tamanho do vetor -1
    (tamanho_vetor-1).times do |i|
      puts "Rep: ##{reps += 1}"
      puts "VETOR: #{vetor}\n\n"
      # Troca a posição somente se o valor direito > esquerdo
      if vetor[i] > vetor[i+1]
        vetor[i], vetor[i+1] =  vetor[i+1], vetor[i]
        
        puts "Antes: [i+1]: #{vetor[i+1]}"
        puts "       [ i ]: #{vetor[i]}"
        puts "Depois:[ i ]: #{vetor[i]}"
        puts "       [i+1]: #{vetor[i+1]}\n\n"
        puts "TROCA: #{vetor}\n\n"
        
        trocado = true
      end
      puts "#=> #{count}"
      opcao = gets
      count += 1
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
# vetor = vetor_de 10000
vetor = [5, 3, 1, 4, 7, 2, 6]
# vetor = [1, 2, 3, 4, 5, 7, 6]
bubble_sort(vetor)