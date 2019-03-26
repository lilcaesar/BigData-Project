# BigData-Project

Per far funzionare correttamente il processo di training, eseguire i seguenti passi:

1. Scaricare il progetto e da shell posizionarsi dentro la cartella BigData-Project
2. Per generare i tf_record delle immagini del training set, digitare il seguente comando:
   
   python generate_tfrecord.py --label=gate --csv_input=<PATH_TO_ANNOTATIONS_FOLDER>\train_labels.csv --output_path=<PATH_TO_ANNOTATIONS_FOLDER>\train.record --img_path=<PATH_TO_IMAGES_FOLDER>\train

3. Aprire il notebook **progetto_bid.ipynb** tramite Jupyter (il notebook deve contenere tutte i file nella cartella BigData-Project)
4. Eseguire le prime due celle per importare le librerie necessarie e preparare le variabili per il training
5. Eseguire la 3a cella che lancerà il processo di training (sono 200000 iterazioni, noi ci siamo fermati a circa 81000)
6. Generati i checkpoint nella cartella /training, eseguire la 4a cella inserendo al posto di 'checkpoint-number' il numero dell'ultimo checkpoint presente nella cartella /training:

   !python export_inference_graph.py --input_type image_tensor --pipeline_config_path training/ssd_mobilenet_v2_coco.config --                 trained_checkpoint_prefix training/model.ckpt-<checkpoint-number> --output_directory trained-inference-graphs/output_inference_graph
