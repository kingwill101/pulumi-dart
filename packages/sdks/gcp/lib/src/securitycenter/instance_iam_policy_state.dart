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
  const InstanceIamPolicyState({
    this.etag,
    this.name,
    this.policyData,
    this.project,
    this.region,
  });

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
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyData: (() { final guardedValue = map['policyData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
