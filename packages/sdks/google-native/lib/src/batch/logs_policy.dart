// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logs_policy_destination.dart';

/// LogsPolicy describes how outputs from a Job's Tasks (stdout/stderr) will be preserved.
class LogsPolicy {
  /// Optional. Additional settings for Cloud Logging. It will only take effect when the destination of LogsPolicy is set to CLOUD_LOGGING.
  final pulumi.Input<Map<String, dynamic>>? cloudLoggingOption;

  /// Where logs should be saved.
  final pulumi.Input<LogsPolicyDestination>? destination;

  /// The path to which logs are saved when the destination = PATH. This can be a local file path on the VM, or under the mount point of a Persistent Disk or Filestore, or a Cloud Storage path.
  final pulumi.Input<String>? logsPath;

  /// Creates a new [LogsPolicy].
  /// [cloudLoggingOption] Optional. Additional settings for Cloud Logging. It will only take effect when the destination of LogsPolicy is set to CLOUD_LOGGING.
  /// [destination] Where logs should be saved.
  /// [logsPath] The path to which logs are saved when the destination = PATH. This can be a local file path on the VM, or under the mount point of a Persistent Disk or Filestore, or a Cloud Storage path.
  LogsPolicy({this.cloudLoggingOption, this.destination, this.logsPath});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudLoggingOption': ?cloudLoggingOption,
      'destination':
          ?pulumi.Input.mapOptionalInputValue<LogsPolicyDestination, String>(
            destination,
            (value) => value.wireValue,
          ),
      'logsPath': ?logsPath,
    };
  }

  factory LogsPolicy.fromMap(Map<String, dynamic> map) {
    return LogsPolicy(
      cloudLoggingOption: (() {
        final guardedValue = map['cloudLoggingOption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      destination: (() {
        final guardedValue = map['destination'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LogsPolicyDestination.fromValue(guardedValue as String),
        );
      })(),
      logsPath: (() {
        final guardedValue = map['logsPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
