<?php  // Moodle configuration file

function _env($key, $default='') {
    return getenv($key) ?? $default;
}

unset($CFG);
global $CFG;
$CFG = new stdClass();

$CFG->dbtype    = _env('MOODLE_DOCKER_DBTYPE', 'mariadb');
$CFG->dblibrary = 'native';
$CFG->dbhost    = _env('MOODLE_DOCKER_DBHOST', 'db');
$CFG->dbname    = _env('MOODLE_DOCKER_DBNAME', 'ava_base');
$CFG->dbuser    = _env('MOODLE_DOCKER_DBUSER', 'ava_user');
$CFG->dbpass    = _env('MOODLE_DOCKER_DBPASS', 'ava_pass');
$CFG->prefix    = 'mdl_';
$CFG->dboptions = ['dbcollation' => _env('MOODLE_DOCKER_DBCOLLATION')];

$CFG->wwwroot   = _env('MOODLE_DOCKER_AVA_HOST', 'http://localhost/ava');
// $port = getenv('MOODLE_DOCKER_WEB_PORT');
// if (!empty($port)) {
//     $CFG->wwwroot .= ":{$port}";
// }
$CFG->dataroot  = '/var/www/moodledata';
$CFG->admin     = 'admin';
$CFG->directorypermissions = 0777;
$CFG->smtphosts = 'mailhog:1025';

// Debug options - possible to be controlled by flag in future..
// $CFG->debug = (E_ALL | E_STRICT); // DEBUG_DEVELOPER
// $CFG->debugdisplay = 1;
// $CFG->debugstringids = 1; // Add strings=1 to url to get string ids.
// $CFG->perfdebug = 15;
// $CFG->debugpageinfo = 1;
// $CFG->allowthemechangeonurl = 1;
// $CFG->passwordpolicy = 0;

$CFG->phpunit_dataroot  = '/var/www/phpunitdata';
$CFG->phpunit_prefix = 't_';
define('TEST_EXTERNAL_FILES_HTTP_URL', 'http://exttests');

require_once(__DIR__ . '/lib/setup.php');
