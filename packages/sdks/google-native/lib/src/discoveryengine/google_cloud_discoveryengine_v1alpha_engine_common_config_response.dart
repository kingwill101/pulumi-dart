// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Common configurations for an Engine.
class GoogleCloudDiscoveryengineV1alphaEngineCommonConfigResponse {
  /// The name of the company, business or entity that is associated with the engine. Setting this may help improve LLM related features.
  final pulumi.Input<String> companyName;

  /// Creates a new [GoogleCloudDiscoveryengineV1alphaEngineCommonConfigResponse].
  /// [companyName] The name of the company, business or entity that is associated with the engine. Setting this may help improve LLM related features.
  GoogleCloudDiscoveryengineV1alphaEngineCommonConfigResponse({
    required this.companyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'companyName': companyName,
    };
  }

  factory GoogleCloudDiscoveryengineV1alphaEngineCommonConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1alphaEngineCommonConfigResponse(
      companyName: pulumi.Input.fromValue(map['companyName'] as String),
    );
  }
}

