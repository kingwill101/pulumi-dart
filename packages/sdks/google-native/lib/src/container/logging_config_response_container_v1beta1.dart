// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_component_config_response_container_v1beta1.dart';

/// LoggingConfig is cluster logging configuration.
class LoggingConfigResponseContainerV1beta1 {
  /// Logging components configuration
  final pulumi.Input<LoggingComponentConfigResponseContainerV1beta1> componentConfig;

  /// Creates a new [LoggingConfigResponseContainerV1beta1].
  /// [componentConfig] Logging components configuration
  const LoggingConfigResponseContainerV1beta1({
    required this.componentConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentConfig': pulumi.Input.mapInputValue<LoggingComponentConfigResponseContainerV1beta1, Map<String, dynamic>>(componentConfig, (value) => value.toMap()),
    };
  }

  factory LoggingConfigResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return LoggingConfigResponseContainerV1beta1(
      componentConfig: pulumi.Input.fromValue(LoggingComponentConfigResponseContainerV1beta1.fromMap((map['componentConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
