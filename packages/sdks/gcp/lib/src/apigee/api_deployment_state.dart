// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApiDeployment resources.
class ApiDeploymentState {
  /// The Apigee Environment associated with the Apigee API deployment.
  final pulumi.Input<String>? environment;
  /// The Apigee Organization associated with the Apigee API deployment.
  final pulumi.Input<String>? orgId;
  /// The Apigee API associated with the Apigee API deployment.
  final pulumi.Input<String>? proxyId;
  /// The revision of the API proxy to be deployed.
  final pulumi.Input<String>? revision;

  /// Creates a new [ApiDeploymentState].
  /// [environment] The Apigee Environment associated with the Apigee API deployment.
  /// [orgId] The Apigee Organization associated with the Apigee API deployment.
  /// [proxyId] The Apigee API associated with the Apigee API deployment.
  /// [revision] The revision of the API proxy to be deployed.
  ApiDeploymentState({
    pulumi.Output<String>? environment,
    pulumi.Output<String>? orgId,
    pulumi.Output<String>? proxyId,
    pulumi.Output<String>? revision,
  }) :
      environment = pulumi.Input.asOptionalInput<String>(environment),
      orgId = pulumi.Input.asOptionalInput<String>(orgId),
      proxyId = pulumi.Input.asOptionalInput<String>(proxyId),
      revision = pulumi.Input.asOptionalInput<String>(revision);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environment': ?environment,
      'orgId': ?orgId,
      'proxyId': ?proxyId,
      'revision': ?revision,
    };
  }

  factory ApiDeploymentState.fromMap(Map<String, dynamic> map) {
    return ApiDeploymentState(
      environment: map['environment'] == null ? null : pulumi.Output.create<String>(map['environment'] as String),
      orgId: map['orgId'] == null ? null : pulumi.Output.create<String>(map['orgId'] as String),
      proxyId: map['proxyId'] == null ? null : pulumi.Output.create<String>(map['proxyId'] as String),
      revision: map['revision'] == null ? null : pulumi.Output.create<String>(map['revision'] as String),
    );
  }
}

