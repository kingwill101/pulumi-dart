// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_device_group_allow_rule.dart';
import 'security_device_group_range_rule.dart';

/// Input properties used for looking up and filtering SecurityDeviceGroup resources.
class SecurityDeviceGroupState {
  /// an `allowRule` blocks as defined below.
  final pulumi.Input<SecurityDeviceGroupAllowRule>? allowRule;
  /// The ID of the IoT Hub which to link the Security Device Group to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? iothubId;
  /// Specifies the name of the Device Security Group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// One or more `rangeRule` blocks as defined below.
  final pulumi.Input<List<SecurityDeviceGroupRangeRule>>? rangeRules;

  /// Creates a new [SecurityDeviceGroupState].
  /// [allowRule] an `allowRule` blocks as defined below.
  /// [iothubId] The ID of the IoT Hub which to link the Security Device Group to. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Device Security Group. Changing this forces a new resource to be created.
  /// [rangeRules] One or more `rangeRule` blocks as defined below.
  const SecurityDeviceGroupState({
    this.allowRule,
    this.iothubId,
    this.name,
    this.rangeRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowRule': ?pulumi.Input.mapOptionalInputValue<SecurityDeviceGroupAllowRule, Map<String, dynamic>>(allowRule, (value) => value.toMap()),
      'iothubId': ?iothubId,
      'name': ?name,
      'rangeRules': ?pulumi.Input.mapOptionalInputValue<List<SecurityDeviceGroupRangeRule>, List<Map<String, dynamic>>>(rangeRules, (value) => pulumi.Input.encodeList<SecurityDeviceGroupRangeRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SecurityDeviceGroupState.fromMap(Map<String, dynamic> map) {
    return SecurityDeviceGroupState(
      allowRule: (() { final guardedValue = map['allowRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityDeviceGroupAllowRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      iothubId: (() { final guardedValue = map['iothubId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rangeRules: (() { final guardedValue = map['rangeRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SecurityDeviceGroupRangeRule>(guardedValue, (value) => SecurityDeviceGroupRangeRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
