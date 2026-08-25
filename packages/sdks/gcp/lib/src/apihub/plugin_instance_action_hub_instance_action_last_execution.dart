// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PluginInstanceActionHubInstanceActionLastExecution {
  /// The last execution end time of the plugin instance.
  final pulumi.Input<String?>? endTime;
  /// Error message describing the failure, if any, during Create, Delete or
  /// ApplyConfig operation corresponding to the plugin instance.This field will
  /// only be populated if the plugin instance is in the ERROR or FAILED state.
  final pulumi.Input<String?>? errorMessage;
  /// The result of the last execution of the plugin instance.
  /// Possible values:
  /// RESULT_UNSPECIFIED
  /// SUCCEEDED
  /// FAILED
  final pulumi.Input<String?>? result;
  /// The last execution start time of the plugin instance.
  final pulumi.Input<String?>? startTime;

  /// Creates a new [PluginInstanceActionHubInstanceActionLastExecution].
  /// [endTime] The last execution end time of the plugin instance.
  /// [errorMessage] Error message describing the failure, if any, during Create, Delete or
  /// [result] The result of the last execution of the plugin instance.
  /// [startTime] The last execution start time of the plugin instance.
  const PluginInstanceActionHubInstanceActionLastExecution({
    this.endTime,
    this.errorMessage,
    this.result,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'errorMessage': ?errorMessage,
      'result': ?result,
      'startTime': ?startTime,
    };
  }

  factory PluginInstanceActionHubInstanceActionLastExecution.fromMap(Map<String, dynamic> map) {
    return PluginInstanceActionHubInstanceActionLastExecution(
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      result: (() { final guardedValue = map['result']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
