// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action.dart';

/// IP rule with specific IP or IP range in CIDR format.
class IPRule {
  /// The action of IP ACL rule.
  final pulumi.Input<Action>? action;

  /// Specifies the IP or IP range in CIDR format. Only IPV4 address is allowed.
  final pulumi.Input<String> iPAddressOrRange;

  /// Creates a new [IPRule].
  /// [action] The action of IP ACL rule.
  /// [iPAddressOrRange] Specifies the IP or IP range in CIDR format. Only IPV4 address is allowed.
  IPRule({this.action, required this.iPAddressOrRange});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<Action, String>(
        action,
        (value) => value.wireValue,
      ),
      'iPAddressOrRange': iPAddressOrRange,
    };
  }

  factory IPRule.fromMap(Map<String, dynamic> map) {
    return IPRule(
      action: (() {
        final guardedValue = map['action'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(Action.fromValue(guardedValue as String));
      })(),
      iPAddressOrRange: pulumi.Input.fromValue(
        map['iPAddressOrRange'] as String,
      ),
    );
  }
}
