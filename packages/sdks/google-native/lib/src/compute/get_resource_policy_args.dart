// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_resource_policy_args_doc}
/// Arguments for getResourcePolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_resource_policy_args_doc}
class GetResourcePolicyArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> resourcePolicy;

  /// Creates a new [GetResourcePolicyArgs].
  /// [project] Optional.
  /// [region] Required.
  /// [resourcePolicy] Required.
  GetResourcePolicyArgs({
    pulumi.Output<String>? project,
    required pulumi.Output<String> region,
    required pulumi.Output<String> resourcePolicy,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region),
      resourcePolicy = pulumi.Input.asInput<String>(resourcePolicy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'resourcePolicy': resourcePolicy,
    };
  }

  factory GetResourcePolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetResourcePolicyArgs(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
      resourcePolicy: pulumi.Output.create<String>(map['resourcePolicy'] as String),
    );
  }
}

