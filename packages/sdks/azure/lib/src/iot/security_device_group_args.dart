// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_device_group_allow_rule.dart';
import 'security_device_group_range_rule.dart';

/// {@template pulumi_iot_security_device_group_security_device_group_args_doc}
/// The set of arguments for SecurityDeviceGroup.
/// {@endtemplate}
/// {@macro pulumi_iot_security_device_group_security_device_group_args_doc}
class SecurityDeviceGroupArgs {
  /// an `allow_rule` blocks as defined below.
  final pulumi.Input<SecurityDeviceGroupAllowRule>? allowRule;
  /// The ID of the IoT Hub which to link the Security Device Group to. Changing this forces a new resource to be created.
  final pulumi.Input<String> iothubId;
  /// Specifies the name of the Device Security Group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// One or more `range_rule` blocks as defined below.
  final pulumi.Input<List<SecurityDeviceGroupRangeRule>>? rangeRules;

  /// Creates a new [SecurityDeviceGroupArgs].
  /// [allowRule] an `allow_rule` blocks as defined below.
  /// [iothubId] The ID of the IoT Hub which to link the Security Device Group to. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Device Security Group. Changing this forces a new resource to be created.
  /// [rangeRules] One or more `range_rule` blocks as defined below.
  SecurityDeviceGroupArgs({
    this.allowRule,
    required this.iothubId,
    this.name,
    this.rangeRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowRule': ?pulumi.Input.mapOptionalInputValue<SecurityDeviceGroupAllowRule, Map<String, dynamic>>(allowRule, (value) => value.toMap()),
      'iothubId': iothubId,
      'name': ?name,
      'rangeRules': ?pulumi.Input.mapOptionalInputValue<List<SecurityDeviceGroupRangeRule>, List<Map<String, dynamic>>>(rangeRules, (value) => pulumi.Input.encodeList<SecurityDeviceGroupRangeRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SecurityDeviceGroupArgs.fromMap(Map<String, dynamic> map) {
    return SecurityDeviceGroupArgs(
      allowRule: map['allowRule'] == null ? null : (SecurityDeviceGroupAllowRule.fromMap((map['allowRule']! as Map).cast<String, dynamic>())).input(),
      iothubId: (map['iothubId'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      rangeRules: map['rangeRules'] == null ? null : (pulumi.Input.decodeList<SecurityDeviceGroupRangeRule>(map['rangeRules']!, (value) => SecurityDeviceGroupRangeRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

