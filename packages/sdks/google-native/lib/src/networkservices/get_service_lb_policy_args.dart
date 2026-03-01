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
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> serviceLbPolicyId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceLbPolicyId = pulumi.Input.asInput<String>(serviceLbPolicyId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'serviceLbPolicyId': serviceLbPolicyId,
    };
  }

  factory GetServiceLbPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceLbPolicyArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      serviceLbPolicyId: pulumi.Output.create<String>(map['serviceLbPolicyId'] as String),
    );
  }
}

