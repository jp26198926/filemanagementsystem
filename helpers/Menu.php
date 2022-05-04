<?php
/**
 * Menu Items
 * All Project Menu
 * @category  Menu List
 */

class Menu{
	
	
			public static $navbartopleft = array(
		array(
			'path' => 'home', 
			'label' => 'Home', 
			'icon' => '<i class="icon-home "></i>'
		),
		
		array(
			'path' => 'files', 
			'label' => 'Files', 
			'icon' => '<i class="icon-docs "></i>'
		),
		
		array(
			'path' => 'users', 
			'label' => 'Administration', 
			'icon' => '<i class="icon-settings "></i>','submenu' => array(
		array(
			'path' => 'users', 
			'label' => 'Users', 
			'icon' => '<i class="icon-user "></i>'
		),
		
		array(
			'path' => 'role_permissions', 
			'label' => 'Role Permissions', 
			'icon' => '<i class="icon-login "></i>'
		),
		
		array(
			'path' => 'roles', 
			'label' => 'Roles', 
			'icon' => '<i class="icon-tag "></i>'
		),
		
		array(
			'path' => 'app_logs', 
			'label' => 'App Logs', 
			'icon' => '<i class="icon-menu "></i>'
		)
	)
		)
	);
		
	
	
}