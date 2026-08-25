// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TargetIamPolicy resources.
class TargetIamPolicyState {
  final pulumi.Input<String?>? etag;
  final pulumi.Input<String?>? location;
  final pulumi.Input<String?>? name;
  final pulumi.Input<String?>? policyData;
  final pulumi.Input<String?>? project;

  /// Creates a new [TargetIamPolicyState].
  /// [etag] Optional.
  /// [location] Optional.
  /// [name] Optional.
  /// [policyData] Optional.
  /// [project] Optional.
  const TargetIamPolicyState({
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
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyData: (() { final guardedValue = map['policyData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
