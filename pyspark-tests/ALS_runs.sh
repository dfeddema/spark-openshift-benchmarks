#! /bin/bash -v

for NN in  11 12 13 14 15 16 17 18 19 20
do
    echo "run $NN ALSTest" 
    /root/spark-2.0.1-bin-hadoop2.7/bin/spark-submit --master spark://et20.et.eng.bos.redhat.com:7077 --executor-memory 200G --conf spark.default.parallelism=40 --conf spark.python.worker.memory=190g  ./mllib_tests.py ALSTest --num-trials=10 --inter-trial-wait=3 --num-partitions=256 --random-seed=5 --num-users=100000 --num-products=10000 --num-ratings=10 --num-iterations=10 --rank=10 --reg-param=0.1 1>>logs/ALS_samesettingsopenshiftrun$NN.OUT 2>>logs/ALS_samesettingsopenshiftrun$NN.ERR 
done

