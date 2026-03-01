// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DeliveryPipelineIamPolicy resources.
class DeliveryPipelineIamPolicyState {
  final pulumi.Input<String>? etag;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? policyData;
  final pulumi.Input<String>? project;

  /// Creates a new [DeliveryPipelineIamPolicyState].
  /// [etag] Optional.
  /// [location] Optional.
  /// [name] Optional.
  /// [policyData] Optional.
  /// [project] Optional.
  DeliveryPipelineIamPolicyState({
    pulumi.Output<String>? etag,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? policyData,
    pulumi.Output<String>? project,
  }) :
      etag = pulumi.Input.asOptionalInput<String>(etag),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      policyData = pulumi.Input.asOptionalInput<String>(policyData),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': ?etag,
      'location': ?location,
      'name': ?name,
      'policyData': ?policyData,
      'project': ?project,
    };
  }

  factory DeliveryPipelineIamPolicyState.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineIamPolicyState(
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      policyData: map['policyData'] == null ? null : pulumi.Output.create<String>(map['policyData'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

