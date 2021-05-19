import boto3
#Python 3.5.2
#pip3 install boto3
#Update the aws_access_key_id and aws_secret_access_key of your account here.
ec2=boto3.client('ec2','ap-south-1',aws_access_key_id='',aws_secret_access_key='')

dictionary={}
for i in ec2.describe_tags()['Tags']:
   keyValue=[]
   keyValue.append(i['Key'])
   keyValue.append(i['Value']) 
   resourceId=dictionary.get(i['ResourceId'],None)
   if resourceId == None: 
      dictionary[i['ResourceId']]=[]
      dictionary[i['ResourceId']].append(keyValue)
   else:
      dictionary[i['ResourceId']].append(keyValue)

for i in dictionary:
   print("Tags for Resource Id "+i+" is ")
   print(dictionary[i])
   print()
