// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_api_deployment_api_deployment_args_doc}
/// The set of arguments for ApiDeployment.
/// {@endtemplate}
/// {@macro pulumi_apigee_api_deployment_api_deployment_args_doc}
class ApiDeploymentArgs {
  /// The Apigee Environment associated with the Apigee API deployment.
  final pulumi.Input<String> environment;
  /// The Apigee Organization associated with the Apigee API deployment.
  final pulumi.Input<String> orgId;
  /// The Apigee API associated with the Apigee API deployment.
  final pulumi.Input<String> proxyId;
  /// The revision of the API proxy to be deployed.
  final pulumi.Input<String> revision;

  /// Creates a new [ApiDeploymentArgs].
  /// [environment] The Apigee Environment associated with the Apigee API deployment.
  /// [orgId] The Apigee Organization associated with the Apigee API deployment.
  /// [proxyId] The Apigee API associated with the Apigee API deployment.
  /// [revision] The revision of the API proxy to be deployed.
  ApiDeploymentArgs({
    required pulumi.Output<String> environment,
    required pulumi.Output<String> orgId,
    required pulumi.Output<String> proxyId,
    required pulumi.Output<String> revision,
  }) :
      environment = pulumi.Input.asInput<String>(environment),
      orgId = pulumi.Input.asInput<String>(orgId),
      proxyId = pulumi.Input.asInput<String>(proxyId),
      revision = pulumi.Input.asInput<String>(revision);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environment': environment,
      'orgId': orgId,
      'proxyId': proxyId,
      'revision': revision,
    };
  }

  factory ApiDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return ApiDeploymentArgs(
      environment: pulumi.Output.create<String>(map['environment'] as String),
      orgId: pulumi.Output.create<String>(map['orgId'] as String),
      proxyId: pulumi.Output.create<String>(map['proxyId'] as String),
      revision: pulumi.Output.create<String>(map['revision'] as String),
    );
  }
}

