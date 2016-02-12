def echo(var)
  var
end

def shout(var)
  var.upcase
end

def repeat(var, x=nil)
  if x == nil
    var + " " + var
  else
    [var]*x*' '
  end
end

def start_of_word(var, x)
  var[0, x]
end

def first_word(var)
  var[0,var.index(" ")]
end

def titleize(var)
  #Capitalize every word
  #var.split.map(&:capitalize)*' '
  #output = var.split.map { |s|s.capitalize }.join(' ')

  output=""
  i=0
  array=var.split.each{|word|
    #out_c += word.capitalize + ' '
    if word == "and"
      word="and"
    elsif word == "over"
        word = "over"
    elsif word == "the"
        word = "the"
    else
      word = word.capitalize
    end

    # capitalize first word even if it is small word
    if i==0
      word = word.capitalize
    end

    # make output string
    if output.empty? == true
      output = word
    else
      output += ' ' + word
    end
    #output = word.join(' ')
    i+=1}
  puts output
  output

  # Change every small word to lower case
  #output = output.gsub("And", "and").gsub("Over", "over").gsub("The", "the")
end

titleize("the brigde and kwai river")
