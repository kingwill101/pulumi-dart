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
    pulumi.Output<String>? etag,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? policyData,
    pulumi.Output<String>? project,
  }) :
      etag = pulumi.Input.asOptionalInput<String>(etag),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      location = pulumi.Input.asOptionalInput<String>(location),
      policyData = pulumi.Input.asOptionalInput<String>(policyData),
      project = pulumi.Input.asOptionalInput<String>(project);

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
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      policyData: map['policyData'] == null ? null : pulumi.Output.create<String>(map['policyData'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

