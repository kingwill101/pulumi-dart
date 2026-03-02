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
    this.etag,
    this.location,
    this.name,
    this.policyData,
    this.project,
  });

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
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      policyData: map['policyData'] == null ? null : (map['policyData']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

