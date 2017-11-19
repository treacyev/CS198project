$(document).ready(function(){

  $("#fs").click(function(){
    $("#fsmodal").modal('show');
  });

  $("#rel").click(function(){
    $("#relmodal").modal('show');
  });

  $("#op").click(function(){
    $("#opmodal").modal('show');
  });

  $("#pe").click(function(){
    $("#pemodal").modal('show');
  });

  $("#comp").click(function(){
    $("#compmodal").modal('show');
  });

  $("#sec").click(function(){
    $("#secmodal").modal('show');
  });

  $("#trans").click(function(){
    $("#transmodal").modal('show');
  });

  $("#maint").click(function(){
    $("#maintmodal").modal('show');
  });

});

var arr = ["Very strongly prefers", "Strongly prefers", "Prefers", "Slightly prefers", "Equally prefers", "Slightly prefers", "Prefers", "Strongly prefers", "Very strongly prefers"];

function fr(val) {
	var chara = "";
	if (val < 5){
		chara = " Reliability";
	}
	else if (val > 5){
		chara = " Functional Suitability";
	}
	else{ // val == 5
		chara = " Reliability and Functional Suitability";
	}
    document.getElementById("fr_output_id").innerHTML = arr[val - 1] + chara;
}

function fp(val) {
	var chara = "";
	if (val < 5){
		chara = " Performance Efficiency";
	}
	else if (val > 5){
		chara = " Functional Suitability";
	}
	else{ // val == 5
		chara = " Performance Efficiency and Functional Suitability";
	}
    document.getElementById("fp_output_id").innerHTML = arr[val - 1] + chara;
}

function fo(val) {
	var chara = "";
	if (val < 5){
		chara = " Operability";
	}
	else if (val > 5){
		chara = " Functional Suitability";
	}
	else{ // val == 5
		chara = " Operability and Functional Suitability";
	}
    document.getElementById("fo_output_id").innerHTML = arr[val - 1] + chara;
}

function fs(val) {
	var chara = "";
	if (val < 5){
		chara = " Security";
	}
	else if (val > 5){
		chara = " Functional Suitability";
	}
	else{ // val == 5
		chara = " Security and Functional Suitability";
	}
    document.getElementById("fs_output_id").innerHTML = arr[val - 1] + chara;
}

function fc(val) {
	var chara = "";
	if (val < 5){
		chara = " Compatibility";
	}
	else if (val > 5){
		chara = " Functional Suitability";
	}
	else{ // val == 5
		chara = " Compatibility and Functional Suitability";
	}
    document.getElementById("fc_output_id").innerHTML = arr[val - 1] + chara;
}

function fm(val) {
	var chara = "";
	if (val < 5){
		chara = " Maintainability";
	}
	else if (val > 5){
		chara = " Functional Suitability";
	}
	else{ // val == 5
		chara = " Maintainability and Functional Suitability";
	}
    document.getElementById("fm_output_id").innerHTML = arr[val - 1] + chara;
}

function ft(val) {
	var chara = "";
	if (val < 5){
		chara = " Transferability";
	}
	else if (val > 5){
		chara = " Functional Suitability";
	}
	else{ // val == 5
		chara = " Transferability and Functional Suitability";
	}
    document.getElementById("ft_output_id").innerHTML = arr[val - 1] + chara;
}

function rp(val) {
	var chara = "";
	if (val < 5){
		chara = " Performance Efficiency";
	}
	else if (val > 5){
		chara = " Reliability";
	}
	else{ // val == 5
		chara = " Performance Efficiency and Reliability";
	}
    document.getElementById("rp_output_id").innerHTML = arr[val - 1] + chara;
}

function ro(val) {
	var chara = "";
	if (val < 5){
		chara = " Operability";
	}
	else if (val > 5){
		chara = " Reliability";
	}
	else{ // val == 5
		chara = " Operability and Reliability";
	}
    document.getElementById("ro_output_id").innerHTML = arr[val - 1] + chara;
}

function rs(val) {
	var chara = "";
	if (val < 5){
		chara = " Security";
	}
	else if (val > 5){
		chara = " Reliability";
	}
	else{ // val == 5
		chara = " Security and Reliability";
	}
    document.getElementById("rs_output_id").innerHTML = arr[val - 1] + chara;
}

function rc(val) {
	var chara = "";
	if (val < 5){
		chara = " Compatibility";
	}
	else if (val > 5){
		chara = " Reliability";
	}
	else{ // val == 5
		chara = " Compatibility and Reliability";
	}
    document.getElementById("rc_output_id").innerHTML = arr[val - 1] + chara;
}

function rm(val) {
	var chara = "";
	if (val < 5){
		chara = " Maintainability";
	}
	else if (val > 5){
		chara = " Reliability";
	}
	else{ // val == 5
		chara = " Maintainability and Reliability";
	}
    document.getElementById("rm_output_id").innerHTML = arr[val - 1] + chara;
}

