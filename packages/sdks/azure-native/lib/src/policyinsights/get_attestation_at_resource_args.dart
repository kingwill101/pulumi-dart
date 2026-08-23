// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_policyinsights_get_attestation_at_resource_args_doc}
/// Arguments for getAttestationAtResource.
/// {@endtemplate}
/// {@macro pulumi_policyinsights_get_attestation_at_resource_args_doc}
class GetAttestationAtResourceArgs {
  /// The name of the attestation.
  final pulumi.Input<String> attestationName;
  /// Resource ID.
  final pulumi.Input<String> resourceId;

  /// Creates a new [GetAttestationAtResourceArgs].
  /// [attestationName] The name of the attestation.
  /// [resourceId] Resource ID.
  const GetAttestationAtResourceArgs({
    required this.attestationName,
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestationName': attestationName,
      'resourceId': resourceId,
    };
  }

  factory GetAttestationAtResourceArgs.fromMap(Map<String, dynamic> map) {
    return GetAttestationAtResourceArgs(
      attestationName: pulumi.Input.fromValue(map['attestationName'] as String),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
    );
  }
}
