// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_nginx_api_key_api_key_args_doc}
/// The set of arguments for ApiKey.
/// {@endtemplate}
/// {@macro pulumi_nginx_api_key_api_key_args_doc}
class ApiKeyArgs {
  /// The RFC3339 formatted date-time after which this Dataplane API Key is no longer valid. The maximum value is now+2y.
  final pulumi.Input<String> endDateTime;
  /// The name of the NGINX Dataplane API Key. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the NGINX Deployment that the API key is associated with. Changing this forces a new resource to be created.
  final pulumi.Input<String> nginxDeploymentId;
  /// The value used as the Dataplane API Key. The API key requirements can be found in the [NGINXaaS Documentation](https://docs.nginx.com/nginxaas/azure/quickstart/loadbalancer-kubernetes/#create-an-nginxaas-data-plane-api-key).
  final pulumi.Input<String> secretText;

  /// Creates a new [ApiKeyArgs].
  /// [endDateTime] The RFC3339 formatted date-time after which this Dataplane API Key is no longer valid. The maximum value is now+2y.
  /// [name] The name of the NGINX Dataplane API Key. Changing this forces a new resource to be created.
  /// [nginxDeploymentId] The ID of the NGINX Deployment that the API key is associated with. Changing this forces a new resource to be created.
  /// [secretText] The value used as the Dataplane API Key. The API key requirements can be found in the [NGINXaaS Documentation](https://docs.nginx.com/nginxaas/azure/quickstart/loadbalancer-kubernetes/#create-an-nginxaas-data-plane-api-key).
  const ApiKeyArgs({
    required this.endDateTime,
    this.name,
    required this.nginxDeploymentId,
    required this.secretText,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endDateTime': endDateTime,
      'name': ?name,
      'nginxDeploymentId': nginxDeploymentId,
      'secretText': secretText,
    };
  }

  factory ApiKeyArgs.fromMap(Map<String, dynamic> map) {
    return ApiKeyArgs(
      endDateTime: pulumi.Input.fromValue(map['endDateTime'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nginxDeploymentId: pulumi.Input.fromValue(map['nginxDeploymentId'] as String),
      secretText: pulumi.Input.fromValue(map['secretText'] as String),
    );
  }
}

