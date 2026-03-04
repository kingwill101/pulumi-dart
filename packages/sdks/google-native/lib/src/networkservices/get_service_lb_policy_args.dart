// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1beta1_get_service_lb_policy_args_doc}
/// Arguments for getServiceLbPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1beta1_get_service_lb_policy_args_doc}
class GetServiceLbPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceLbPolicyId;

  /// Creates a new [GetServiceLbPolicyArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [serviceLbPolicyId] Required.
  GetServiceLbPolicyArgs({
    required this.location,
    this.project,
    required this.serviceLbPolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'serviceLbPolicyId': serviceLbPolicyId,
    };
  }

  factory GetServiceLbPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceLbPolicyArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceLbPolicyId: pulumi.Input.fromValue(
        map['serviceLbPolicyId'] as String,
      ),
    );
  }
}
