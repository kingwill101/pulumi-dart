// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApiKey resources.
class ApiKeyState {
  /// The RFC3339 formatted date-time after which this Dataplane API Key is no longer valid. The maximum value is now+2y.
  final pulumi.Input<String>? endDateTime;
  /// The first three characters of the secret text to help identify it in use.
  final pulumi.Input<String>? hint;
  /// The name of the NGINX Dataplane API Key. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the NGINX Deployment that the API key is associated with. Changing this forces a new resource to be created.
  final pulumi.Input<String>? nginxDeploymentId;
  /// The value used as the Dataplane API Key. The API key requirements can be found in the [NGINXaaS Documentation](https://docs.nginx.com/nginxaas/azure/quickstart/loadbalancer-kubernetes/#create-an-nginxaas-data-plane-api-key).
  final pulumi.Input<String>? secretText;

  /// Creates a new [ApiKeyState].
  /// [endDateTime] The RFC3339 formatted date-time after which this Dataplane API Key is no longer valid. The maximum value is now+2y.
  /// [hint] The first three characters of the secret text to help identify it in use.
  /// [name] The name of the NGINX Dataplane API Key. Changing this forces a new resource to be created.
  /// [nginxDeploymentId] The ID of the NGINX Deployment that the API key is associated with. Changing this forces a new resource to be created.
  /// [secretText] The value used as the Dataplane API Key. The API key requirements can be found in the [NGINXaaS Documentation](https://docs.nginx.com/nginxaas/azure/quickstart/loadbalancer-kubernetes/#create-an-nginxaas-data-plane-api-key).
  ApiKeyState({
    this.endDateTime,
    this.hint,
    this.name,
    this.nginxDeploymentId,
    this.secretText,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endDateTime': ?endDateTime,
      'hint': ?hint,
      'name': ?name,
      'nginxDeploymentId': ?nginxDeploymentId,
      'secretText': ?secretText,
    };
  }

  factory ApiKeyState.fromMap(Map<String, dynamic> map) {
    return ApiKeyState(
      endDateTime: (() { final guardedValue = map['endDateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hint: (() { final guardedValue = map['hint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nginxDeploymentId: (() { final guardedValue = map['nginxDeploymentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretText: (() { final guardedValue = map['secretText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

