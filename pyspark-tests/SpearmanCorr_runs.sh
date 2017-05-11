#! /bin/bash -v

for NN in  11 12 13 14 15 16 17 18 19 20
do
    echo "run $NN SpearmanCorr" 
    /root/spark-2.0.1-bin-hadoop2.7/bin/spark-submit --master spark://et20.et.eng.bos.redhat.com:7077 --executor-memory 200G --conf spark.default.parallelism=40 --conf spark.python.worker.memory=190g  ./mllib_tests.py  SpearmanCorrelationTest --num-trials=10 --inter-trial-wait=3 --num-partitions=64 --random-seed=5 --num-rows=100 --num-cols=1000 1>> Spearmancorr_match_openshift_inmemory_$NN_OUT 2>>Spearmancorr_match_openshift_inmemory_$NN_ERR 
done

