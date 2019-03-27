# BigData-Project

Dipendenze progetto
- OS: Windows 10 Home
- Tensorflow: 1.12.0
- Cuda: 9.0
- cuDNN: 7.4.2
- Python: 3.6.5 :: Anaconda

oppure

- OS: Ubuntu 16.04
- Tensorflow: 1.12.0
- Cuda: 9.0
- cuDNN: 7.4.2
- Python: 3.5

Per far funzionare correttamente il processo di training/evaluation, eseguire i seguenti passi:

1. Scaricare il progetto e da shell posizionarsi dentro la cartella BigData-Project
2. Per generare i tf_record delle immagini del training set, digitare il seguente comando da shell:
   
   python generate_tfrecord.py --label=gate --csv_input=<PATH_TO_ANNOTATIONS_FOLDER>\train_labels.csv --output_path=<PATH_TO_ANNOTATIONS_FOLDER>\train.record --img_path=<PATH_TO_IMAGES_FOLDER>\train

3. Aprire il notebook **progetto_bid.ipynb** tramite Jupyter Notebook eseguendo il seguente comando da shell
   - jupyter notebook progetto_bid.ipynb
4. Eseguire le prime due celle per installare ed importare le librerie necessarie per il training
5. Eseguire la 3a cella per preparare le variabili per il training
6. Eseguire la 4a cella che lancerà il processo di training (sono 200000 iterazioni, noi ci siamo fermati a 81646)
7. Generati i checkpoint nella cartella /training, eseguire la 5a cella inserendo al posto di '81646' il numero dell'ultimo checkpoint presente nella cartella /training per esportare il nuovo grafo (eseguire questo passo solo se si vuole esportare il modello per utilizzarlo altrove, altrimenti passare allo step successivo)
8. Per valutare il modello, eseguire la 6a cella
   
   
