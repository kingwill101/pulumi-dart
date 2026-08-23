// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionInstanceTemplateWorkloadIdentityConfig {
  /// Identity SPIFFE id.
  final pulumi.Input<String> identity;
  /// Specifies whether identity certificates are enabled.
  final pulumi.Input<bool> identityCertificateEnabled;

  /// Creates a new [GetRegionInstanceTemplateWorkloadIdentityConfig].
  /// [identity] Identity SPIFFE id.
  /// [identityCertificateEnabled] Specifies whether identity certificates are enabled.
  const GetRegionInstanceTemplateWorkloadIdentityConfig({
    required this.identity,
    required this.identityCertificateEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': identity,
      'identityCertificateEnabled': identityCertificateEnabled,
    };
  }

  factory GetRegionInstanceTemplateWorkloadIdentityConfig.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceTemplateWorkloadIdentityConfig(
      identity: pulumi.Input.fromValue(map['identity'] as String),
      identityCertificateEnabled: pulumi.Input.fromValue(map['identityCertificateEnabled'] as bool),
    );
  }
}
