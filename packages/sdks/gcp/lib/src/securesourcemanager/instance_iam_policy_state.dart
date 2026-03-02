// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering InstanceIamPolicy resources.
class InstanceIamPolicyState {
  final pulumi.Input<String>? etag;
  final pulumi.Input<String>? instanceId;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? policyData;
  final pulumi.Input<String>? project;

  /// Creates a new [InstanceIamPolicyState].
  /// [etag] Optional.
  /// [instanceId] Optional.
  /// [location] Optional.
  /// [policyData] Optional.
  /// [project] Optional.
  InstanceIamPolicyState({
    this.etag,
    this.instanceId,
    this.location,
    this.policyData,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': ?etag,
      'instanceId': ?instanceId,
      'location': ?location,
      'policyData': ?policyData,
      'project': ?project,
    };
  }

  factory InstanceIamPolicyState.fromMap(Map<String, dynamic> map) {
    return InstanceIamPolicyState(
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      policyData: map['policyData'] == null ? null : (map['policyData'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

