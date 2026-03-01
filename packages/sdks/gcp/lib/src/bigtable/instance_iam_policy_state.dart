// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering InstanceIamPolicy resources.
class InstanceIamPolicyState {
  /// (Computed) The etag of the instances's IAM policy.
  final pulumi.Input<String>? etag;
  /// The name or relative resource id of the instance to manage IAM policies for.
  ///
  /// For `gcp.bigtable.InstanceIamMember` or `gcp.bigtable.InstanceIamBinding`:
  final pulumi.Input<String>? instance;
  final pulumi.Input<String>? policyData;
  final pulumi.Input<String>? project;

  /// Creates a new [InstanceIamPolicyState].
  /// [etag] (Computed) The etag of the instances's IAM policy.
  /// [instance] The name or relative resource id of the instance to manage IAM policies for.
  /// [policyData] Optional.
  /// [project] Optional.
  InstanceIamPolicyState({
    pulumi.Output<String>? etag,
    pulumi.Output<String>? instance,
    pulumi.Output<String>? policyData,
    pulumi.Output<String>? project,
  }) :
      etag = pulumi.Input.asOptionalInput<String>(etag),
      instance = pulumi.Input.asOptionalInput<String>(instance),
      policyData = pulumi.Input.asOptionalInput<String>(policyData),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': ?etag,
      'instance': ?instance,
      'policyData': ?policyData,
      'project': ?project,
    };
  }

  factory InstanceIamPolicyState.fromMap(Map<String, dynamic> map) {
    return InstanceIamPolicyState(
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      instance: map['instance'] == null ? null : pulumi.Output.create<String>(map['instance'] as String),
      policyData: map['policyData'] == null ? null : pulumi.Output.create<String>(map['policyData'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

