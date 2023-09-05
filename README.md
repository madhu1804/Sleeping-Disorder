# Sleeping-Disorder

Aim:

The project’s objective was to appraise ECG dataset through actual period observing
classification obtains Electrocardiogram signals throughout nap in order to evaluate
Apnea conditions in the patient. The study was conducted by utilising the dataset
from physionet website. This dataset was then imported into the data model that was
built in MATLAB tool. The model was evaluated successfully using various records
available in the dataset.
The project focuses on the following major outcomes in this study:
                  1. Time and Frequency analysis based on the dataset
                  2. Evaluate performance measures such as precision and accuracy on the dataset
using MATLAB tool
                  3. Diagnose Apnea in the patient using Machine Learning algorithm, SVM
algorithm to be precise.

For the above outcomes, the data classification depended on arriving at a particular set
of RR-interval which would then be used in the machine learning algorithm. RRinterval
states period passed among binary succeeding R-peaks on ECG signals. For
this study both the right & the left frequency of the RR-interval are required. The study
also looked to model three various epoch measurements on the ECG readings based on
various patterns. These outcomes were then fed into the model constructed on
MATLAB using the SVM (Support Vector Machine) algorithm for arriving at the
classifications on the dataset. SVM algorithm is classification technique it is widely
expended for ordering purposes. The experimental outcomes optimized by statistical
analysis that was run through the model decided SVM algorithm through direct kernel
provides finest precision on a length of 15 second epochs.

OBJECTIVE:


Sleep Apnea is where the brain stops sending signals to the muscles to breathe and the
actual breathing is not choked; this results in both psychological and physical
complications. This happens because of uncertainty in the respiratory system.
Medication in this scenario includes change in lifestyle, utilising respiratory devices and
may even result in surgical treatment.
The objective of the project looks to identify nap sickness by observing the behavior of
the ECG waves, studying the R-R series by finding out the time & frequency domain
and using machine learning techniques to assess if the person has sleep apnea disorder
based on the ECG readings.

MOTIVATION:

Nap apnea analysis necessary since of the fitness threats for example blow, unhappiness
and summary occupied productivity. principal object is developing a effective procedure
for organization of breathing indications they sense nap apnea. It could be attained
through modest process for breathing indicator arrangement spending MATLAB code.


BACKGROUND:

Nap apnea usually defined as termination of living throughout nap. Furthermore,
observed a danger mutable for monotony & humanity since long-standing influence on
ECG Signal. Its influence remains recognized numerous physical appliances such as
universal hypertension & prolonged kind instruction that longstanding concords fine
salaried of emotion. project suggests essential scheming to planned detection break
apnea from Electrocardiogram indicator. Dual distinctive workings note useful figures
that is used to identify apnea - one being the heart rate and the other being the R-peak
readings from the ECG signs. These readings are utilized as information feeds to the
classifier, supported through the support vector machine algorithm to aid apnea
recognition.

Technical Specificatios:

Retrieving the data:  The required data for the study was
retrieved from physionet website using WFDB software in
MATLAB. This data cannot be retrieved directly as it is
secured; it can only be retrieved using the WFDB package.
There are 70 recordings in this dataset. For the purpose of the
study, 35 records were considered for the learning set and the
remaining 35 records were considered for testing the data set.


Machine learning algorithm : Using the SVM algorithm, the
system analyses the information that is provided and predicts
whether the person is going to get a Apnea or not.

 Prediction: By referring to the machine learning principles
defined in the model, it is possible to predict whether the
person is prone to sleep apnea or not.

Uniqueness: Our system is unique as we present the
diagnosis based on machine learning models that take live
values and analyses it on a real time basis. This would be very
crucial as alerts for coma patients.

Database : Our system can handle large amounts of data sets
and here in the project, we are focusing on the ECG signal
dataset.
