#!/bin/bash

read -p 'IP Address of your realm: ' -r
realmAddress=$REPLY


mysql -u root -p << EOF
UPDATE 'realmlist'
SET `address` = "$realmAddress"
WHERE `realmlist`.`id` = 1;
EOF