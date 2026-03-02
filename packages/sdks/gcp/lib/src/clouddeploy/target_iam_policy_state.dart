// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TargetIamPolicy resources.
class TargetIamPolicyState {
  final pulumi.Input<String>? etag;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? policyData;
  final pulumi.Input<String>? project;

  /// Creates a new [TargetIamPolicyState].
  /// [etag] Optional.
  /// [location] Optional.
  /// [name] Optional.
  /// [policyData] Optional.
  /// [project] Optional.
  TargetIamPolicyState({
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

  factory TargetIamPolicyState.fromMap(Map<String, dynamic> map) {
    return TargetIamPolicyState(
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      policyData: map['policyData'] == null ? null : (map['policyData']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

