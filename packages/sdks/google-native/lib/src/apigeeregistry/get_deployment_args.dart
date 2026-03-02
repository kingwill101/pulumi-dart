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
      apiId: (map['apiId'] as String).input(),
      deploymentId: (map['deploymentId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

