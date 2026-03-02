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
    this.etag,
    this.instance,
    this.policyData,
    this.project,
  });

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
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      instance: map['instance'] == null ? null : (map['instance']! as String).input(),
      policyData: map['policyData'] == null ? null : (map['policyData']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

