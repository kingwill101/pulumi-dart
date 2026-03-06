// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionBackendServiceTlsSettingsSubjectAltName {
  /// The SAN specified as a DNS Name.
  final pulumi.Input<String>? dnsName;
  /// The SAN specified as a URI.
  final pulumi.Input<String>? uniformResourceIdentifier;

  /// Creates a new [RegionBackendServiceTlsSettingsSubjectAltName].
  /// [dnsName] The SAN specified as a DNS Name.
  /// [uniformResourceIdentifier] The SAN specified as a URI.
  const RegionBackendServiceTlsSettingsSubjectAltName({
    this.dnsName,
    this.uniformResourceIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsName': ?dnsName,
      'uniformResourceIdentifier': ?uniformResourceIdentifier,
    };
  }

  factory RegionBackendServiceTlsSettingsSubjectAltName.fromMap(Map<String, dynamic> map) {
    return RegionBackendServiceTlsSettingsSubjectAltName(
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uniformResourceIdentifier: (() { final guardedValue = map['uniformResourceIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

