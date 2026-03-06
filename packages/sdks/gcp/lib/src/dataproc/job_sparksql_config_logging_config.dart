// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobSparksqlConfigLoggingConfig {
  /// Optional. The per-package log levels for the driver. This may include 'root' package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'.
  final pulumi.Input<Map<String, String>> driverLogLevels;

  /// Creates a new [JobSparksqlConfigLoggingConfig].
  /// [driverLogLevels] Optional. The per-package log levels for the driver. This may include 'root' package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'.
  const JobSparksqlConfigLoggingConfig({
    required this.driverLogLevels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'driverLogLevels': driverLogLevels,
    };
  }

  factory JobSparksqlConfigLoggingConfig.fromMap(Map<String, dynamic> map) {
    return JobSparksqlConfigLoggingConfig(
      driverLogLevels: pulumi.Input.fromValue((map['driverLogLevels'] as Map).cast<String, String>()),
    );
  }
}

