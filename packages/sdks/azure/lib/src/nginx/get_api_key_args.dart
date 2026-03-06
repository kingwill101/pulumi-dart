// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_nginx_get_api_key_get_api_key_args_doc}
/// Arguments for getApiKey.
/// {@endtemplate}
/// {@macro pulumi_nginx_get_api_key_get_api_key_args_doc}
class GetApiKeyArgs {
  /// The name of the NGINX Dataplane API Key.
  final pulumi.Input<String> name;
  /// The ID of the NGINX Deployment that the API key is associated with.
  final pulumi.Input<String> nginxDeploymentId;

  /// Creates a new [GetApiKeyArgs].
  /// [name] The name of the NGINX Dataplane API Key.
  /// [nginxDeploymentId] The ID of the NGINX Deployment that the API key is associated with.
  const GetApiKeyArgs({
    required this.name,
    required this.nginxDeploymentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'nginxDeploymentId': nginxDeploymentId,
    };
  }

  factory GetApiKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetApiKeyArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      nginxDeploymentId: pulumi.Input.fromValue(map['nginxDeploymentId'] as String),
    );
  }
}

