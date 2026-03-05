// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_sampling_config.dart';

/// Describes any options that have an effect on the debugging of pipelines.
class DebugOptions {
  /// Configuration options for sampling elements from a running pipeline.
  final pulumi.Input<DataSamplingConfig>? dataSampling;
  /// When true, enables the logging of the literal hot key to the user's Cloud Logging.
  final pulumi.Input<bool>? enableHotKeyLogging;

  /// Creates a new [DebugOptions].
  /// [dataSampling] Configuration options for sampling elements from a running pipeline.
  /// [enableHotKeyLogging] When true, enables the logging of the literal hot key to the user's Cloud Logging.
  DebugOptions({
    this.dataSampling,
    this.enableHotKeyLogging,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSampling': ?pulumi.Input.mapOptionalInputValue<DataSamplingConfig, Map<String, dynamic>>(dataSampling, (value) => value.toMap()),
      'enableHotKeyLogging': ?enableHotKeyLogging,
    };
  }

  factory DebugOptions.fromMap(Map<String, dynamic> map) {
    return DebugOptions(
      dataSampling: (() { final guardedValue = map['dataSampling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataSamplingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enableHotKeyLogging: (() { final guardedValue = map['enableHotKeyLogging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

