// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowTemplateJobSparkRJobLoggingConfig {
  /// The per-package log levels for the driver. This may include "root" package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'
  final pulumi.Input<Map<String, String>?>? driverLogLevels;

  /// Creates a new [WorkflowTemplateJobSparkRJobLoggingConfig].
  /// [driverLogLevels] The per-package log levels for the driver. This may include "root" package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'
  const WorkflowTemplateJobSparkRJobLoggingConfig({
    this.driverLogLevels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'driverLogLevels': ?driverLogLevels,
    };
  }

  factory WorkflowTemplateJobSparkRJobLoggingConfig.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplateJobSparkRJobLoggingConfig(
      driverLogLevels: (() { final guardedValue = map['driverLogLevels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
