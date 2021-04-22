set var=%1

certutil -decodehex %1 %var:~0,-10%

