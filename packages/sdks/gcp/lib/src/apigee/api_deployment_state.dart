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
    this.environment,
    this.orgId,
    this.proxyId,
    this.revision,
  });

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
      environment: map['environment'] == null ? null : (map['environment']! as String).input(),
      orgId: map['orgId'] == null ? null : (map['orgId']! as String).input(),
      proxyId: map['proxyId'] == null ? null : (map['proxyId']! as String).input(),
      revision: map['revision'] == null ? null : (map['revision']! as String).input(),
    );
  }
}

