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
    required this.location,
    this.project,
    required this.tlsInspectionPolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'tlsInspectionPolicyId': tlsInspectionPolicyId,
    };
  }

  factory GetTlsInspectionPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetTlsInspectionPolicyArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tlsInspectionPolicyId: pulumi.Input.fromValue(map['tlsInspectionPolicyId'] as String),
    );
  }
}

