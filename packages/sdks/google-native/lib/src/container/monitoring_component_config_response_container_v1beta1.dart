// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MonitoringComponentConfig is cluster monitoring component configuration.
class MonitoringComponentConfigResponseContainerV1beta1 {
  /// Select components to collect metrics. An empty set would disable all monitoring.
  final pulumi.Input<List<String>> enableComponents;

  /// Creates a new [MonitoringComponentConfigResponseContainerV1beta1].
  /// [enableComponents] Select components to collect metrics. An empty set would disable all monitoring.
  MonitoringComponentConfigResponseContainerV1beta1({
    required this.enableComponents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enableComponents': enableComponents};
  }

  factory MonitoringComponentConfigResponseContainerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return MonitoringComponentConfigResponseContainerV1beta1(
      enableComponents: pulumi.Input.fromValue(
        (map['enableComponents'] as List).cast<String>(),
      ),
    );
  }
}
