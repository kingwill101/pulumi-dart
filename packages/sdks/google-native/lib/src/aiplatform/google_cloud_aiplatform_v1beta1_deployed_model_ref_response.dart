// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Points to a DeployedModel.
class GoogleCloudAiplatformV1beta1DeployedModelRefResponse {
  /// Immutable. An ID of a DeployedModel in the above Endpoint.
  final pulumi.Input<String> deployedModelId;
  /// Immutable. A resource name of an Endpoint.
  final pulumi.Input<String> endpoint;

  /// Creates a new [GoogleCloudAiplatformV1beta1DeployedModelRefResponse].
  /// [deployedModelId] Immutable. An ID of a DeployedModel in the above Endpoint.
  /// [endpoint] Immutable. A resource name of an Endpoint.
  GoogleCloudAiplatformV1beta1DeployedModelRefResponse({
    required this.deployedModelId,
    required this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployedModelId': deployedModelId,
      'endpoint': endpoint,
    };
  }

  factory GoogleCloudAiplatformV1beta1DeployedModelRefResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1DeployedModelRefResponse(
      deployedModelId: pulumi.Input.fromValue(map['deployedModelId'] as String),
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
    );
  }
}

