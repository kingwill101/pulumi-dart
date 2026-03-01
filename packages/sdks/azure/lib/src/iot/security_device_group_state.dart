// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_device_group_allow_rule.dart';
import 'security_device_group_range_rule.dart';

/// Input properties used for looking up and filtering SecurityDeviceGroup resources.
class SecurityDeviceGroupState {
  /// an `allow_rule` blocks as defined below.
  final pulumi.Input<SecurityDeviceGroupAllowRule>? allowRule;
  /// The ID of the IoT Hub which to link the Security Device Group to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? iothubId;
  /// Specifies the name of the Device Security Group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// One or more `range_rule` blocks as defined below.
  final pulumi.Input<List<SecurityDeviceGroupRangeRule>>? rangeRules;

  /// Creates a new [SecurityDeviceGroupState].
  /// [allowRule] an `allow_rule` blocks as defined below.
  /// [iothubId] The ID of the IoT Hub which to link the Security Device Group to. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Device Security Group. Changing this forces a new resource to be created.
  /// [rangeRules] One or more `range_rule` blocks as defined below.
  SecurityDeviceGroupState({
    pulumi.Output<SecurityDeviceGroupAllowRule>? allowRule,
    pulumi.Output<String>? iothubId,
    pulumi.Output<String>? name,
    pulumi.Output<List<SecurityDeviceGroupRangeRule>>? rangeRules,
  }) :
      allowRule = pulumi.Input.asOptionalInput<SecurityDeviceGroupAllowRule>(allowRule),
      iothubId = pulumi.Input.asOptionalInput<String>(iothubId),
      name = pulumi.Input.asOptionalInput<String>(name),
      rangeRules = pulumi.Input.asOptionalInput<List<SecurityDeviceGroupRangeRule>>(rangeRules);

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
      allowRule: map['allowRule'] == null ? null : pulumi.Output.create<SecurityDeviceGroupAllowRule>(SecurityDeviceGroupAllowRule.fromMap((map['allowRule'] as Map).cast<String, dynamic>())),
      iothubId: map['iothubId'] == null ? null : pulumi.Output.create<String>(map['iothubId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      rangeRules: map['rangeRules'] == null ? null : pulumi.Output.create<List<SecurityDeviceGroupRangeRule>>(pulumi.Input.decodeList<SecurityDeviceGroupRangeRule>(map['rangeRules'], (value) => SecurityDeviceGroupRangeRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

