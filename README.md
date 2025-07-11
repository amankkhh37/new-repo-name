# My To-Do List

## Local Setup
1. Install dependencies: `npm install`.
2. Create `.env` file using `.env.example`.
3. Run the app: `npm start`.
4. Access the app at `http://localhost:5000`.

## Docker Setup
1. Build the image: `docker-compose build`.
2. Run the containers: `docker-compose up`.
3. MongoDB data will persist in the local volume defined in docker-compose.

## Deployment
Set up your environment variables (`MONGO_URI`, `JWT_SECRET`) in Docker Compose or Azure Portal. Run `deployment_script.sh` to deploy to Azure Container Instances.