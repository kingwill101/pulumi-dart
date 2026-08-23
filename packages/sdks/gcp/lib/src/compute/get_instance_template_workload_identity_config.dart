// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceTemplateWorkloadIdentityConfig {
  /// Identity SPIFFE id.
  final pulumi.Input<String> identity;
  /// Specifies whether identity certificates are enabled.
  final pulumi.Input<bool> identityCertificateEnabled;

  /// Creates a new [GetInstanceTemplateWorkloadIdentityConfig].
  /// [identity] Identity SPIFFE id.
  /// [identityCertificateEnabled] Specifies whether identity certificates are enabled.
  const GetInstanceTemplateWorkloadIdentityConfig({
    required this.identity,
    required this.identityCertificateEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': identity,
      'identityCertificateEnabled': identityCertificateEnabled,
    };
  }

  factory GetInstanceTemplateWorkloadIdentityConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceTemplateWorkloadIdentityConfig(
      identity: pulumi.Input.fromValue(map['identity'] as String),
      identityCertificateEnabled: pulumi.Input.fromValue(map['identityCertificateEnabled'] as bool),
    );
  }
}
