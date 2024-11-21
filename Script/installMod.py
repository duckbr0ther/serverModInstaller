import gdown
import os

print("IMPORTANT! Check if python.exe is added to PATH!")

url = "https://drive.google.com/drive/folders/1xDuJiRektDsUx62av_SIPIfvWcnwkJiK?dmr=1&ec=wgc-drive-hero-goto"
folder_id = url.split('/')[-1]

if not os.path.exists("./ModDownload"):
    os.mkdir("./ModDownload")

gdown.download_folder(id = folder_id, output = "./ModDownload/")