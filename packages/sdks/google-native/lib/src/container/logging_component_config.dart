// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_component_config_enable_components_item.dart';

/// LoggingComponentConfig is cluster logging component configuration.
class LoggingComponentConfig {
  /// Select components to collect logs. An empty set would disable all logging.
  final pulumi.Input<List<LoggingComponentConfigEnableComponentsItem>>? enableComponents;

  /// Creates a new [LoggingComponentConfig].
  /// [enableComponents] Select components to collect logs. An empty set would disable all logging.
  LoggingComponentConfig({
    this.enableComponents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableComponents': ?pulumi.Input.mapOptionalInputValue<List<LoggingComponentConfigEnableComponentsItem>, List<String>>(enableComponents, (value) => pulumi.Input.encodeList<LoggingComponentConfigEnableComponentsItem, String>(value, (value) => value.value)),
    };
  }

  factory LoggingComponentConfig.fromMap(Map<String, dynamic> map) {
    return LoggingComponentConfig(
      enableComponents: map['enableComponents'] == null ? null : (pulumi.Input.decodeList<LoggingComponentConfigEnableComponentsItem>(map['enableComponents']!, (value) => LoggingComponentConfigEnableComponentsItem.fromValue(value as String))).input(),
    );
  }
}

