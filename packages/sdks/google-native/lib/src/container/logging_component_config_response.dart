// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// LoggingComponentConfig is cluster logging component configuration.
class LoggingComponentConfigResponse {
  /// Select components to collect logs. An empty set would disable all logging.
  final pulumi.Input<List<String>> enableComponents;

  /// Creates a new [LoggingComponentConfigResponse].
  /// [enableComponents] Select components to collect logs. An empty set would disable all logging.
  LoggingComponentConfigResponse({
    required this.enableComponents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableComponents': enableComponents,
    };
  }

  factory LoggingComponentConfigResponse.fromMap(Map<String, dynamic> map) {
    return LoggingComponentConfigResponse(
      enableComponents: ((map['enableComponents'] as List).cast<String>()).input(),
    );
  }
}

