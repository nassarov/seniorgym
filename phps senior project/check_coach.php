<?php
include 'conn.php';

$data = json_decode(file_get_contents('php://input'), true);

if (json_last_error() !== JSON_ERROR_NONE) {
    echo json_encode(array('error' => 'Invalid JSON'));
    exit();
}

$userID = $data['userID'] ?? '';

if (empty($userID)) {
    echo json_encode(array('error' => 'User ID is missing'));
    exit();
}

$query = "SELECT coachID FROM registeredcoach WHERE userID = ? ORDER BY date DESC LIMIT 1";
$stmt = $conn->prepare($query);
$stmt->bind_param('i', $userID);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    echo json_encode(array('coachID' => $row['coachID']));
} else {
    echo json_encode(array('coachID' => null));
}

$stmt->close();
$conn->close();
?>
