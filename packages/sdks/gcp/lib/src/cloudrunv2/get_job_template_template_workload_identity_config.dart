// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobTemplateTemplateWorkloadIdentityConfig {
  /// The Task's SPIFFE workload identity. Enables provisioning of SPIFFE workload certificates.
  final pulumi.Input<String> identity;
  /// Controls whether an instance receives a managed workload identity (MWLID) certificate.
  /// Defaults to true when 'identity_type' is 'IDENTITY_TYPE_AGENT_IDENTITY'.
  final pulumi.Input<bool> identityCertificateEnabled;
  /// The type of identity to use. 'IDENTITY_TYPE_AGENT_IDENTITY' assigns a system-managed agent identity
  /// and is required when the Job's 'functional_type' is 'FUNCTIONAL_TYPE_AGENT'. Once set, this field
  /// cannot be changed or unset. Possible values: ["IDENTITY_TYPE_SERVICE_ACCOUNT", "IDENTITY_TYPE_AGENT_IDENTITY"]
  final pulumi.Input<String> identityType;

  /// Creates a new [GetJobTemplateTemplateWorkloadIdentityConfig].
  /// [identity] The Task's SPIFFE workload identity. Enables provisioning of SPIFFE workload certificates.
  /// [identityCertificateEnabled] Controls whether an instance receives a managed workload identity (MWLID) certificate.
  /// [identityType] The type of identity to use. 'IDENTITY_TYPE_AGENT_IDENTITY' assigns a system-managed agent identity
  const GetJobTemplateTemplateWorkloadIdentityConfig({
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

  factory GetJobTemplateTemplateWorkloadIdentityConfig.fromMap(Map<String, dynamic> map) {
    return GetJobTemplateTemplateWorkloadIdentityConfig(
      identity: pulumi.Input.fromValue(map['identity'] as String),
      identityCertificateEnabled: pulumi.Input.fromValue(map['identityCertificateEnabled'] as bool),
      identityType: pulumi.Input.fromValue(map['identityType'] as String),
    );
  }
}
