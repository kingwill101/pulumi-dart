// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Requests are randomly selected.
class GoogleCloudAiplatformV1beta1SamplingStrategyRandomSampleConfig {
  /// Sample rate (0, 1]
  final pulumi.Input<double>? sampleRate;

  /// Creates a new [GoogleCloudAiplatformV1beta1SamplingStrategyRandomSampleConfig].
  /// [sampleRate] Sample rate (0, 1]
  GoogleCloudAiplatformV1beta1SamplingStrategyRandomSampleConfig({
    this.sampleRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'sampleRate': ?sampleRate};
  }

  factory GoogleCloudAiplatformV1beta1SamplingStrategyRandomSampleConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1SamplingStrategyRandomSampleConfig(
      sampleRate: (() {
        final guardedValue = map['sampleRate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
