// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_nginx_get_configuration_get_configuration_args_doc}
/// Arguments for getConfiguration.
/// {@endtemplate}
/// {@macro pulumi_nginx_get_configuration_get_configuration_args_doc}
class GetConfigurationArgs {
  /// The ID of the Nginx Deployment.
  final pulumi.Input<String> nginxDeploymentId;

  /// Creates a new [GetConfigurationArgs].
  /// [nginxDeploymentId] The ID of the Nginx Deployment.
  const GetConfigurationArgs({
    required this.nginxDeploymentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nginxDeploymentId': nginxDeploymentId,
    };
  }

  factory GetConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigurationArgs(
      nginxDeploymentId: pulumi.Input.fromValue(map['nginxDeploymentId'] as String),
    );
  }
}
