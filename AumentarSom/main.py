import soundfile as sf
import numpy

#Abre o audio
data, samplerate = sf.read('ah.mp3')

#Aumenta o volume
data *= 1.5

#Salva
sf.write('output.mp3', data, samplerate)
