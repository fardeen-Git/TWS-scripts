#!/bin/bash

function take_backup_of_scripts_folder
{
    src_dir=/home/fardeen/Desktop/scripts
    tgt_dir=/home/fardeen/Desktop/Backup-Folder/scripts_backup

    current_timestamp=$(date "+%d-%m-%Y_%H-%M-%S")

    final_file=$tgt_dir/scripts-backup_$current_timestamp.tgz

    tar czf $final_file -C $src_dir .
}
function take_backup_of_shellscripting_TWS_folder
{
    src_dir=/home/fardeen/Desktop/shellscripting_TWS
    tgt_dir=/home/fardeen/Desktop/Backup-Folder/shellscripting_TWS_backup

    current_timestamp=$(date "+%d-%m-%Y_%H-%M-%S")

    final_file=$tgt_dir/shellscripting-backup_$current_timestamp.tgz

    tar czf $final_file -C $src_dir .
}
current_timestamp=$(date "+%d-%m-%Y_%H-%M-%S")
echo "Taking backup for current timestamp:" $current_timestamp
take_backup_of_scripts_folder
take_backup_of_shellscripting_TWS_folder
echo "Backup Completed..."


