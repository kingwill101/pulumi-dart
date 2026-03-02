// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowTemplateJobSparkJobLoggingConfig {
  /// The per-package log levels for the driver. This may include "root" package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'
  final pulumi.Input<Map<String, String>>? driverLogLevels;

  /// Creates a new [WorkflowTemplateJobSparkJobLoggingConfig].
  /// [driverLogLevels] The per-package log levels for the driver. This may include "root" package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'
  WorkflowTemplateJobSparkJobLoggingConfig({
    this.driverLogLevels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'driverLogLevels': ?driverLogLevels,
    };
  }

  factory WorkflowTemplateJobSparkJobLoggingConfig.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplateJobSparkJobLoggingConfig(
      driverLogLevels: map['driverLogLevels'] == null ? null : ((map['driverLogLevels'] as Map).cast<String, String>()).input(),
    );
  }
}

