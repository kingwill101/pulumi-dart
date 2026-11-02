// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAgentPlatformRegionsRegion {
  /// Inference URL for the model
  final pulumi.Input<String> inferenceUrl;
  /// Region where the model is deployed
  final pulumi.Input<String> region;
  /// Indicates if the model serves batch requests
  final pulumi.Input<bool> servesBatch;
  /// Indicates if the model serves inference requests
  final pulumi.Input<bool> servesInference;
  /// Streaming inference URL for the model
  final pulumi.Input<String> streamInferenceUrl;

  /// Creates a new [GetAgentPlatformRegionsRegion].
  /// [inferenceUrl] Inference URL for the model
  /// [region] Region where the model is deployed
  /// [servesBatch] Indicates if the model serves batch requests
  /// [servesInference] Indicates if the model serves inference requests
  /// [streamInferenceUrl] Streaming inference URL for the model
  const GetAgentPlatformRegionsRegion({
    required this.inferenceUrl,
    required this.region,
    required this.servesBatch,
    required this.servesInference,
    required this.streamInferenceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inferenceUrl': inferenceUrl,
      'region': region,
      'servesBatch': servesBatch,
      'servesInference': servesInference,
      'streamInferenceUrl': streamInferenceUrl,
    };
  }

  factory GetAgentPlatformRegionsRegion.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformRegionsRegion(
      inferenceUrl: pulumi.Input.fromValue(map['inferenceUrl'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
      servesBatch: pulumi.Input.fromValue(map['servesBatch'] as bool),
      servesInference: pulumi.Input.fromValue(map['servesInference'] as bool),
      streamInferenceUrl: pulumi.Input.fromValue(map['streamInferenceUrl'] as String),
    );
  }
}
