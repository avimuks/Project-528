## About
Store Forecasting is always important for retail stores to have various strategies in order to meet their target. Forecasting in retail involves utilizing existing data to predict future events and more specifically, consumer behavior. The dataset is extarcted from http://community.tableau.com/docs/DOC-1236 in _.xlsx_ which is converted to _.csv_ using concatenation formula to perform the analysis. We will be processing the data on Hadoop Cluster using HiveQL. The final output would be deomstrated with the help of Power View in Excel sheet.

[Fig.1 About](https://github.com/avimuks/Project-528/blob/master/images/About.JPG)

## System Rquirements
Number of worker nodes-2 (A4)

Specification of each node

Number of Cores-8

RAM-14GB

Discs-16

 ## Getting Started


## Step 1

_**Creating an Azure Storage Account and providing a Hadoop Cluster.**_


**NOTE:** Before starting the process you should have
- MS Azure subscription – you can get a free trial version from Get Azure free trial.
- Workstation Computer – You should have a computer with Microsoft Excel 2013/MS Office 2013 Professional Plus/Office 2010 Pro Plus.

_By default an HDInsight Cluster on Hadoop is provisioned in the same data centre as the specified Azure Storage account._ 

**Step 1.1:** You should sign in to the Azure Portal.

**Step 1.2:** Click NEW in the lower-left corner and then enter the values as shown in the image.

[Fig.2 Storage Account](https://github.com/avimuks/Project-528/blob/master/images/storage%20account.jpg)

**NOTE:** _Make sure that the storage account is created in a location that is supported for the cluster i.e. East Asia, Southeast Asia, North Europe, West Europe, East US, West US, North Central US, South Central US._

**Step 1.3:** Select the new storage account form the list and click _MANAGE ACCESS KEYS_ at the bottom of the page to make a note of _PRIMARY ACCESS KEY/SECONDARY ACCESS KEY_.

A Hadoop cluster can be created by using Azure Portal, HDInsight .NET SDK Follow the following steps to create the Cluster

**Step 1.4:** Sign in to Azure Portal.

**Step 1.5:** Click on NEW in lower-left corner and then enter values as shown in image.

[Fig.3 Hadoop Cluster](https://github.com/avimuks/Project-528/blob/master/images/hadoop%20cluster.jpg)

Click cluster name where you want to run the sample to Run the sample form Azure Portal - click Query Console at the bottom
- click Getting Started Gallery tab
- under Samples category click the sample you want to run

## Step 2

_**Uploading dataset to Microsoft Azure blob using Azure Management Studio**_

**Step 2.1:**  Open Azure Management Studio 
- Goto Storage Accounts
- Blob Containers (your created folder here cis528)
- Upload
- cis528
- CIS528
- Select the file from your local system (here 528analysis CSV file) 

	https://avinandan.blob.core.windows.net/cis528/CIS 
    
[Fig.4 Azure Management Studio Blob Containers](https://github.com/avimuks/Project-528/blob/master/images/azure%20management%20blob%20containers.jpg)








   






