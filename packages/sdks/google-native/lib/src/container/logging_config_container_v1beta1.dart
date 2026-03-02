// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_component_config_container_v1beta1.dart';

/// LoggingConfig is cluster logging configuration.
class LoggingConfigContainerV1beta1 {
  /// Logging components configuration
  final pulumi.Input<LoggingComponentConfigContainerV1beta1>? componentConfig;

  /// Creates a new [LoggingConfigContainerV1beta1].
  /// [componentConfig] Logging components configuration
  LoggingConfigContainerV1beta1({
    this.componentConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentConfig': ?pulumi.Input.mapOptionalInputValue<LoggingComponentConfigContainerV1beta1, Map<String, dynamic>>(componentConfig, (value) => value.toMap()),
    };
  }

  factory LoggingConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return LoggingConfigContainerV1beta1(
      componentConfig: map['componentConfig'] == null ? null : (LoggingComponentConfigContainerV1beta1.fromMap((map['componentConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

