<?php

// cek akses session admin
function akses_admin(){
	if (isset($_SESSION['admin'])) {
		return TRUE;
	}
}

// cek akses session rt
function akses_rw(){
	if (isset($_SESSION['rw'])) {
		return TRUE;
	}
}

function akses($akses)
{
	if (isset($_SESSION[$akses])) {
		return TRUE;
	}
}

function hak_akses(){
	if (akses_admin() || akses_rw()) {
		return TRUE;
	} else {
		return FALSE;
	}
}

function rtrw($data)
{
	$result = $data;
	if ($data >= 1 AND $data < 10) {
		$result = '00'.$data;
	} else {
		$result = '0'.$data;
	}
	return $result;
}

function form_check_radio($value,$db_value)
{
    $result = null;
    if ($value == $db_value)
        $result = ' checked ';
    return $result; 
}

function form_check_checkbox($value,$db_value)
{
    $result = null;
    $db_value = explode(',', $db_value);
    for ($i=0; $i < count($db_value); $i++) { 
	    if ($value == $db_value[$i])
	        $result = ' checked ';
    }
    return $result; 
}

function form_check_option($value,$db_value)
{
  $result = null;
  if ($value == $db_value)
    $result = ' selected ';
  return $result; 
}