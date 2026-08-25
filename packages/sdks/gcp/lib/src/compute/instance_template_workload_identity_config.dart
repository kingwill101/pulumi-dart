// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceTemplateWorkloadIdentityConfig {
  /// Identity SPIFFE id.
  final pulumi.Input<String?>? identity;
  /// Specifies whether identity certificates are enabled.
  final pulumi.Input<bool?>? identityCertificateEnabled;

  /// Creates a new [InstanceTemplateWorkloadIdentityConfig].
  /// [identity] Identity SPIFFE id.
  /// [identityCertificateEnabled] Specifies whether identity certificates are enabled.
  const InstanceTemplateWorkloadIdentityConfig({
    this.identity,
    this.identityCertificateEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity,
      'identityCertificateEnabled': ?identityCertificateEnabled,
    };
  }

  factory InstanceTemplateWorkloadIdentityConfig.fromMap(Map<String, dynamic> map) {
    return InstanceTemplateWorkloadIdentityConfig(
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identityCertificateEnabled: (() { final guardedValue = map['identityCertificateEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
