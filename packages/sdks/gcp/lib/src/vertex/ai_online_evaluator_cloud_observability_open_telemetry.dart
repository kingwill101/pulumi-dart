// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiOnlineEvaluatorCloudObservabilityOpenTelemetry {
  /// Defines which version of the OTel Semantic Convention the data
  /// follows. Can be "1.39.0" or newer.
  final pulumi.Input<String> semconvVersion;

  /// Creates a new [AiOnlineEvaluatorCloudObservabilityOpenTelemetry].
  /// [semconvVersion] Defines which version of the OTel Semantic Convention the data
  const AiOnlineEvaluatorCloudObservabilityOpenTelemetry({
    required this.semconvVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'semconvVersion': semconvVersion,
    };
  }

  factory AiOnlineEvaluatorCloudObservabilityOpenTelemetry.fromMap(Map<String, dynamic> map) {
    return AiOnlineEvaluatorCloudObservabilityOpenTelemetry(
      semconvVersion: pulumi.Input.fromValue(map['semconvVersion'] as String),
    );
  }
}
