node default {
    Package { ensure => "installed" }
    package { "git": }

    class { "redis":
        version => '2.6.12',
        redis_max_memory => '50mb',
        redis_bin_dir => '/user/local/bin'
        }
}
