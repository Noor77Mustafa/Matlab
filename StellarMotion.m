starData = dlmread('starData.csv');
nObs = size(spectra,1)
lambdaStart = 630.02
lambdaDelta = 0.14
s = spectra(:,6)
plot(lambda,s,".-")
xlabel("Wavelength")
ylabel("Intensity")
[sHa,idx] = min(s)
lambdaHa = lambda(idx)
hold on
plot(lambdaHa,sHa,"rs","MarkerSize",8)
hold off
z = lambdaHa/656.28 - 1
speed = z*299792.458