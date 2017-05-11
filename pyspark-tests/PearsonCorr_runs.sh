#! /bin/bash -v

for NN in  1 2 3 4 5 6 7 8 9 10
do
    echo "run $NN ALSTest" 
    /root/spark-2.0.1-bin-hadoop2.7/bin/spark-submit --master spark://et20.et.eng.bos.redhat.com:7077 --executor-memory 200G --conf spark.default.parallelism=40 --conf spark.python.worker.memory=190g  ./mllib_tests.py PearsonCorrelationTest --num-trials=10 --inter-trial-wait=3 --num-partitions=256 --random-seed=5 --num-rows=1000 --num-cols=100 1>>PearsonCorr_samesettingsopenshiftrun$NN.OUT 2>>PearsonCorrsamesettingsopenshiftrun$NN.ERR 
done

