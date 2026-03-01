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
    pulumi.Output<String>? endDateTime,
    pulumi.Output<String>? hint,
    pulumi.Output<String>? name,
    pulumi.Output<String>? nginxDeploymentId,
    pulumi.Output<String>? secretText,
  }) :
      endDateTime = pulumi.Input.asOptionalInput<String>(endDateTime),
      hint = pulumi.Input.asOptionalInput<String>(hint),
      name = pulumi.Input.asOptionalInput<String>(name),
      nginxDeploymentId = pulumi.Input.asOptionalInput<String>(nginxDeploymentId),
      secretText = pulumi.Input.asOptionalInput<String>(secretText);

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
      endDateTime: map['endDateTime'] == null ? null : pulumi.Output.create<String>(map['endDateTime'] as String),
      hint: map['hint'] == null ? null : pulumi.Output.create<String>(map['hint'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nginxDeploymentId: map['nginxDeploymentId'] == null ? null : pulumi.Output.create<String>(map['nginxDeploymentId'] as String),
      secretText: map['secretText'] == null ? null : pulumi.Output.create<String>(map['secretText'] as String),
    );
  }
}

