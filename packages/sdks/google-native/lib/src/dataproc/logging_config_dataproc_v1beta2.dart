// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The runtime logging config of the job.
class LoggingConfigDataprocV1beta2 {
  /// The per-package log levels for the driver. This may include "root" package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'
  final pulumi.Input<Map<String, String>>? driverLogLevels;

  /// Creates a new [LoggingConfigDataprocV1beta2].
  /// [driverLogLevels] The per-package log levels for the driver. This may include "root" package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'
  LoggingConfigDataprocV1beta2({
    this.driverLogLevels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'driverLogLevels': ?driverLogLevels,
    };
  }

  factory LoggingConfigDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return LoggingConfigDataprocV1beta2(
      driverLogLevels: map['driverLogLevels'] == null ? null : ((map['driverLogLevels'] as Map).cast<String, String>()).input(),
    );
  }
}

