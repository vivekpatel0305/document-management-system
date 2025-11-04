<?php 

require_once("include/connection.php");

if (isset($_GET['file_id'])) {
    $id = mysqli_real_escape_string($conn, $_GET['file_id']);

    // Fetch file to preview from database
    $sql = "SELECT * FROM upload_files WHERE ID = $id";
    $result = mysqli_query($conn, $sql);

    $file = mysqli_fetch_assoc($result);
    $filepath = '../uploads/' . basename($file['NAME']); // Use basename to avoid directory traversal

    if (file_exists($filepath)) {
        // Get the file extension to determine the preview method
        $fileExtension = strtolower(pathinfo($filepath, PATHINFO_EXTENSION));
        $allowedExtensions = ['pdf', 'jpg', 'jpeg', 'png'];

        if (in_array($fileExtension, $allowedExtensions)) {
            // Send file headers to preview
            $fileinfo = finfo_open(FILEINFO_MIME_TYPE);
            $mimeType = finfo_file($fileinfo, $filepath);
            finfo_close($fileinfo);

            header('Content-Description: File Transfer');
            header('Content-Type: ' . $mimeType);
            header('Content-Disposition: inline; filename=' . basename($filepath));
            header('Expires: 0');
            header('Cache-Control: must-revalidate');
            header('Pragma: public');
            header('Content-Length: ' . filesize($filepath));
            readfile($filepath);
        } else {
            // If the file type is not supported for inline preview, show an alert using JavaScript
            echo "<script>
                if (confirm('This file type must be downloaded for preview. Do you want to download it?')) {
                    window.location.href = 'downloads.php?file_id=$id';
                } else {
                    window.location.href = 'add_document.php'; // Redirect to home page
                }
            </script>";
        }
        
        exit;
    } else {
        echo "File not found.";
    }
} else {
    echo "No file ID provided.";
}

?>
