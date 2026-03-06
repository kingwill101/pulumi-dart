// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProfileHttpHttpStrictTransportSecurity {
  /// The Include Subdomains setting applies the HSTS policy to the HSTS host and its subdomains. The default is "enabled". If no string is specified during Create, then default value will be assigned by BigIp. If include_subdomains is commented (or not passed) during the update call, then no changes would be applied and previous value will persist. In order to put default value, we need to pass "enabled" explicitly.
  final pulumi.Input<String>? includeSubdomains;
  /// The Maximum Age value specifies the length of time, in seconds, that HSTS functionality requests that clients only use HTTPS to connect to the current host and any subdomains of the current host's domain name.  The default is 16070400 seconds. If no value is specified during Create, then default value will be assigned by BigIp. If maximum_age is commented (or not passed) during the update call, then no changes would be applied and previous value will persist. In order to put default value , we need to pass 16070400 explicitly.
  final pulumi.Input<int>? maximumAge;
  /// The Mode setting enables and disables HSTS functionality within the HTTP profile. The default is "disabled". If no string is specified during Create, then default value will be assigned by BigIp. If mode is commented (or not passed) during the update call, then no changes would be applied and previous value will persist. In order to put default value, we need to pass "disabled" explicitly.
  final pulumi.Input<String>? mode;
  /// An HSTS preload list is a list of domains built into a web browser. When you enable the Preload setting, the domain for the web site that this HTTP profile is associated with is submitted for inclusion in the browser's preload list. The default is "disabled". If no string is specified during Create, then default value will be assigned by BigIp. If preload is commented (or not passed) during the update call, then no changes would be applied and previous value will persist. In order to put default value, we need to pass "disabled" explicitly.
  final pulumi.Input<String>? preload;

  /// Creates a new [ProfileHttpHttpStrictTransportSecurity].
  /// [includeSubdomains] The Include Subdomains setting applies the HSTS policy to the HSTS host and its subdomains. The default is "enabled". If no string is specified during Create, then default value will be assigned by BigIp. If include_subdomains is commented (or not passed) during the update call, then no changes would be applied and previous value will persist. In order to put default value, we need to pass "enabled" explicitly.
  /// [maximumAge] The Maximum Age value specifies the length of time, in seconds, that HSTS functionality requests that clients only use HTTPS to connect to the current host and any subdomains of the current host's domain name.  The default is 16070400 seconds. If no value is specified during Create, then default value will be assigned by BigIp. If maximum_age is commented (or not passed) during the update call, then no changes would be applied and previous value will persist. In order to put default value , we need to pass 16070400 explicitly.
  /// [mode] The Mode setting enables and disables HSTS functionality within the HTTP profile. The default is "disabled". If no string is specified during Create, then default value will be assigned by BigIp. If mode is commented (or not passed) during the update call, then no changes would be applied and previous value will persist. In order to put default value, we need to pass "disabled" explicitly.
  /// [preload] An HSTS preload list is a list of domains built into a web browser. When you enable the Preload setting, the domain for the web site that this HTTP profile is associated with is submitted for inclusion in the browser's preload list. The default is "disabled". If no string is specified during Create, then default value will be assigned by BigIp. If preload is commented (or not passed) during the update call, then no changes would be applied and previous value will persist. In order to put default value, we need to pass "disabled" explicitly.
  const ProfileHttpHttpStrictTransportSecurity({
    this.includeSubdomains,
    this.maximumAge,
    this.mode,
    this.preload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeSubdomains': ?includeSubdomains,
      'maximumAge': ?maximumAge,
      'mode': ?mode,
      'preload': ?preload,
    };
  }

  factory ProfileHttpHttpStrictTransportSecurity.fromMap(Map<String, dynamic> map) {
    return ProfileHttpHttpStrictTransportSecurity(
      includeSubdomains: (() { final guardedValue = map['includeSubdomains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maximumAge: (() { final guardedValue = map['maximumAge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preload: (() { final guardedValue = map['preload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

