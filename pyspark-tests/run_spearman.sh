for i in {66..100} 
do
  echo "$i"
  /root/spark-2.0.1-bin-hadoop2.7/bin/spark-submit --master spark://et20.et.eng.bos.redhat.com:7077 ./mllib_tests.py SpearmanCorrelationTest --num-trials=10 --inter-trial-wait=3 --num-partitions=64 --random-seed=5 --num-rows=50000 --num-cols=1000 1>>spearman.out$i 2>>spearman.err$i & 
  sleep 6m
done
