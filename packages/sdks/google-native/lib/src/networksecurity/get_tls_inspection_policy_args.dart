// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1_get_tls_inspection_policy_args_doc}
/// Arguments for getTlsInspectionPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1_get_tls_inspection_policy_args_doc}
class GetTlsInspectionPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tlsInspectionPolicyId;

  /// Creates a new [GetTlsInspectionPolicyArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [tlsInspectionPolicyId] Required.
  GetTlsInspectionPolicyArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> tlsInspectionPolicyId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      tlsInspectionPolicyId = pulumi.Input.asInput<String>(tlsInspectionPolicyId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'tlsInspectionPolicyId': tlsInspectionPolicyId,
    };
  }

  factory GetTlsInspectionPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetTlsInspectionPolicyArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      tlsInspectionPolicyId: pulumi.Output.create<String>(map['tlsInspectionPolicyId'] as String),
    );
  }
}

