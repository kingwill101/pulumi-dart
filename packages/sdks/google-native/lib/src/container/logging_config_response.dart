// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_component_config_response.dart';

/// LoggingConfig is cluster logging configuration.
class LoggingConfigResponse {
  /// Logging components configuration
  final pulumi.Input<LoggingComponentConfigResponse> componentConfig;

  /// Creates a new [LoggingConfigResponse].
  /// [componentConfig] Logging components configuration
  const LoggingConfigResponse({
    required this.componentConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentConfig': pulumi.Input.mapInputValue<LoggingComponentConfigResponse, Map<String, dynamic>>(componentConfig, (value) => value.toMap()),
    };
  }

  factory LoggingConfigResponse.fromMap(Map<String, dynamic> map) {
    return LoggingConfigResponse(
      componentConfig: pulumi.Input.fromValue(LoggingComponentConfigResponse.fromMap((map['componentConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

