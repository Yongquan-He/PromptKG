<div align="center">
    <img src="https://github.com/zjunlp/PromptKG/blob/main/resources/lambda_logo.png" width="550px">
    <p> <b>
        A Library and BenchmArk for Pre-trained Language Model-Based KnowleDge GrAph Embeddings.</b>
    </p>
</div>


## Quick Start

### Installation

**Step1** Download the basic code

```bash
git clone --depth 1 https://github.com/zjunlp/PromptKG.git
```

**Step2** Create a virtual environment using `Anaconda` and enter it.<br>


```bash
conda create -n deltakg python=3.8

conda activate deltakg
```
   
**Step3** Enter the task directory and install library

```bash
cd PrompKG/deltaKG

pip install -r requirements.txt
```

#### Step4

Install our preprocessed datasets and put them into the `dataset` folder.

| Dataset (KGC) | Google Drive                                                 | Baidu Cloud |
| ------- | ------------------------------------------------------------ | ----------- |
| WN18RR  | [google drive](https://drive.google.com/drive/folders/1k5mT3d7fldVSSyAYH5KWv3_BI3B2-BXJ?usp=sharing) |  [baidu drive](https://pan.baidu.com/s/1bFmCWfuY1FcGjGF26UHZrg) `axo7`   |
|FB15k-237| [google drive](https://drive.google.com/drive/folders/1aNkuAIQeFOfN4B04xnBOzxhMZKNMxoBH?usp=sharing) |   [baidu drive](https://pan.baidu.com/s/1DK0abYqfvtAPamlLULX4BQ)  `ju9t`            |
| MetaQA  | [google drive](https://drive.google.com/drive/folders/1q4kph9nd4ADjvkPIZvAwYbqza7o7DFt9?usp=sharing) |  [baidu drive](https://pan.baidu.com/s/1AYnfjDAM7z8G3QeEqHTKhg) `hzc9`           |
| KG20C   | [google drive](https://drive.google.com/drive/folders/1AJCRYiNJUFc7inwvrvarwK2hbZEyDALE?usp=sharing) |  [baidu drive](https://pan.baidu.com/s/18pqe1Zz2iT9vY7v5YadUSQ)  `stnh`           |






### Run your first experiment

We provide four tasks in our toolkit as Knowledgeg Graph Completion (KGC), Question Answering (QA), Recomandation (REC) and LAnguage Model Analysis (LAMA).

* `KGC` is our basic task to the knowledge graph embedding and evaluate the ability of the models.
** You can run the script under `kgc` folder to train the model and get the KG embeddings (take `simkgc` as example).
    ```shell
    bash ./scripts/kgc/simkgc.sh
    ```
    
* For `QA` task, you can run the script files under `metaqa`.
** We suggest you use generative model to solve the `QA` task as below:
    ```shell
    bash ./scripts/metaqa/run.sh
    ```
* For `REC` task, you need to firstly get the KG embeddings and then train the rec system models.
** use two-stage scripts below:
    ```shell
    bash ./scripts/kgrec/pretrain_item.sh
    bash ./scripts/kgrec/ml20m.sh
    ```

*  For `LAMA` task, you can use the files under `lama`.
**  We provide `BERT` and `RoBERTa` PLMs to evaluate their performance and with our KG embeddings (plet).
    ```shell
    bash ./scripts/lama/lama_roberta.sh
    ```


### Implemented Models
| Models |Knowledge Graph Completion|Question Answering|Recomandation|LAnguage Model Analysis|
| -----------: | :------: | :------: | :------: |:------: |
| KG-BERT |  ✔  |  ✔  | | |
| GenKGC |  ✔  |      | | |
|   KGT5 |  ✔   |  ✔  | | | 
| kNN-KGE |  ✔   |    | ✔  |✔ |
| SimKGC |  ✔   |      | | | 

### Framework

<div align="center">
    <img src="https://github.com/zjunlp/PromptKG/blob/main/resources/framework-1.png" width="550px">
</div>

### Process on your own data

For each knowledge graph, we have 5 files.
* `train.tsv`, `dev.tsv`, `test.tsv`, list as (h, r, t) for entity id and relation id (start from 0).
* `entity2text.txt`, as (entity_id, entity description).
* `relation2text.txt` , as (relation_id, relation description).

### For downstream tasks

<div align="center">
    <img src="https://github.com/zjunlp/PromptKG/blob/main/resources/inspire-1.png" width="350px">
</div>


## TODO 

- [ ] add essemble-model for using
- [ ] add more kgc models based on pretrained language models
- [ ] add soft prompt in base model.
- [ ] add more dataset with the same format.

### Contact Information

For help or issues using the models, please submit a GitHub issue.

# Citation
If you use the code, please cite the following paper:


```bibtex
@article{DBLP:journals/corr/abs-2210-00305,
  author    = {Xin Xie and
               Zhoubo Li and
               Xiaohan Wang and
               Shumin Deng and
               Feiyu Xiong and
               Huajun Chen and
               Ningyu Zhang},
  title     = {PromptKG: {A} Prompt Learning Framework for Knowledge Graph Representation
               Learning and Application},
  journal   = {CoRR},
  volume    = {abs/2210.00305},
  year      = {2022},
  url       = {https://doi.org/10.48550/arXiv.2210.00305},
  doi       = {10.48550/arXiv.2210.00305},
  eprinttype = {arXiv},
  eprint    = {2210.00305},
  timestamp = {Fri, 07 Oct 2022 15:24:59 +0200},
  biburl    = {https://dblp.org/rec/journals/corr/abs-2210-00305.bib},
  bibsource = {dblp computer science bibliography, https://dblp.org}
}
```

## Other KG Representation Open-Source Projects

- [OpenKE](https://github.com/thunlp/OpenKE)
- [LibKGE](https://github.com/uma-pi1/kge)
- [CogKGE](https://github.com/jinzhuoran/CogKGE)
- [PyKEEN](https://github.com/pykeen/pykeen)
- [GraphVite](https://graphvite.io/)
- [Pykg2vec](https://github.com/Sujit-O/pykg2vec)
- [PyG](https://github.com/pyg-team/pytorch_geometric)
- [CogDL](https://github.com/THUDM/cogdl)
- [NeuralKG](https://github.com/zjukg/NeuralKG)
- [KGxBoard](https://github.com/neulab/KGxBoard)