// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTemplateWorkloadIdentityConfig {
  /// The Revision's SPIFFE workload identity. Enables provisioning of SPIFFE workload certificates.
  final pulumi.Input<String?>? identity;
  /// Controls whether an instance receives a managed workload identity (MWLID) certificate.
  /// Defaults to true when `identityType` is `IDENTITY_TYPE_AGENT_IDENTITY`.
  final pulumi.Input<bool?>? identityCertificateEnabled;
  /// The type of identity to use. `IDENTITY_TYPE_AGENT_IDENTITY` assigns a system-managed agent identity and
  /// is required when the Service's `functionalType` is `FUNCTIONAL_TYPE_AGENT`. Once set, this field
  /// cannot be changed or unset.
  /// Possible values are: `IDENTITY_TYPE_SERVICE_ACCOUNT`, `IDENTITY_TYPE_WORKLOAD_IDENTITY`, `IDENTITY_TYPE_AGENT_IDENTITY`.
  final pulumi.Input<String?>? identityType;

  /// Creates a new [ServiceTemplateWorkloadIdentityConfig].
  /// [identity] The Revision's SPIFFE workload identity. Enables provisioning of SPIFFE workload certificates.
  /// [identityCertificateEnabled] Controls whether an instance receives a managed workload identity (MWLID) certificate.
  /// [identityType] The type of identity to use. `IDENTITY_TYPE_AGENT_IDENTITY` assigns a system-managed agent identity and
  const ServiceTemplateWorkloadIdentityConfig({
    this.identity,
    this.identityCertificateEnabled,
    this.identityType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity,
      'identityCertificateEnabled': ?identityCertificateEnabled,
      'identityType': ?identityType,
    };
  }

  factory ServiceTemplateWorkloadIdentityConfig.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateWorkloadIdentityConfig(
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identityCertificateEnabled: (() { final guardedValue = map['identityCertificateEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      identityType: (() { final guardedValue = map['identityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
