// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration options for writing logs to [Stackdriver Logging](https://cloud.google.com/logging/docs/).
class StackdriverLoggingConfigResponseCloudtasksV2beta3 {
  /// Specifies the fraction of operations to write to [Stackdriver Logging](https://cloud.google.com/logging/docs/). This field may contain any value between 0.0 and 1.0, inclusive. 0.0 is the default and means that no operations are logged.
  final pulumi.Input<double> samplingRatio;

  /// Creates a new [StackdriverLoggingConfigResponseCloudtasksV2beta3].
  /// [samplingRatio] Specifies the fraction of operations to write to [Stackdriver Logging](https://cloud.google.com/logging/docs/). This field may contain any value between 0.0 and 1.0, inclusive. 0.0 is the default and means that no operations are logged.
  const StackdriverLoggingConfigResponseCloudtasksV2beta3({
    required this.samplingRatio,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'samplingRatio': samplingRatio,
    };
  }

  factory StackdriverLoggingConfigResponseCloudtasksV2beta3.fromMap(Map<String, dynamic> map) {
    return StackdriverLoggingConfigResponseCloudtasksV2beta3(
      samplingRatio: pulumi.Input.fromValue(map['samplingRatio'] as double),
    );
  }
}

