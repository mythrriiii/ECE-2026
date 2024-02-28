
Fs = 10e3;
      t = 0:1/Fs:2;
      x1 = vco(sawtooth(2*pi*t,0.5),[0.1 0.4]*Fs,Fs);
      spectrogram(x1,kaiser(256,5),220,512,Fs);
      view(-45,65)
      colormap bone


