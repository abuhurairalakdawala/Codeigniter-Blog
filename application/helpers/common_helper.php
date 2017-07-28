<?php

function successMessage($text)
{
	return '<div role="alert" class="alert alert-success alert-dismissible"><button aria-label="Close" data-dismiss="alert" class="close" type="button"><span aria-hidden="true">×</span></button><b>'.$text.'</b></div>';
}

function xss_safe($text)
{
	return htmlentities($text, ENT_QUOTES, 'UTF-8');
}

function strip_blog_list($text)
{
	return strip_tags($text);
}

function strip_blog_item($text)
{
	return strip_tags($text, '<p><a><blockquote><b><strong><u></i><sub><sup><s><img><h1><h2><h3><h4><h5><h6><pre><div><span><address>');
}