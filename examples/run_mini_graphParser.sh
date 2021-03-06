#!/usr/bin/env bash
python examples/GraphParser.py --mode FastLSTM --num_epochs 1000 --batch_size 32 --hidden_size 512 --num_layers 3 \
 --pos_dim 100 --char_dim 100 --num_filters 100 --arc_space 512 --type_space 128 \
 --opt adam --learning_rate 0.001 --decay_rate 0.75 --epsilon 1e-4 --schedule 10 --gamma 0.0 --clip 5.0 \
 --p_in 0.33 --p_rnn 0.33 0.33 --p_out 0.33 --unk_replace 0.5 --pos --char \
 --objective cross_entropy --decode mst \
 --word_embedding glove --word_path "/Users/longxud/Documents/Code/data/embedding/glove/glove.6B.100d.txt"  --char_embedding random \
 --punctuation '.' '``' "''" ':' ',' \
 --train "/Users/longxud/Documents/Code/data/PTB_test/PTB_train_auto.conll" \
 --dev "/Users/longxud/Documents/Code/data/PTB_test/PTB_development_auto.conll" \
 --test "/Users/longxud/Documents/Code/data/PTB_test/PTB_test_auto.conll" \
 --model_path "models/parsing/biaffine/" --model_name 'network.pt'