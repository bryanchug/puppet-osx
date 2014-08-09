# Public: Set location for screenshots
class osx::screenshots($path = "/Users/${::boxen_user}/screenshots") {
  boxen::osx_defaults { 'Screenshots default location':
    user   => $::boxen_user,
    ensure => present,
    domain => 'com.apple.screencapture',
    key    => 'location',
    value  => $path
  }
}
