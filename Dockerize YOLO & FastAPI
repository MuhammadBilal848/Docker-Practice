<h1>Dockerizing YOLO Models & FASTAPI</h1>
<h2>Step 1: Create Main Directory</h2>
<p>Create a main working directory (e.g., <code>yolo-fastapi</code>) to store all necessary files.</p>
<h2>Directory Structure</h2>
<pre>
yolo-fastapi
├── app
│ ├── yolov5 repo
│ ├── requirements.txt
│ └── other necessary files
└── Dockerfile
</pre>
<h2>Step 2: Add Files to app Folder</h2>
<p>Place all required files to run the model and APIs inside the <code>app</code> folder.</p>
<h2>Step 3: Edit Dockerfile</h2>
<p>Add necessary commands to the <code>Dockerfile</code>.</p>
<h2>Step 4: Build Docker Image</h2>
`
sudo docker build -t image_name .
`
<h2>Step 5: Create & Start Container</h2>
<p>Create a container:</p>
`
sudo docker create --name any_name-container -p 8000:8000 image_name
`
<p>Start the container:</p>
`
sudo docker start container_name
`
<h2>Step 6: Stop Container</h2>
<p>Stop the container:</p>
`
sudo docker stop container_name
`
<h2>Step 7: Edit Files in Container</h2>
<p>Edit files inside the container:</p>
`
sudo docker exec -it container_id sh
`
