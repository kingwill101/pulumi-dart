// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QueueStackdriverLoggingConfig {
  /// Specifies the fraction of operations to write to Stackdriver Logging.
  /// This field may contain any value between 0.0 and 1.0, inclusive. 0.0 is the
  /// default and means that no operations are logged.
  final pulumi.Input<double> samplingRatio;

  /// Creates a new [QueueStackdriverLoggingConfig].
  /// [samplingRatio] Specifies the fraction of operations to write to Stackdriver Logging.
  const QueueStackdriverLoggingConfig({
    required this.samplingRatio,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'samplingRatio': samplingRatio,
    };
  }

  factory QueueStackdriverLoggingConfig.fromMap(Map<String, dynamic> map) {
    return QueueStackdriverLoggingConfig(
      samplingRatio: pulumi.Input.fromValue(map['samplingRatio'] as double),
    );
  }
}
