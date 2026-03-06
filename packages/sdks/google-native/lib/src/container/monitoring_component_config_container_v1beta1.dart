// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitoring_component_config_enable_components_item_container_v1beta1.dart';

/// MonitoringComponentConfig is cluster monitoring component configuration.
class MonitoringComponentConfigContainerV1beta1 {
  /// Select components to collect metrics. An empty set would disable all monitoring.
  final pulumi.Input<List<MonitoringComponentConfigEnableComponentsItemContainerV1beta1>>? enableComponents;

  /// Creates a new [MonitoringComponentConfigContainerV1beta1].
  /// [enableComponents] Select components to collect metrics. An empty set would disable all monitoring.
  const MonitoringComponentConfigContainerV1beta1({
    this.enableComponents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableComponents': ?pulumi.Input.mapOptionalInputValue<List<MonitoringComponentConfigEnableComponentsItemContainerV1beta1>, List<String>>(enableComponents, (value) => pulumi.Input.encodeList<MonitoringComponentConfigEnableComponentsItemContainerV1beta1, String>(value, (value) => value.wireValue)),
    };
  }

  factory MonitoringComponentConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return MonitoringComponentConfigContainerV1beta1(
      enableComponents: (() { final guardedValue = map['enableComponents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MonitoringComponentConfigEnableComponentsItemContainerV1beta1>(guardedValue, (value) => MonitoringComponentConfigEnableComponentsItemContainerV1beta1.fromValue(value as String))); })(),
    );
  }
}

