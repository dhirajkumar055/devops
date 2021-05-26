import boto3
#Python 3.5.2
#pip3 install boto3
#Update the aws_access_key_id and aws_secret_access_key of your account here.
ec2=boto3.client('ec2','ap-south-1',aws_access_key_id='',aws_secret_access_key='')

dictionary={}
#print(dir(ec2.describe_tags))
for i in ec2.describe_tags()['Tags']:
   keyValue=[]
   keyValue.append(i['Key'])
   keyValue.append(i['Value']) 
   resourceId=dictionary.get(i['ResourceId'],None)
   if resourceId == None and i['ResourceId'].startswith("i-"): 
      dictionary[i['ResourceId']]=[]
      dictionary[i['ResourceId']].append(keyValue)
   elif i['ResourceId'].startswith("i-"):
      dictionary[i['ResourceId']].append(keyValue)

for i in dictionary:
   print("#####################################################")
   print("Resource Id : "+i)
   print(" ","Key".ljust(25),"Value".ljust(25)) 
   for k,j in enumerate(dictionary[i]):
     print(k,j[0].ljust(25),j[1].ljust(25))
   print("#####################################################")
   print()

