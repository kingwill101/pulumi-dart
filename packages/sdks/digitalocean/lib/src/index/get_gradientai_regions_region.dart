// ignore_for_file: unused_element, unnecessary_cast


class GetGradientaiRegionsRegion {
  /// Inference URL for the model
  final String inferenceUrl;
  /// Region where the model is deployed
  final String region;
  /// Indicates if the model serves batch requests
  final bool servesBatch;
  /// Indicates if the model serves inference requests
  final bool servesInference;
  /// Streaming inference URL for the model
  final String streamInferenceUrl;

  /// Creates a new [GetGradientaiRegionsRegion].
  /// [inferenceUrl] Inference URL for the model
  /// [region] Region where the model is deployed
  /// [servesBatch] Indicates if the model serves batch requests
  /// [servesInference] Indicates if the model serves inference requests
  /// [streamInferenceUrl] Streaming inference URL for the model
  GetGradientaiRegionsRegion({
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

  factory GetGradientaiRegionsRegion.fromMap(Map<String, dynamic> map) {
    return GetGradientaiRegionsRegion(
      inferenceUrl: map['inferenceUrl'] as String,
      region: map['region'] as String,
      servesBatch: map['servesBatch'] as bool,
      servesInference: map['servesInference'] as bool,
      streamInferenceUrl: map['streamInferenceUrl'] as String,
    );
  }
}

