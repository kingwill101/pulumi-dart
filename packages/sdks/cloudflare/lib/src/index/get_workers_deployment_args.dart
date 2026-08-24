// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_workers_deployment_get_workers_deployment_args_doc}
/// Arguments for getWorkersDeployment.
/// {@endtemplate}
/// {@macro pulumi_index_get_workers_deployment_get_workers_deployment_args_doc}
class GetWorkersDeploymentArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  final pulumi.Input<String> deploymentId;
  /// Name of the script, used in URLs and route configuration.
  final pulumi.Input<String> scriptName;

  /// Creates a new [GetWorkersDeploymentArgs].
  /// [accountId] Identifier.
  /// [deploymentId] Required.
  /// [scriptName] Name of the script, used in URLs and route configuration.
  const GetWorkersDeploymentArgs({
    required this.accountId,
    required this.deploymentId,
    required this.scriptName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'deploymentId': deploymentId,
      'scriptName': scriptName,
    };
  }

  factory GetWorkersDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkersDeploymentArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      deploymentId: pulumi.Input.fromValue(map['deploymentId'] as String),
      scriptName: pulumi.Input.fromValue(map['scriptName'] as String),
    );
  }
}
