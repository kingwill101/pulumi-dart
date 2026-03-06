// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_sampling_config_response.dart';

/// Describes any options that have an effect on the debugging of pipelines.
class DebugOptionsResponse {
  /// Configuration options for sampling elements from a running pipeline.
  final pulumi.Input<DataSamplingConfigResponse> dataSampling;
  /// When true, enables the logging of the literal hot key to the user's Cloud Logging.
  final pulumi.Input<bool> enableHotKeyLogging;

  /// Creates a new [DebugOptionsResponse].
  /// [dataSampling] Configuration options for sampling elements from a running pipeline.
  /// [enableHotKeyLogging] When true, enables the logging of the literal hot key to the user's Cloud Logging.
  const DebugOptionsResponse({
    required this.dataSampling,
    required this.enableHotKeyLogging,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSampling': pulumi.Input.mapInputValue<DataSamplingConfigResponse, Map<String, dynamic>>(dataSampling, (value) => value.toMap()),
      'enableHotKeyLogging': enableHotKeyLogging,
    };
  }

  factory DebugOptionsResponse.fromMap(Map<String, dynamic> map) {
    return DebugOptionsResponse(
      dataSampling: pulumi.Input.fromValue(DataSamplingConfigResponse.fromMap((map['dataSampling']! as Map).cast<String, dynamic>())),
      enableHotKeyLogging: pulumi.Input.fromValue(map['enableHotKeyLogging'] as bool),
    );
  }
}

