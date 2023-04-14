--PRE_BUILD
aws ecr get-login-password --region us-east-1 --profile bia | docker login --username AWS --password-stdin 665550313384.dkr.ecr.us-east-1.amazonaws.com
--PRE_BUILD
docker build -t bia .
docker tag bia:latest 665550313384.dkr.ecr.us-east-1.amazonaws.com/bia:latest
--POST_BUILD
docker push 665550313384.dkr.ecr.us-east-1.amazonaws.com/bia:latest