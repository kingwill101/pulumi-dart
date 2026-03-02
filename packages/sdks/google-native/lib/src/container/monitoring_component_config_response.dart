// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MonitoringComponentConfig is cluster monitoring component configuration.
class MonitoringComponentConfigResponse {
  /// Select components to collect metrics. An empty set would disable all monitoring.
  final pulumi.Input<List<String>> enableComponents;

  /// Creates a new [MonitoringComponentConfigResponse].
  /// [enableComponents] Select components to collect metrics. An empty set would disable all monitoring.
  MonitoringComponentConfigResponse({
    required this.enableComponents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableComponents': enableComponents,
    };
  }

  factory MonitoringComponentConfigResponse.fromMap(Map<String, dynamic> map) {
    return MonitoringComponentConfigResponse(
      enableComponents: ((map['enableComponents'] as List).cast<String>()).input(),
    );
  }
}

