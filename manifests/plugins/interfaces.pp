# handle if_ and if_err_ plugins
class munin::plugins::interfaces inherits munin::plugins::base {

	$ifs = regsubst(split($munin_interfaces, " "), "(.+)", "if_\\1")
	$if_errs = regsubst(split($munin_interfaces, " "), "(.+)", "if_err_\\1")
	plugin {
		$ifs: ensure => "if_";
		$if_errs: ensure => "if_err_";
	}


}
