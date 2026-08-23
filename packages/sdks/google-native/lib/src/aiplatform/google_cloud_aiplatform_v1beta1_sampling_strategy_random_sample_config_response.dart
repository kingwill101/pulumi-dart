// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Requests are randomly selected.
class GoogleCloudAiplatformV1beta1SamplingStrategyRandomSampleConfigResponse {
  /// Sample rate (0, 1]
  final pulumi.Input<double> sampleRate;

  /// Creates a new [GoogleCloudAiplatformV1beta1SamplingStrategyRandomSampleConfigResponse].
  /// [sampleRate] Sample rate (0, 1]
  const GoogleCloudAiplatformV1beta1SamplingStrategyRandomSampleConfigResponse({
    required this.sampleRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sampleRate': sampleRate,
    };
  }

  factory GoogleCloudAiplatformV1beta1SamplingStrategyRandomSampleConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1SamplingStrategyRandomSampleConfigResponse(
      sampleRate: pulumi.Input.fromValue(map['sampleRate'] as double),
    );
  }
}
