// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// LogsPolicy describes how outputs from a Job's Tasks (stdout/stderr) will be preserved.
class LogsPolicyResponse {
  /// Optional. Additional settings for Cloud Logging. It will only take effect when the destination of LogsPolicy is set to CLOUD_LOGGING.
  final pulumi.Input<Map<String, dynamic>> cloudLoggingOption;
  /// Where logs should be saved.
  final pulumi.Input<String> destination;
  /// The path to which logs are saved when the destination = PATH. This can be a local file path on the VM, or under the mount point of a Persistent Disk or Filestore, or a Cloud Storage path.
  final pulumi.Input<String> logsPath;

  /// Creates a new [LogsPolicyResponse].
  /// [cloudLoggingOption] Optional. Additional settings for Cloud Logging. It will only take effect when the destination of LogsPolicy is set to CLOUD_LOGGING.
  /// [destination] Where logs should be saved.
  /// [logsPath] The path to which logs are saved when the destination = PATH. This can be a local file path on the VM, or under the mount point of a Persistent Disk or Filestore, or a Cloud Storage path.
  const LogsPolicyResponse({
    required this.cloudLoggingOption,
    required this.destination,
    required this.logsPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudLoggingOption': cloudLoggingOption,
      'destination': destination,
      'logsPath': logsPath,
    };
  }

  factory LogsPolicyResponse.fromMap(Map<String, dynamic> map) {
    return LogsPolicyResponse(
      cloudLoggingOption: pulumi.Input.fromValue((map['cloudLoggingOption']! as Map).cast<String, dynamic>()),
      destination: pulumi.Input.fromValue(map['destination'] as String),
      logsPath: pulumi.Input.fromValue(map['logsPath'] as String),
    );
  }
}
