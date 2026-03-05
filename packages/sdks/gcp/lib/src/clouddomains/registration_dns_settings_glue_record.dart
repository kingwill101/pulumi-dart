// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegistrationDnsSettingsGlueRecord {
  /// Required. Domain name of the host in Punycode format.
  final pulumi.Input<String> hostName;
  /// List of IPv4 addresses corresponding to this host in the standard decimal format (e.g. 198.51.100.1).
  /// At least one of ipv4_address and ipv6_address must be set.
  final pulumi.Input<List<String>>? ipv4Addresses;
  /// List of IPv4 addresses corresponding to this host in the standard decimal format (e.g. 198.51.100.1).
  /// At least one of ipv4_address and ipv6_address must be set.
  final pulumi.Input<List<String>>? ipv6Addresses;

  /// Creates a new [RegistrationDnsSettingsGlueRecord].
  /// [hostName] Required. Domain name of the host in Punycode format.
  /// [ipv4Addresses] List of IPv4 addresses corresponding to this host in the standard decimal format (e.g. 198.51.100.1).
  /// [ipv6Addresses] List of IPv4 addresses corresponding to this host in the standard decimal format (e.g. 198.51.100.1).
  RegistrationDnsSettingsGlueRecord({
    required this.hostName,
    this.ipv4Addresses,
    this.ipv6Addresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostName': hostName,
      'ipv4Addresses': ?ipv4Addresses,
      'ipv6Addresses': ?ipv6Addresses,
    };
  }

  factory RegistrationDnsSettingsGlueRecord.fromMap(Map<String, dynamic> map) {
    return RegistrationDnsSettingsGlueRecord(
      hostName: pulumi.Input.fromValue(map['hostName'] as String),
      ipv4Addresses: (() { final guardedValue = map['ipv4Addresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipv6Addresses: (() { final guardedValue = map['ipv6Addresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

