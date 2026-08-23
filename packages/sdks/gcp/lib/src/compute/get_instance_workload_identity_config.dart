// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceWorkloadIdentityConfig {
  /// Identity SPIFFE id.
  final pulumi.Input<String> identity;
  /// Specifies whether identity certificates are enabled.
  final pulumi.Input<bool> identityCertificateEnabled;

  /// Creates a new [GetInstanceWorkloadIdentityConfig].
  /// [identity] Identity SPIFFE id.
  /// [identityCertificateEnabled] Specifies whether identity certificates are enabled.
  const GetInstanceWorkloadIdentityConfig({
    required this.identity,
    required this.identityCertificateEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': identity,
      'identityCertificateEnabled': identityCertificateEnabled,
    };
  }

  factory GetInstanceWorkloadIdentityConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceWorkloadIdentityConfig(
      identity: pulumi.Input.fromValue(map['identity'] as String),
      identityCertificateEnabled: pulumi.Input.fromValue(map['identityCertificateEnabled'] as bool),
    );
  }
}
