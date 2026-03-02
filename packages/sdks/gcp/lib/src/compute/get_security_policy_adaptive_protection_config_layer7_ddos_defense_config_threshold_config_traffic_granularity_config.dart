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

  factory GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigTrafficGranularityConfig.fromMap(Map<String, dynamic> map) {
    return GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigTrafficGranularityConfig(
      enableEachUniqueValue: (map['enableEachUniqueValue'] as bool).input(),
      type: (map['type'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

