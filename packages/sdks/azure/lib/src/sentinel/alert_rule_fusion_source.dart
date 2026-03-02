// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_rule_fusion_source_sub_type.dart';

class AlertRuleFusionSource {
  /// Whether this source signal is enabled or disabled in Fusion detection? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The name of the Fusion source signal. Refer to Fusion alert rule template for supported values.
  final pulumi.Input<String> name;
  /// One or more `sub_type` blocks as defined below.
  final pulumi.Input<List<AlertRuleFusionSourceSubType>>? subTypes;

  /// Creates a new [AlertRuleFusionSource].
  /// [enabled] Whether this source signal is enabled or disabled in Fusion detection? Defaults to `true`.
  /// [name] The name of the Fusion source signal. Refer to Fusion alert rule template for supported values.
  /// [subTypes] One or more `sub_type` blocks as defined below.
  AlertRuleFusionSource({
    this.enabled,
    required this.name,
    this.subTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'name': name,
      'subTypes': ?pulumi.Input.mapOptionalInputValue<List<AlertRuleFusionSourceSubType>, List<Map<String, dynamic>>>(subTypes, (value) => pulumi.Input.encodeList<AlertRuleFusionSourceSubType, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AlertRuleFusionSource.fromMap(Map<String, dynamic> map) {
    return AlertRuleFusionSource(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      name: (map['name'] as String).input(),
      subTypes: map['subTypes'] == null ? null : (pulumi.Input.decodeList<AlertRuleFusionSourceSubType>(map['subTypes'], (value) => AlertRuleFusionSourceSubType.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

