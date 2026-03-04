// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigqueryconnection_v1beta1_get_connection_iam_policy_args_doc}
/// Arguments for getConnectionIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_bigqueryconnection_v1beta1_get_connection_iam_policy_args_doc}
class GetConnectionIamPolicyArgs {
  final pulumi.Input<String> connectionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConnectionIamPolicyArgs].
  /// [connectionId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetConnectionIamPolicyArgs({
    required this.connectionId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionId': connectionId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetConnectionIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectionIamPolicyArgs(
      connectionId: pulumi.Input.fromValue(map['connectionId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
