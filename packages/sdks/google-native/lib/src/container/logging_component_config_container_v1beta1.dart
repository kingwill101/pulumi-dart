// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_component_config_enable_components_item_container_v1beta1.dart';

/// LoggingComponentConfig is cluster logging component configuration.
class LoggingComponentConfigContainerV1beta1 {
  /// Select components to collect logs. An empty set would disable all logging.
  final pulumi.Input<List<LoggingComponentConfigEnableComponentsItemContainerV1beta1>>? enableComponents;

  /// Creates a new [LoggingComponentConfigContainerV1beta1].
  /// [enableComponents] Select components to collect logs. An empty set would disable all logging.
  LoggingComponentConfigContainerV1beta1({
    this.enableComponents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableComponents': ?pulumi.Input.mapOptionalInputValue<List<LoggingComponentConfigEnableComponentsItemContainerV1beta1>, List<String>>(enableComponents, (value) => pulumi.Input.encodeList<LoggingComponentConfigEnableComponentsItemContainerV1beta1, String>(value, (value) => value.wireValue)),
    };
  }

  factory LoggingComponentConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return LoggingComponentConfigContainerV1beta1(
      enableComponents: (() { final guardedValue = map['enableComponents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LoggingComponentConfigEnableComponentsItemContainerV1beta1>(guardedValue, (value) => LoggingComponentConfigEnableComponentsItemContainerV1beta1.fromValue(value as String))); })(),
    );
  }
}

