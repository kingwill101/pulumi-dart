// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_component_config.dart';

/// LoggingConfig is cluster logging configuration.
class LoggingConfig {
  /// Logging components configuration
  final pulumi.Input<LoggingComponentConfig>? componentConfig;

  /// Creates a new [LoggingConfig].
  /// [componentConfig] Logging components configuration
  LoggingConfig({
    this.componentConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentConfig': ?pulumi.Input.mapOptionalInputValue<LoggingComponentConfig, Map<String, dynamic>>(componentConfig, (value) => value.toMap()),
    };
  }

  factory LoggingConfig.fromMap(Map<String, dynamic> map) {
    return LoggingConfig(
      componentConfig: (() { final guardedValue = map['componentConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoggingComponentConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

