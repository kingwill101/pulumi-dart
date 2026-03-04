// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigTrafficGranularityConfig {
  /// If enabled, traffic matching each unique value for the specified type constitutes a separate traffic unit. It can only be set to true if value is empty.
  final pulumi.Input<bool> enableEachUniqueValue;

  /// Type of this configuration.
  final pulumi.Input<String> type;

  /// Requests that match this value constitute a granular traffic unit.
  final pulumi.Input<String> value;

  /// Creates a new [GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigTrafficGranularityConfig].
  /// [enableEachUniqueValue] If enabled, traffic matching each unique value for the specified type constitutes a separate traffic unit. It can only be set to true if value is empty.
  /// [type] Type of this configuration.
  /// [value] Requests that match this value constitute a granular traffic unit.
  GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigTrafficGranularityConfig({
    required this.enableEachUniqueValue,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableEachUniqueValue': enableEachUniqueValue,
      'type': type,
      'value': value,
    };
  }

  factory GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigTrafficGranularityConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigTrafficGranularityConfig(
      enableEachUniqueValue: pulumi.Input.fromValue(
        map['enableEachUniqueValue'] as bool,
      ),
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
