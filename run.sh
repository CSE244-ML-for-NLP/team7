export CUDA_VISIBLE_DEVICES=0

python2 create_data.py 

python3 convert_mw.py
python3 preprocess_mw.py 
python3 make_emb.py

# Training
python3 train.py -log logging

# Evaluation
python3 predict.py 
