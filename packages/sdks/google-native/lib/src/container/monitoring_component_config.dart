// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitoring_component_config_enable_components_item.dart';

/// MonitoringComponentConfig is cluster monitoring component configuration.
class MonitoringComponentConfig {
  /// Select components to collect metrics. An empty set would disable all monitoring.
  final pulumi.Input<List<MonitoringComponentConfigEnableComponentsItem>>? enableComponents;

  /// Creates a new [MonitoringComponentConfig].
  /// [enableComponents] Select components to collect metrics. An empty set would disable all monitoring.
  const MonitoringComponentConfig({
    this.enableComponents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableComponents': ?pulumi.Input.mapOptionalInputValue<List<MonitoringComponentConfigEnableComponentsItem>, List<String>>(enableComponents, (value) => pulumi.Input.encodeList<MonitoringComponentConfigEnableComponentsItem, String>(value, (value) => value.wireValue)),
    };
  }

  factory MonitoringComponentConfig.fromMap(Map<String, dynamic> map) {
    return MonitoringComponentConfig(
      enableComponents: (() { final guardedValue = map['enableComponents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MonitoringComponentConfigEnableComponentsItem>(guardedValue, (value) => MonitoringComponentConfigEnableComponentsItem.fromValue(value as String))); })(),
    );
  }
}
