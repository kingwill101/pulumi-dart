// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobHadoopConfigLoggingConfig {
  /// Optional. The per-package log levels for the driver. This may include 'root' package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'.
  final pulumi.Input<Map<String, String>> driverLogLevels;

  /// Creates a new [JobHadoopConfigLoggingConfig].
  /// [driverLogLevels] Optional. The per-package log levels for the driver. This may include 'root' package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'.
  const JobHadoopConfigLoggingConfig({
    required this.driverLogLevels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'driverLogLevels': driverLogLevels,
    };
  }

  factory JobHadoopConfigLoggingConfig.fromMap(Map<String, dynamic> map) {
    return JobHadoopConfigLoggingConfig(
      driverLogLevels: pulumi.Input.fromValue((map['driverLogLevels'] as Map).cast<String, String>()),
    );
  }
}

