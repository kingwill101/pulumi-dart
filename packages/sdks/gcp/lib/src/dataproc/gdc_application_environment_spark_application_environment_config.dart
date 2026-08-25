// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GdcApplicationEnvironmentSparkApplicationEnvironmentConfig {
  /// A map of default Spark properties to apply to workloads in this application environment. These defaults may be overridden by per-application properties.
  final pulumi.Input<Map<String, String>?>? defaultProperties;
  /// The default Dataproc version to use for applications submitted to this application environment
  final pulumi.Input<String?>? defaultVersion;

  /// Creates a new [GdcApplicationEnvironmentSparkApplicationEnvironmentConfig].
  /// [defaultProperties] A map of default Spark properties to apply to workloads in this application environment. These defaults may be overridden by per-application properties.
  /// [defaultVersion] The default Dataproc version to use for applications submitted to this application environment
  const GdcApplicationEnvironmentSparkApplicationEnvironmentConfig({
    this.defaultProperties,
    this.defaultVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultProperties': ?defaultProperties,
      'defaultVersion': ?defaultVersion,
    };
  }

  factory GdcApplicationEnvironmentSparkApplicationEnvironmentConfig.fromMap(Map<String, dynamic> map) {
    return GdcApplicationEnvironmentSparkApplicationEnvironmentConfig(
      defaultProperties: (() { final guardedValue = map['defaultProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      defaultVersion: (() { final guardedValue = map['defaultVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
