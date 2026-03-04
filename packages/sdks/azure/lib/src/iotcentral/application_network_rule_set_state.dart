// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_network_rule_set_ip_rule.dart';

/// Input properties used for looking up and filtering ApplicationNetworkRuleSet resources.
class ApplicationNetworkRuleSetState {
  /// Whether these IP Rules apply for device connectivity to IoT Hub and Device Provisioning Service associated with this IoT Central Application. Possible values are `true`, `false`. Defaults to `true`
  final pulumi.Input<bool>? applyToDevice;

  /// Specifies the default action for the IoT Central Application Network Rule Set. Possible values are `Allow` and `Deny`. Defaults to `Deny`.
  final pulumi.Input<String>? defaultAction;

  /// The ID of the IoT Central Application. Changing this forces a new resource to be created.
  final pulumi.Input<String>? iotcentralApplicationId;

  /// One or more `ip_rule` blocks as defined below.
  final pulumi.Input<List<ApplicationNetworkRuleSetIpRule>>? ipRules;

  /// Creates a new [ApplicationNetworkRuleSetState].
  /// [applyToDevice] Whether these IP Rules apply for device connectivity to IoT Hub and Device Provisioning Service associated with this IoT Central Application. Possible values are `true`, `false`. Defaults to `true`
  /// [defaultAction] Specifies the default action for the IoT Central Application Network Rule Set. Possible values are `Allow` and `Deny`. Defaults to `Deny`.
  /// [iotcentralApplicationId] The ID of the IoT Central Application. Changing this forces a new resource to be created.
  /// [ipRules] One or more `ip_rule` blocks as defined below.
  ApplicationNetworkRuleSetState({
    this.applyToDevice,
    this.defaultAction,
    this.iotcentralApplicationId,
    this.ipRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyToDevice': ?applyToDevice,
      'defaultAction': ?defaultAction,
      'iotcentralApplicationId': ?iotcentralApplicationId,
      'ipRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<ApplicationNetworkRuleSetIpRule>,
            List<Map<String, dynamic>>
          >(
            ipRules,
            (value) =>
                pulumi.Input.encodeList<
                  ApplicationNetworkRuleSetIpRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ApplicationNetworkRuleSetState.fromMap(Map<String, dynamic> map) {
    return ApplicationNetworkRuleSetState(
      applyToDevice: (() {
        final guardedValue = map['applyToDevice'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      defaultAction: (() {
        final guardedValue = map['defaultAction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      iotcentralApplicationId: (() {
        final guardedValue = map['iotcentralApplicationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipRules: (() {
        final guardedValue = map['ipRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ApplicationNetworkRuleSetIpRule>(
            guardedValue,
            (value) => ApplicationNetworkRuleSetIpRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