function rt(val) {
	var chara = "";
	if (val < 5){
		chara = " Transferability";
	}
	else if (val > 5){
		chara = " Reliability";
	}
	else{ // val == 5
		chara = " Transferability and Reliability";
	}
    document.getElementById("rt_output_id").innerHTML = arr[val - 1] + chara;
}

function po(val) {
	var chara = "";
	if (val < 5){
		chara = " Operability";
	}
	else if (val > 5){
		chara = " Performance Efficiency";
	}
	else{ // val == 5
		chara = " Operability and Performance Efficiency";
	}
    document.getElementById("po_output_id").innerHTML = arr[val - 1] + chara;
}

function ps(val) {
	var chara = "";
	if (val < 5){
		chara = " Security";
	}
	else if (val > 5){
		chara = " Performance Efficiency";
	}
	else{ // val == 5
		chara = " Security and Performance Efficiency";
	}
    document.getElementById("ps_output_id").innerHTML = arr[val - 1] + chara;
}

function pc(val) {
	var chara = "";
	if (val < 5){
		chara = " Compatibility";
	}
	else if (val > 5){
		chara = " Performance Efficiency";
	}
	else{ // val == 5
		chara = " Compatibility and Performance Efficiency";
	}
    document.getElementById("pc_output_id").innerHTML = arr[val - 1] + chara;
}

function pm(val) {
	var chara = "";
	if (val < 5){
		chara = " Maintainability";
	}
	else if (val > 5){
		chara = " Performance Efficiency";
	}
	else{ // val == 5
		chara = " Maintainability and Performance Efficiency";
	}
    document.getElementById("pm_output_id").innerHTML = arr[val - 1] + chara;
}

function pt(val) {
	var chara = "";
	if (val < 5){
		chara = " Transferability";
	}
	else if (val > 5){
		chara = " Performance Efficiency";
	}
	else{ // val == 5
		chara = " Transferability and Performance Efficiency";
	}
    document.getElementById("pt_output_id").innerHTML = arr[val - 1] + chara;
}

function os(val) {
	var chara = "";
	if (val < 5){
		chara = " Security";
	}
	else if (val > 5){
		chara = " Operability";
	}
	else{ // val == 5
		chara = " Security and Operability";
	}
    document.getElementById("os_output_id").innerHTML = arr[val - 1] + chara;
}

function oc(val) {
	var chara = "";
	if (val < 5){
		chara = " Compatibility";
	}
	else if (val > 5){
		chara = " Operability";
	}
	else{ // val == 5
		chara = " Compatibility and Operability";
	}
    document.getElementById("oc_output_id").innerHTML = arr[val - 1] + chara;
}

function om(val) {
	var chara = "";
	if (val < 5){
		chara = " Maintainability";
	}
	else if (val > 5){
		chara = " Operability";
	}
	else{ // val == 5
		chara = " Maintainability and Operability";
	}
    document.getElementById("om_output_id").innerHTML = arr[val - 1] + chara;
}

function ot(val) {
	var chara = "";
	if (val < 5){
		chara = " Transferability";
	}
	else if (val > 5){
		chara = " Operability";
	}
	else{ // val == 5
		chara = " Transferability and Operability";
	}
    document.getElementById("ot_output_id").innerHTML = arr[val - 1] + chara;
}

function sc(val) {
	var chara = "";
	if (val < 5){
		chara = " Compatibility";
	}
	else if (val > 5){
		chara = " Security";
	}
	else{ // val == 5
		chara = " Compatibility and Security";
	}
    document.getElementById("sc_output_id").innerHTML = arr[val - 1] + chara;
}

function sm(val) {
	var chara = "";
	if (val < 5){
		chara = " Maintainability";
	}
	else if (val > 5){
		chara = " Security";
	}
	else{ // val == 5
		chara = " Maintainability and Security";
	}
    document.getElementById("sm_output_id").innerHTML = arr[val - 1] + chara;
}

function st(val) {
	var chara = "";
	if (val < 5){
		chara = " Transferability";
	}
	else if (val > 5){
		chara = " Security";
	}
	else{ // val == 5
		chara = " Transferability and Security";
	}
    document.getElementById("st_output_id").innerHTML = arr[val - 1] + chara;
}

function cm(val) {
	var chara = "";
	if (val < 5){
		chara = " Maintainability";
	}
	else if (val > 5){
		chara = " Compatibility";
	}
	else{ // val == 5
		chara = " Maintainability and Compatibility";
	}
    document.getElementById("cm_output_id").innerHTML = arr[val - 1] + chara;
}

function ct(val) {
	var chara = "";
	if (val < 5){
		chara = " Transferability";
	}
	else if (val > 5){
		chara = " Compatibility";
	}
	else{ // val == 5
		chara = " Transferability and Compatibility";
	}
    document.getElementById("ct_output_id").innerHTML = arr[val - 1] + chara;
}

function mt(val) {
	var chara = "";
	if (val < 5){
		chara = " Transferability";
	}
	else if (val > 5){
		chara = " Maintainability";
	}
	else{ // val == 5
		chara = " Transferability and Maintainability";
	}
    document.getElementById("mt_output_id").innerHTML = arr[val - 1] + chara;
}

