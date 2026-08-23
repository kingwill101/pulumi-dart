// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkconnectivity_v1_get_service_connection_policy_args_doc}
/// Arguments for getServiceConnectionPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_v1_get_service_connection_policy_args_doc}
class GetServiceConnectionPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceConnectionPolicyId;

  /// Creates a new [GetServiceConnectionPolicyArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [serviceConnectionPolicyId] Required.
  const GetServiceConnectionPolicyArgs({
    required this.location,
    this.project,
    required this.serviceConnectionPolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'serviceConnectionPolicyId': serviceConnectionPolicyId,
    };
  }

  factory GetServiceConnectionPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceConnectionPolicyArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceConnectionPolicyId: pulumi.Input.fromValue(map['serviceConnectionPolicyId'] as String),
    );
  }
}
