// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AiEndpointIamPolicy resources.
class AiEndpointIamPolicyState {
  final pulumi.Input<String>? endpoint;
  final pulumi.Input<String>? etag;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? policyData;
  final pulumi.Input<String>? project;

  /// Creates a new [AiEndpointIamPolicyState].
  /// [endpoint] Optional.
  /// [etag] Optional.
  /// [location] Optional.
  /// [policyData] Optional.
  /// [project] Optional.
  AiEndpointIamPolicyState({
    this.endpoint,
    this.etag,
    this.location,
    this.policyData,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': ?endpoint,
      'etag': ?etag,
      'location': ?location,
      'policyData': ?policyData,
      'project': ?project,
    };
  }

  factory AiEndpointIamPolicyState.fromMap(Map<String, dynamic> map) {
    return AiEndpointIamPolicyState(
      endpoint: (() {
        final guardedValue = map['endpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyData: (() {
        final guardedValue = map['policyData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
