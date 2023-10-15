### Steps to copy the build files to nginx html folder using batch file (only for windows)

1. Navigate to the root of the project
2. Build the project `ng build`
3. After the build is complete, run the batch file `setup-nginx.bat` (you should still be in the root of the project)
4. The above step will transfer all the build files from the `/dist` folder to nginx `/html` folder
5. Now navigate to the root of nginx folder and run `nginx`
6. Check the application is running on `localhost:8080`