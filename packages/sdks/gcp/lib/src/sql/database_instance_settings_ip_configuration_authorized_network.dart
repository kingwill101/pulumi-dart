// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseInstanceSettingsIpConfigurationAuthorizedNetwork {
  /// The [RFC 3339](https://tools.ietf.org/html/rfc3339)
  /// formatted date time string indicating when this whitelist expires.
  final pulumi.Input<String>? expirationTime;
  /// A name for this whitelist entry.
  final pulumi.Input<String>? name;
  /// A CIDR notation IPv4 or IPv6 address that is allowed to
  /// access this instance. Must be set even if other two attributes are not for
  /// the whitelist to become active.
  final pulumi.Input<String> value;

  /// Creates a new [DatabaseInstanceSettingsIpConfigurationAuthorizedNetwork].
  /// [expirationTime] The [RFC 3339](https://tools.ietf.org/html/rfc3339)
  /// [name] A name for this whitelist entry.
  /// [value] A CIDR notation IPv4 or IPv6 address that is allowed to
  DatabaseInstanceSettingsIpConfigurationAuthorizedNetwork({
    this.expirationTime,
    this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationTime': ?expirationTime,
      'name': ?name,
      'value': value,
    };
  }

  factory DatabaseInstanceSettingsIpConfigurationAuthorizedNetwork.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceSettingsIpConfigurationAuthorizedNetwork(
      expirationTime: map['expirationTime'] == null ? null : (map['expirationTime'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

