
cd ..
python main.py --white \
    --no_pgd_optim \
    --hidden_init \
    --LAMBDA=0.05 \
    --carlini_loss \
    --batch_size=128 \
    --prepared_data='dataloader/128_prepared_data.pickle' \
    --nearest_neigh_all \
    --diff_nn \
    --save_model \
    --adv_model_path='saved_models/dag_diff.pt' \
    --comet \
    --offline_comet \
    --temp_decay_schedule=25 \
    --epochs=15 \
    --seed=1 \
    --namestr="DAG differentiable nearest neighbour"
