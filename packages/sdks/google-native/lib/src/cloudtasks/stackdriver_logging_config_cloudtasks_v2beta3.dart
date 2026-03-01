// ignore_for_file: unused_element, unnecessary_cast


/// Configuration options for writing logs to [Stackdriver Logging](https://cloud.google.com/logging/docs/).
class StackdriverLoggingConfigCloudtasksV2beta3 {
  /// Specifies the fraction of operations to write to [Stackdriver Logging](https://cloud.google.com/logging/docs/). This field may contain any value between 0.0 and 1.0, inclusive. 0.0 is the default and means that no operations are logged.
  final double? samplingRatio;

  /// Creates a new [StackdriverLoggingConfigCloudtasksV2beta3].
  /// [samplingRatio] Specifies the fraction of operations to write to [Stackdriver Logging](https://cloud.google.com/logging/docs/). This field may contain any value between 0.0 and 1.0, inclusive. 0.0 is the default and means that no operations are logged.
  StackdriverLoggingConfigCloudtasksV2beta3({
    this.samplingRatio,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'samplingRatio': ?samplingRatio,
    };
  }

  factory StackdriverLoggingConfigCloudtasksV2beta3.fromMap(Map<String, dynamic> map) {
    return StackdriverLoggingConfigCloudtasksV2beta3(
      samplingRatio: map['samplingRatio'] == null ? null : map['samplingRatio'] as double,
    );
  }
}

