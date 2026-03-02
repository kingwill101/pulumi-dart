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
  GetServiceConnectionPolicyArgs({
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
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      serviceConnectionPolicyId: (map['serviceConnectionPolicyId'] as String).input(),
    );
  }
}

