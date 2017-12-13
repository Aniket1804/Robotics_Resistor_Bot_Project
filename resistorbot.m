port = '/dev/cu.usbmodem1411';
board = 'Mega2560';
arduino_board = arduino(port, board, 'Libraries', 'Servo');
servo_motor = servo(arduino_board, 'D8');
servo_motor1 = servo(arduino_board, 'D9');
servo_motor2 = servo(arduino_board, 'D10');
while(1)
    writePosition(servo_motor2, 0.6);
    pause(2) 
    writePosition(servo_motor1, 0.75);
    pause(2)
    writePosition(servo_motor, 1);
    pause(2)
    %%sec posn
    for i = 0.6: -0.005: 0.58
    writePosition(servo_motor2,i);
    pause(0.01)
    end
    pause(1)
    %%third posn
    for i = 0.58: -0.005: 0.55
    writePosition(servo_motor2,i);
    pause(0.01)
    end
    pause(1)
    for j = 0.75: -0.005: 0.72
    writePosition(servo_motor1,j);
    pause(0.01)
    end
    pause(1)
    for k = 1: -0.005: 0.95
    writePosition(servo_motor,k);
    pause(0.01)
    end
    pause(1)
    %%fourth posn
    for i = 0.55: -0.005: 0.5
    writePosition(servo_motor2,i);
    pause(0.01)
    end
    pause(1)
    for j = 0.72: -0.005: 0.64
    writePosition(servo_motor1,j);
    pause(0.01)
    end
    pause(1)
    for k = 0.95: -0.005: 0.85
    writePosition(servo_motor,k);
    pause(0.01)
    end
    pause(1)
    
    %%fifth posn
    for j = 0.64: 0.005: 0.7
    writePosition(servo_motor1,j);
    pause(0.01)
    end
    pause(1)
    for k = 0.85: -0.005: 0.84
    writePosition(servo_motor,k);
    pause(0.01)
    end
    pause(1)
    writeDigitalPin(arduino_board,'D2',1);
    %%final posn
    for i = 0.5: -0.005: 0.445
    writePosition(servo_motor2,i);
    pause(0.01)
    end
    pause(1)
    for k = 0.84: -0.005: 0.82
    writePosition(servo_motor,k);
    pause(0.01)
    end
    pause(5)
    
    
    %%to cam
for i = 0.445 : 0.005: 0.55
    writePosition(servo_motor2, i);
    pause(0.01)
    end
    pause(1)
for j = 0.7 : 0.005: 0.85
    writePosition(servo_motor1, j);
    pause(0.01)
end
pause(1)
    for k = 0.82 : -0.005: 0.45
    writePosition(servo_motor, k);
    pause(0.1)
    end
    pause(10)
    %%to box
    for i = 0.55 : 0.005: 1
    writePosition(servo_motor2, i);
    pause(0.01)
    end
    pause(1)
for j = 0.85 : -0.005: 0.6
    writePosition(servo_motor1, j);
    pause(0.1)
end
pause(1)
    for k = 0.45 :0.005: 1
    writePosition(servo_motor, k);
    pause(0.1)
    end
    pause(5)
    writeDigitalPin(arduino_board,'D2',0);
    %%to begining posn
     for i = 1: -0.005: 0.6
    writePosition(servo_motor2,i);
    pause(0.01)
    end
    pause(1)
    for j = 0.6: 0.005: 0.75
    writePosition(servo_motor1,j);
    pause(0.01)
    end
    pause(1)
    
    

    
    pause(10)
end
   
            
