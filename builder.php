<?php

$sql = "SELECT * FROM comment WHERE post_id = 1;";

$count = 0;

$tree = [];

foreach ($dbn->query($sql) as $row)
{
    $idCurrent = $row['id'];
    $idParent  = $row['parent_id'];

    $tree[$idParent]['child_list'][$idCurrent] = [
        'user_id' => $row['user_id'],
        'text'    => $row['text'],
    ];

    $tree[$idCurrent] = &$tree[$idParent]['child_list'][$idCurrent];
}

$parent = array_shift($tree);

var_dump($parent['child_list']);