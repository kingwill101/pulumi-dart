// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Requests are randomly selected.
class GoogleCloudAiplatformV1SamplingStrategyRandomSampleConfigResponse {
  /// Sample rate (0, 1]
  final pulumi.Input<double> sampleRate;

  /// Creates a new [GoogleCloudAiplatformV1SamplingStrategyRandomSampleConfigResponse].
  /// [sampleRate] Sample rate (0, 1]
  GoogleCloudAiplatformV1SamplingStrategyRandomSampleConfigResponse({
    required this.sampleRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sampleRate': sampleRate,
    };
  }

  factory GoogleCloudAiplatformV1SamplingStrategyRandomSampleConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1SamplingStrategyRandomSampleConfigResponse(
      sampleRate: pulumi.Input.fromValue(map['sampleRate'] as double),
    );
  }
}

