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
    pulumi.Output<String>? endpoint,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? location,
    pulumi.Output<String>? policyData,
    pulumi.Output<String>? project,
  }) :
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      location = pulumi.Input.asOptionalInput<String>(location),
      policyData = pulumi.Input.asOptionalInput<String>(policyData),
      project = pulumi.Input.asOptionalInput<String>(project);

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
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      policyData: map['policyData'] == null ? null : pulumi.Output.create<String>(map['policyData'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

