# Spark Mllib Performance Tests for OpenShift
#
#
 This is based on the databricks spark-perf test harness.
 It runs on Openshift and uses pbench to collect telemetry data
 across the entire Openshift cluster while each benchmark is running. 

 It assumes you have already built your spark cluster in OpenShift using Oshinko.

 Pbench archives the performance data in elastic search.

**IMPORTANT:**  Pbench agents must be installed on all nodes in the spark cluster before running these tests.
                This test harness must be run by 'root' because pbench requires root privileges. 
                
                
 The following machine learning algorithms are run with the config settings in `config/config.py`

- Machine Learning
  - glm-regression: Generalized Linear Regression Model
  - glm-classification: Generalized Linear Classification Model
  - naive-bayes: Naive Bayes
  - als: Alternating Least Squares
  - kmeans: K-Means clustering
  - pearson: Pearson's Correlation
  - spearman: Spearman's Correlation



