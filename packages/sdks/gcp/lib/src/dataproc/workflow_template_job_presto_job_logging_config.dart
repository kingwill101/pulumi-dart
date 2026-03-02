// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowTemplateJobPrestoJobLoggingConfig {
  /// The per-package log levels for the driver. This may include "root" package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'
  final pulumi.Input<Map<String, String>>? driverLogLevels;

  /// Creates a new [WorkflowTemplateJobPrestoJobLoggingConfig].
  /// [driverLogLevels] The per-package log levels for the driver. This may include "root" package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'
  WorkflowTemplateJobPrestoJobLoggingConfig({
    this.driverLogLevels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'driverLogLevels': ?driverLogLevels,
    };
  }

  factory WorkflowTemplateJobPrestoJobLoggingConfig.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplateJobPrestoJobLoggingConfig(
      driverLogLevels: map['driverLogLevels'] == null ? null : ((map['driverLogLevels'] as Map).cast<String, String>()).input(),
    );
  }
}

