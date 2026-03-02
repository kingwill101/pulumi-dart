// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGenaiRegionsRegion {
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

  /// Creates a new [GetGenaiRegionsRegion].
  /// [inferenceUrl] Inference URL for the model
  /// [region] Region where the model is deployed
  /// [servesBatch] Indicates if the model serves batch requests
  /// [servesInference] Indicates if the model serves inference requests
  /// [streamInferenceUrl] Streaming inference URL for the model
  GetGenaiRegionsRegion({
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

  factory GetGenaiRegionsRegion.fromMap(Map<String, dynamic> map) {
    return GetGenaiRegionsRegion(
      inferenceUrl: (map['inferenceUrl'] as String).input(),
      region: (map['region'] as String).input(),
      servesBatch: (map['servesBatch'] as bool).input(),
      servesInference: (map['servesInference'] as bool).input(),
      streamInferenceUrl: (map['streamInferenceUrl'] as String).input(),
    );
  }
}

