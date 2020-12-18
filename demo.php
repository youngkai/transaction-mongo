<?php
$manager = new MongoDB\Driver\Manager("mongodb://127.0.0.1:27011");
$bulk = new \MongoDB\Driver\BulkWrite();
$session = $manager->startSession();
$session->startTransaction([]);
try {
    $bulk->insert(['name' => 'JetWu5', 'age' => 26]);
    $manager->executeBulkWrite('abc.abc', $bulk, [
        'session'   =>  $session
    ]);
    $session->commitTransaction();
    echo 'success';
}catch (Exception $e) {
    echo 'fail';
    $session->abortTransaction();
}
$session->endSession();
