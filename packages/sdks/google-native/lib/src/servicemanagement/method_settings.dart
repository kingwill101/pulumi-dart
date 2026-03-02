// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'long_running.dart';

/// Describes the generator configuration for a method.
class MethodSettings {
  /// Describes settings to use for long-running operations when generating API methods for RPCs. Complements RPCs that use the annotations in google/longrunning/operations.proto. Example of a YAML configuration:: publishing: method_settings: - selector: google.cloud.speech.v2.Speech.BatchRecognize long_running: initial_poll_delay: seconds: 60 # 1 minute poll_delay_multiplier: 1.5 max_poll_delay: seconds: 360 # 6 minutes total_poll_timeout: seconds: 54000 # 90 minutes
  final pulumi.Input<LongRunning>? longRunning;
  /// The fully qualified name of the method, for which the options below apply. This is used to find the method to apply the options.
  final pulumi.Input<String>? selector;

  /// Creates a new [MethodSettings].
  /// [longRunning] Describes settings to use for long-running operations when generating API methods for RPCs. Complements RPCs that use the annotations in google/longrunning/operations.proto. Example of a YAML configuration:: publishing: method_settings: - selector: google.cloud.speech.v2.Speech.BatchRecognize long_running: initial_poll_delay: seconds: 60 # 1 minute poll_delay_multiplier: 1.5 max_poll_delay: seconds: 360 # 6 minutes total_poll_timeout: seconds: 54000 # 90 minutes
  /// [selector] The fully qualified name of the method, for which the options below apply. This is used to find the method to apply the options.
  MethodSettings({
    this.longRunning,
    this.selector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'longRunning': ?pulumi.Input.mapOptionalInputValue<LongRunning, Map<String, dynamic>>(longRunning, (value) => value.toMap()),
      'selector': ?selector,
    };
  }

  factory MethodSettings.fromMap(Map<String, dynamic> map) {
    return MethodSettings(
      longRunning: map['longRunning'] == null ? null : (LongRunning.fromMap((map['longRunning']! as Map).cast<String, dynamic>())).input(),
      selector: map['selector'] == null ? null : (map['selector']! as String).input(),
    );
  }
}

