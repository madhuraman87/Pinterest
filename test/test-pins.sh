#!/bin/bash
# 
#Test all functionalities 
#


#Login for user
echo "Login for user"
echo -e "\n"
curl -i -H "Content-Type: application/json" -X POST -d '{"emailId":"deo.priyanka02@gmail.com", "password":"frfe"}' http://127.0.0.1:5000/users/login/
echo -e "\n"

#Test create boards
echo"Test create boards "
echo -e "\n"
echo -e "\n"
curl -i -H "Content-Type: application/json" -X POST -d '{"boardName":"Food","boardDesc":"Amazing Food","Indian category": "Food","isPrivate": "false"}' http://127.0.0.1:5000/users/1/boards/

echo -e "\n"
echo "Upload images to server"
curl -F "file=@client-images/food1.jpg" http://127.0.0.1:5000/image/
curl -F "file=@client-images/food2.jpg" http://127.0.0.1:5000/image/
curl -F "file=@client-images/food3.jpg" http://127.0.0.1:5000/image/
curl -F "file=@client-images/food4.jpg" http://127.0.0.1:5000/image/
echo -e "\n"


#Test create a pin on board just created
echo -e "\n"
echo "Test create a pin on board just created"
curl -i -H "Content-Type: application/json" -X POST -d '{"pinName": "Food", "pinImage": "food1.jpg","pinDesc": "Amazing Food"}' http://127.0.0.1:5000/users/1/boards/Food/pins/
echo -e "\n"
curl -i -H "Content-Type: application/json" -X POST -d '{"pinName": "Food", "pinImage": "food2.jpg","pinDesc": "Amazing Food"}' http://127.0.0.1:5000/users/1/boards/Food/pins/
echo -e "\n"
curl -i -H "Content-Type: application/json" -X POST -d '{"pinName": "Food", "pinImage": "food3.jpg","pinDesc": "Amazing Food"}' http://127.0.0.1:5000/users/1/boards/Food/pins/
echo -e "\n"
curl -i -H "Content-Type: application/json" -X POST -d '{"pinName": "Food", "pinImage": "food4.jpg","pinDesc": "Amazing Food"}' http://127.0.0.1:5000/users/1/boards/Food/pins/
echo -e "\n"


#update a pin
echo -e "\n"
echo "update a pin"
curl -i -H "Content-Type: application/json" -X PUT -d '{"pin_Id": "1", "pinName": "My favourite Food", "pinImage": "food1.jpg", "pinDesc": "My Favorite food"}' http://127.0.0.1:5000/users/1/boards/Food/pins/1/ 
echo -e "\n"

#get all pins 
echo -e "\n"
echo "get all pins "
curl -i -H "Content-Type: application/json" -X GET http://127.0.0.1:5000/users/1/boards/Food/pins/
echo -e "\n"

#delete a pin
echo -e "\n"
echo "delete a pin"
curl -i -H "Content-Type: application/json" -X DELETE http://127.0.0.1:5000/users/1/boards/Food/pins/1/
echo -e "\n"


#get all pins 
echo -e "\n"
echo "get all pins "
curl -i -H "Content-Type: application/json" -X GET http://127.0.0.1:5000/users/1/boards/Food/pins/
echo -e "\n"

