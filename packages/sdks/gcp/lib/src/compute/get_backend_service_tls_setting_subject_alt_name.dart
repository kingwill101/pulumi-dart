// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBackendServiceTlsSettingSubjectAltName {
  /// The SAN specified as a DNS Name.
  final pulumi.Input<String> dnsName;
  /// The SAN specified as a URI.
  final pulumi.Input<String> uniformResourceIdentifier;

  /// Creates a new [GetBackendServiceTlsSettingSubjectAltName].
  /// [dnsName] The SAN specified as a DNS Name.
  /// [uniformResourceIdentifier] The SAN specified as a URI.
  const GetBackendServiceTlsSettingSubjectAltName({
    required this.dnsName,
    required this.uniformResourceIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsName': dnsName,
      'uniformResourceIdentifier': uniformResourceIdentifier,
    };
  }

  factory GetBackendServiceTlsSettingSubjectAltName.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceTlsSettingSubjectAltName(
      dnsName: pulumi.Input.fromValue(map['dnsName'] as String),
      uniformResourceIdentifier: pulumi.Input.fromValue(map['uniformResourceIdentifier'] as String),
    );
  }
}

