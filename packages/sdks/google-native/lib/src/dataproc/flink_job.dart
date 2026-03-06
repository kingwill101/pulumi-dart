// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_config.dart';

/// A Dataproc job for running Apache Flink applications on YARN.
class FlinkJob {
  /// Optional. The arguments to pass to the driver. Do not include arguments, such as --conf, that can be set as job properties, since a collision might occur that causes an incorrect job submission.
  final pulumi.Input<List<String>>? args;
  /// Optional. HCFS URIs of jar files to add to the CLASSPATHs of the Flink driver and tasks.
  final pulumi.Input<List<String>>? jarFileUris;
  /// Optional. The runtime log config for job execution.
  final pulumi.Input<LoggingConfig>? loggingConfig;
  /// The name of the driver's main class. The jar file that contains the class must be in the default CLASSPATH or specified in jarFileUris.
  final pulumi.Input<String>? mainClass;
  /// The HCFS URI of the jar file that contains the main class.
  final pulumi.Input<String>? mainJarFileUri;
  /// Optional. A mapping of property names to values, used to configure Flink. Properties that conflict with values set by the Dataproc API might beoverwritten. Can include properties set in/etc/flink/conf/flink-defaults.conf and classes in user code.
  final pulumi.Input<Map<String, String>>? properties;
  /// Optional. HCFS URI of the savepoint, which contains the last saved progress for starting the current job.
  final pulumi.Input<String>? savepointUri;

  /// Creates a new [FlinkJob].
  /// [args] Optional. The arguments to pass to the driver. Do not include arguments, such as --conf, that can be set as job properties, since a collision might occur that causes an incorrect job submission.
  /// [jarFileUris] Optional. HCFS URIs of jar files to add to the CLASSPATHs of the Flink driver and tasks.
  /// [loggingConfig] Optional. The runtime log config for job execution.
  /// [mainClass] The name of the driver's main class. The jar file that contains the class must be in the default CLASSPATH or specified in jarFileUris.
  /// [mainJarFileUri] The HCFS URI of the jar file that contains the main class.
  /// [properties] Optional. A mapping of property names to values, used to configure Flink. Properties that conflict with values set by the Dataproc API might beoverwritten. Can include properties set in/etc/flink/conf/flink-defaults.conf and classes in user code.
  /// [savepointUri] Optional. HCFS URI of the savepoint, which contains the last saved progress for starting the current job.
  const FlinkJob({
    this.args,
    this.jarFileUris,
    this.loggingConfig,
    this.mainClass,
    this.mainJarFileUri,
    this.properties,
    this.savepointUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'jarFileUris': ?jarFileUris,
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<LoggingConfig, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
      'mainClass': ?mainClass,
      'mainJarFileUri': ?mainJarFileUri,
      'properties': ?properties,
      'savepointUri': ?savepointUri,
    };
  }

  factory FlinkJob.fromMap(Map<String, dynamic> map) {
    return FlinkJob(
      args: (() { final guardedValue = map['args']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      jarFileUris: (() { final guardedValue = map['jarFileUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      loggingConfig: (() { final guardedValue = map['loggingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mainClass: (() { final guardedValue = map['mainClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mainJarFileUri: (() { final guardedValue = map['mainJarFileUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      savepointUri: (() { final guardedValue = map['savepointUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

