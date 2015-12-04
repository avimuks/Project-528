## About
Store Forecasting is always important for retail stores to have various strategies in order to meet their target. Forecasting in retail involves utilizing existing data to predict future events and more specifically, consumer behavior. The dataset is extarcted from http://community.tableau.com/docs/DOC-1236 in _.xlsx_ which is converted to _.csv_ using concatenation formula to perform the analysis. We will be processing the data on Hadoop Cluster using HiveQL. The final output would be deomstrated with the help of Power View in Excel sheet.

[Fig.1 About](https://github.com/avimuks/Project-528/blob/master/images/About.JPG)

## System Rquirements
Number of worker nodes-2 

Specification of each node

Number of Cores-8

RAM-14GB

Discs-16


## Getting Started



## Step 1

### _**Creating an Azure Storage Account and provision a Hadoop Cluster.**_


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

Click cluster name where you want to run the sample to Run the sample form Azure Portal
-> click Query Console at the bottom -> click Getting Started Gallery tab -> under Samples category click the sample you want to run

## Step 2

### _**Uploading dataset to Microsoft Azure Blob Storage using Azure Management Studio**_

**Step 2.1:**  Open Azure Management Studio and follow the steps

-> Goto Storage Accounts -> Blob Containers (your created folder here cis528) -->Select the file from your local system (here  it is 528analysis CSV file) 
	 
    
[Fig.4 Azure Management Studio Blob Containers](https://github.com/avimuks/Project-528/blob/master/images/azure%20management%20blob%20containers.jpg)


## Step 3

### _**Verify the data to Azure Blob storage using Microsoft Azure HDInsight Query Console**_

**Step3.1:** Login into Microsoft Azure HDInsight QUERY CONSOLE

**Step3.2:** Once the HDInsight Cluster is provisioned in the Azure portal, click on the cluster name where you want to run the query.

**Step 3.3:** Enter the Hadoop user account and password. The default user name is admin; the password is what you entered while provisioning the cluster. 
 available (here 528analysis)

[Fig.5 Azure HDInsight File Browser](https://github.com/avimuks/Project-528/blob/master/images/azure%20HDInsight%20file%20browser.jpg)

## Step 4

### _**Hive Queries**_

**Step 4.1:** Performing the Hive queries Goto Hive Editor in Microsoft Azure HDInsight Query Console.
Blob Storage path wasb://cis528@avinandan.blob.core.windows.net/CIS528

[Fig.6 Microsoft Azure HDInsight Query Hive Editor](https://github.com/avimuks/Project-528/blob/master/images/azure%20HDInsight%20query%20hive%20editor.jpg)


**Step 4.2:** On the Hive Editor tab, for Query Name, enter CIS528 Query_1. The query name is the job title.

**Step 4.3:** In the query pane, enter the Hive query as shown in the image.

**Step 4.4:** Click Submit. It takes a few moments to get the results back.

[Fig.7  Microsoft Azure Hive Editor Output](https://github.com/avimuks/Project-528/blob/master/images/azure%20HDInsight%20query%20hive%20editor%20output.jpg)

**Step 4.5:** When the Status field changes to Completed, select View Details for the job. On the details page, the Job Output would be displayed.

[_**Note:**_ Queries.txt contains the list of queries executed in this application.All the queries can be executed in the similar manner as described above]


## Step 5

### _**Exporting data to Excel**_

_**NOTE:**_ Once the job has successfully completed, you can use the Microsoft Hive ODBC Driver to import data from Hive into Excel. Once you have installed the driver, use the following steps to connect to the table:-

**Step5.1:** Open Excel and create a blank workbook.

**Step5.2:** From the Data tab, select From Other Sources, and then select From Microsoft Query.

**Step5.3:** When prompted to Choose Data Source, select the Sample Microsoft Hive DSN.

**Step5.4:** In the Microsoft Hive ODBC Driver Connection dialog, enter the following values, and then click OK.

**Step5.5:** Host - The host name of your HDInsight cluster.For example, mycluster.azurehdinsight.net

	 User Name - The administrator name for your HDInsight cluster

	 Password  - The administrator password.

**Step5.6:** In the Query Wizard, select the table, and then select the > button.

**Step5.7:** Click Next to continue through the wizard, until you reach a dialog with a Finish button. Click Finish.

**Step5.8:** When the Import Data dialog appears, click OK to accept the defaults. After the query completes, the data will be displayed in Excel.

## Getting started with Apache Spark

## Step 1

**Step1.1:** Go to https://manage.windowsazure.com and login to your Azure Account.

**Step1.2:** Click on Storage, Click on New button on bottom left corner, Now click on ‘Quick create’, put a store name of your choice and finally click ‘create storage account’ button

[Fig 8: Create a storage account](https://github.com/avimuks/Project-528/blob/master/images/Sparkstorage.jpg)

**Step1.3:** Select the new storage account from the list and click MANAGE ACCESS KEYS at the bottom of the page. Make a note of the PRIMARY ACCESS KEY (or the SECONDARY ACCESS KEY—either of the keys work). You will need this later in the tutorial.

## Step 2

**Step2.1:** Click on HDInsight, then click on ‘create an HDInsight cluster’, then click on spark.

**Step2.2:** Now put cluster name of your choice, select cluster size as 4 data nodes, assign any password for the cluster. Make sure that you remember this password because you will have to use to login to the cluster once the cluster has been created.

**Step2.3:** Select the storage account that you have created, and then click on ‘Create HDInsight Cluster.

[Fig 9: Provision Spark Cluster](https://github.com/avimuks/Project-528/blob/master/images/Spark%20Cluster.jpg)

**Step2.3:** It will take around 30 minutes of time for the cluster creation.

## Step 3

**Step3.1:** Once cluster is created, launch launch the Jupyter notebook. For this From the Spark cluster blade, click Quick Links, and then from the Cluster Dashboard blade, click Jupyter Notebook. If prompted, enter the admin credentials for the cluster.

**Step3.2:** You may also reach the Jupyter Notebook for your cluster by opening the following URL in your browser. Replace CLUSTERNAME with the name of your cluster:
https://CLUSTERNAME.azurehdinsight.net/jupyter


## Step 4

**Step4.1:** Create a new notebook. Click New, and then click Python 2.

[Fig 10: Ipython notebook creation](https://github.com/avimuks/Project-528/blob/master/images/Ipython.jpg)

**Step4.2:** Import the "Spark.ipynb" attached in the code folder and press the Run button to execute.


## Special Thanks 
- (https://github.com/) GitHub for API and UI
- Microsoft Azure
- Microsoft Excel

## Licence

Developed by : 
AVINANDAN MUKHERJEE
RAJEEV SINGH
RICHA KANKAREJ
MANVI CHANDRA
