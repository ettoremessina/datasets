# Synthetic Words

This dataset contains audio files that reproduce the pronunciation of 20 English words got using synthetic voices available on the Mac via the command **say**.
The audio files are in wav format and are sampled at 22050 Hz mono; for each word there are 325 wav files obtained with 25 different voices performed at different speeds.

The files are collected in two tar.gz archives (10 words for each archive) freely downloadable; the repository also contains a script to unzip them and a script
if you want to regenerate (on a Mac) the dataset, and you are allowed to change the words, voices and speeds.

Please visit [here](https://computationalmindset.com/en/datasets/synthetic-words-dataset.html) for details about this dataset.

## Manifest

- [synthetic-words-01.tar.gz](./synthetic-words-01.tar.gz): it is a tar.gz file that contains the English pronunciation of the following 10 words: cancel, copy, cut, edit, ok, paste, redo, save, select, undo.
- [synthetic-words-02.tar.gz](./synthetic-words-02.tar.gz): it is a tar.gz file that contains the English pronunciation of the following 10 words: close, exit, find, fist, last, next, open, previous, replace, run.
- [decompress.sh](./decompress.sh): it is a shell script to uncompress the two tar.gz files.
- [regenerate_dataset_only_for_mac/gen-synthetic-words.sh](./regenerate_dataset_only_for_mac/gen-synthetic-words.sh): it is a shell script (designed to run on a mac) in order to regenerate the whole dataset.
