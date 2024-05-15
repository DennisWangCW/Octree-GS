exp_name="qylab"
gpu=-1
ratio=1
resolution=-1
appearance_dim=0

fork=2
base_layer=10
visible_threshold=0.9
dist2level="round"
update_ratio=0.2

progressive="True"
dist_ratio=0.999 #0.99
levels=-1
init_level=-1
extra_ratio=0.5
extra_up=0.01

iterations=100000
type=merged_400_3_0.2

# example:

if [[ "$type" == *"merged"* ]]; then
   ./train.sh -d ${exp_name}/${type}/merged -l ${exp_name} --gpu ${gpu} -r ${resolution} --ratio ${ratio} --appearance_dim ${appearance_dim} \
      --fork ${fork} --visible_threshold ${visible_threshold} --base_layer ${base_layer} --dist2level ${dist2level} --update_ratio ${update_ratio} \
      --progressive ${progressive} --levels ${levels} --init_level ${init_level}  --dist_ratio ${dist_ratio} \
      --extra_ratio ${extra_ratio} --extra_up ${extra_up} --iterations ${iterations}
else 
   ./train.sh -d ${exp_name}/${type} -l ${exp_name} --gpu ${gpu} -r ${resolution} --ratio ${ratio} --appearance_dim ${appearance_dim} \
      --fork ${fork} --visible_threshold ${visible_threshold} --base_layer ${base_layer} --dist2level ${dist2level} --update_ratio ${update_ratio} \
      --progressive ${progressive} --levels ${levels} --init_level ${init_level}  --dist_ratio ${dist_ratio} \
      --extra_ratio ${extra_ratio} --extra_up ${extra_up} --iterations ${iterations}
fi