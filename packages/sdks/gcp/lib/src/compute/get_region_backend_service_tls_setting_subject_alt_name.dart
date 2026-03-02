// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionBackendServiceTlsSettingSubjectAltName {
  /// The SAN specified as a DNS Name.
  final pulumi.Input<String> dnsName;
  /// The SAN specified as a URI.
  final pulumi.Input<String> uniformResourceIdentifier;

  /// Creates a new [GetRegionBackendServiceTlsSettingSubjectAltName].
  /// [dnsName] The SAN specified as a DNS Name.
  /// [uniformResourceIdentifier] The SAN specified as a URI.
  GetRegionBackendServiceTlsSettingSubjectAltName({
    required this.dnsName,
    required this.uniformResourceIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsName': dnsName,
      'uniformResourceIdentifier': uniformResourceIdentifier,
    };
  }

  factory GetRegionBackendServiceTlsSettingSubjectAltName.fromMap(Map<String, dynamic> map) {
    return GetRegionBackendServiceTlsSettingSubjectAltName(
      dnsName: (map['dnsName'] as String).input(),
      uniformResourceIdentifier: (map['uniformResourceIdentifier'] as String).input(),
    );
  }
}

