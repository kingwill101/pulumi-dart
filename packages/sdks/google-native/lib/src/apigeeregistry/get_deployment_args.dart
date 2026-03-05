// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigeeregistry_v1_get_deployment_args_doc}
/// Arguments for getDeployment.
/// {@endtemplate}
/// {@macro pulumi_apigeeregistry_v1_get_deployment_args_doc}
class GetDeploymentArgs {
  final pulumi.Input<String> apiId;
  final pulumi.Input<String> deploymentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDeploymentArgs].
  /// [apiId] Required.
  /// [deploymentId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetDeploymentArgs({
    required this.apiId,
    required this.deploymentId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'deploymentId': deploymentId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return GetDeploymentArgs(
      apiId: pulumi.Input.fromValue(map['apiId'] as String),
      deploymentId: pulumi.Input.fromValue(map['deploymentId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

