// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering InstanceIamPolicy resources.
class InstanceIamPolicyState {
  final pulumi.Input<String>? etag;
  /// The ID of the instance or a fully qualified identifier for the instance.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? policyData;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region of the Data Fusion instance.
  final pulumi.Input<String>? region;

  /// Creates a new [InstanceIamPolicyState].
  /// [etag] Optional.
  /// [name] The ID of the instance or a fully qualified identifier for the instance.
  /// [policyData] Optional.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the Data Fusion instance.
  InstanceIamPolicyState({
    pulumi.Output<String>? etag,
    pulumi.Output<String>? name,
    pulumi.Output<String>? policyData,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
  }) :
      etag = pulumi.Input.asOptionalInput<String>(etag),
      name = pulumi.Input.asOptionalInput<String>(name),
      policyData = pulumi.Input.asOptionalInput<String>(policyData),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': ?etag,
      'name': ?name,
      'policyData': ?policyData,
      'project': ?project,
      'region': ?region,
    };
  }

  factory InstanceIamPolicyState.fromMap(Map<String, dynamic> map) {
    return InstanceIamPolicyState(
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      policyData: map['policyData'] == null ? null : pulumi.Output.create<String>(map['policyData'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

