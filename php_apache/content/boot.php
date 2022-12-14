<?php


function db(): mysqli
{
    static $mysqli;

    if (!$mysqli) {
        #echo getenv("HOST"), getenv("USERNAME"), getenv("PASSWORD"), getenv("NAME");
        $mysqli = new mysqli(getenv("HOST"), getenv("USERNAME"), getenv("PASSWORD"), getenv("NAME"));
    }

    return $mysqli;
}


function flash(?string $message = null)
{
    if ($message) {
        $_SESSION['flash'] = $message;
    } else {
        if (!empty($_SESSION['flash'])) { ?>
          <div class="alert alert-danger mb-3">
              <?=$_SESSION['flash']?>
          </div>
        <?php }
        unset($_SESSION['flash']);
    }
}
?>