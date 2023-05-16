#A = 65/ Z = 90 a = 97 / z = 122

def caesar_cypher(sentence, factor, result = "")
  
  sentence.each_char do |char|
    base = char.ord < 91 ? 65 : 97
    if char.ord.between?(65, 90) or char.ord.between?(97, 122)  
      rotation = (((char.ord - base) + factor) %  26) + base
      result += rotation.chr
    else
      result += char
    end
  end
  result
end  

p caesar_cypher("What a sentence!", 5)
