# fullstack
Combined repo for frontend and backend to allow for easy cloning and docker-compose</br>
Also see a live demonstration of JBox on http://jbox.kirkwthomas.com:3000

### To run JBox locally, perform the following from your command line.

##### Create a directory to store JBox:</br>
`mkdir JBox && cd "$_"`

##### Clone the repository:</br>
`git clone https://github.com/DB-GUI-Spring-2020-JBox/fullstack/`

##### Change directory into the fullstack subfolder:</br>
`cd fullstack`

##### Ensure submodules are avaiable:</br>
`git submodule update --init --recursive --remote`

##### Start Docker using Docker Compose:</br>
`docker-compose up`

Allow time for your system to initialize the UI and API containers. Several modules will be installed in the background the first time running the system. Subsequent restarts will be much faster.
