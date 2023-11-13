import pyrebase
from gpsmodule import GPS_Data
from mpu_6050 import Get_ACC

config = {
    "apiKey": "AIzaSyA5BcvaQYFaVBCyJEFTbqOWCUDKdUyh7Bw",
    "authDomain": "iot-smart-helmet-5a382.firebaseapp.com",
    "databaseURL": "https://iot-smart-helmet-5a382-default-rtdb.firebaseio.com",
    "projectId": "iot-smart-helmet-5a382",
    "storageBucket": "iot-smart-helmet-5a382.appspot.com",
    "messagingSenderId": "168206761654",
    "appId": "1:168206761654:web:4a2766f8b379d8e79e7017"
};

firebase = pyrebase.initialize_app(config)
Sensor_Data = firebase.database()

while True:
    a, b = GPS_Data()
    temp, ax, ay, az, gx, gy, gz = Get_ACC()

    Sensor_Data.child("GPS Data")
    data_1 = {"Latitude": a, "Longitude": b}
    Sensor_Data.set(data_1)

    Sensor_Data.child("Accelermeter Data")
    data_2 = {"Temperature": temp, "Acc X": ax, "Acc Y": ay, "Acc Z": az}
    Sensor_Data.set(data_2)
    
    Sensor_Data.child("Gyroscope Data")
    data_3 = {"Gyro X": gx, "Gyro Y": gy, "Gyro Z": gz}
    Sensor_Data.set(data_3)
    