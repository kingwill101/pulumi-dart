// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1_get_endpoint_policy_args_doc}
/// Arguments for getEndpointPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1_get_endpoint_policy_args_doc}
class GetEndpointPolicyArgs {
  final pulumi.Input<String> endpointPolicyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEndpointPolicyArgs].
  /// [endpointPolicyId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetEndpointPolicyArgs({
    required this.endpointPolicyId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointPolicyId': endpointPolicyId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetEndpointPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetEndpointPolicyArgs(
      endpointPolicyId: pulumi.Input.fromValue(
        map['endpointPolicyId'] as String,
      ),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
