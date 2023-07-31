import os
from flask import Flask, render_template, request, redirect, url_for
from google.cloud import storage

app = Flask(__name__, template_folder='template', static_folder='template/static'); 

# Replace with your GCP credentials file path
os.environ["GOOGLE_APPLICATION_CREDENTIALS"] = "/home/coder/project/comprehensive_docker_flask_sa_upload_gcs/comprehensive_lab_sa.json"
CREDENTIALS=os.environ.get('GOOGLE_APPLICATION_CREDENTIALS'); 

bucket_name = "comphrehensive-bucket"; 

@app.route("/", methods=["GET", "POST"])
def upload_file():
    if request.method == "POST":
        file = request.files["file"]
        if file:
            # Upload the file to Google Cloud Storage
            upload_to_gcs(file)
            return "File uploaded successfully!"
    return render_template("index.html")

def upload_to_gcs(file):
    # Initialize the GCS client
    client = storage.Client.from_service_account_json(f"{CREDENTIALS}"); 

    # Get the bucket reference
    bucket = client.get_bucket(bucket_name)

    # Create a new blob and upload the file
    blob = bucket.blob(file.filename)
    blob.upload_from_file(file)

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=7200, debug=True); 