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
      endpoint: map['endpoint'] == null ? null : (map['endpoint']! as String).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      policyData: map['policyData'] == null ? null : (map['policyData']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

