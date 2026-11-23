// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceTemplateWorkloadIdentityConfig {
  /// The Revision's SPIFFE workload identity. Enables provisioning of SPIFFE workload certificates.
  final pulumi.Input<String> identity;
  /// Controls whether an instance receives a managed workload identity (MWLID) certificate.
  /// Defaults to true when 'identity_type' is 'IDENTITY_TYPE_AGENT_IDENTITY'.
  final pulumi.Input<bool> identityCertificateEnabled;
  /// The type of identity to use. 'IDENTITY_TYPE_AGENT_IDENTITY' assigns a system-managed agent identity and
  /// is required when the Service's 'functional_type' is 'FUNCTIONAL_TYPE_AGENT'. Once set, this field
  /// cannot be changed or unset. Possible values: ["IDENTITY_TYPE_SERVICE_ACCOUNT", "IDENTITY_TYPE_WORKLOAD_IDENTITY", "IDENTITY_TYPE_AGENT_IDENTITY"]
  final pulumi.Input<String> identityType;

  /// Creates a new [GetServiceTemplateWorkloadIdentityConfig].
  /// [identity] The Revision's SPIFFE workload identity. Enables provisioning of SPIFFE workload certificates.
  /// [identityCertificateEnabled] Controls whether an instance receives a managed workload identity (MWLID) certificate.
  /// [identityType] The type of identity to use. 'IDENTITY_TYPE_AGENT_IDENTITY' assigns a system-managed agent identity and
  const GetServiceTemplateWorkloadIdentityConfig({
    required this.identity,
    required this.identityCertificateEnabled,
    required this.identityType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': identity,
      'identityCertificateEnabled': identityCertificateEnabled,
      'identityType': identityType,
    };
  }

  factory GetServiceTemplateWorkloadIdentityConfig.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateWorkloadIdentityConfig(
      identity: pulumi.Input.fromValue(map['identity'] as String),
      identityCertificateEnabled: pulumi.Input.fromValue(map['identityCertificateEnabled'] as bool),
      identityType: pulumi.Input.fromValue(map['identityType'] as String),
    );
  }
}
