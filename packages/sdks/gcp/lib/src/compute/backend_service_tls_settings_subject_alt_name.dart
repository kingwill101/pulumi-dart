// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackendServiceTlsSettingsSubjectAltName {
  /// The SAN specified as a DNS Name.
  final pulumi.Input<String>? dnsName;

  /// The SAN specified as a URI.
  final pulumi.Input<String>? uniformResourceIdentifier;

  /// Creates a new [BackendServiceTlsSettingsSubjectAltName].
  /// [dnsName] The SAN specified as a DNS Name.
  /// [uniformResourceIdentifier] The SAN specified as a URI.
  BackendServiceTlsSettingsSubjectAltName({
    this.dnsName,
    this.uniformResourceIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsName': ?dnsName,
      'uniformResourceIdentifier': ?uniformResourceIdentifier,
    };
  }

  factory BackendServiceTlsSettingsSubjectAltName.fromMap(
    Map<String, dynamic> map,
  ) {
    return BackendServiceTlsSettingsSubjectAltName(
      dnsName: (() {
        final guardedValue = map['dnsName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      uniformResourceIdentifier: (() {
        final guardedValue = map['uniformResourceIdentifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
