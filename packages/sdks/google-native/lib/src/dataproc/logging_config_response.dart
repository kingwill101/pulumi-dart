// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The runtime logging config of the job.
class LoggingConfigResponse {
  /// The per-package log levels for the driver. This can include "root" package name to configure rootLogger. Examples: - 'com.google = FATAL' - 'root = INFO' - 'org.apache = DEBUG'
  final pulumi.Input<Map<String, String>> driverLogLevels;

  /// Creates a new [LoggingConfigResponse].
  /// [driverLogLevels] The per-package log levels for the driver. This can include "root" package name to configure rootLogger. Examples: - 'com.google = FATAL' - 'root = INFO' - 'org.apache = DEBUG'
  LoggingConfigResponse({required this.driverLogLevels});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'driverLogLevels': driverLogLevels};
  }

  factory LoggingConfigResponse.fromMap(Map<String, dynamic> map) {
    return LoggingConfigResponse(
      driverLogLevels: pulumi.Input.fromValue(
        (map['driverLogLevels'] as Map).cast<String, String>(),
      ),
    );
  }
}
