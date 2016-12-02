// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require react
//= require react_ujs
//= require scaffold
//= require components
//= require cocoon
//= require profile
//= require_tree .
//= require_tree ../../../vendor/assets/javascripts/.

$(document).ready(function(){
	$('#product_date_of_manufacture, #job_date_of_shipment').datepicker({
		dateFormat: 'yy-mm-dd'
	});
});
