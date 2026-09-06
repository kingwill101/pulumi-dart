// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Description of NetWorkRuleSet - IpRules resource.
class NWRuleSetIpRules {
  /// The IP Filter Action
  final pulumi.Input<dynamic>? action;
  /// IP Mask
  final pulumi.Input<String?>? ipMask;

  /// Creates a new [NWRuleSetIpRules].
  /// [action] The IP Filter Action
  /// [ipMask] IP Mask
  NWRuleSetIpRules({
    pulumi.Input<dynamic>? action,
    this.ipMask,
  }) : action = action ?? pulumi.Input.fromValue('Allow');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'ipMask': ?ipMask,
    };
  }

  factory NWRuleSetIpRules.fromMap(Map<String, dynamic> map) {
    return NWRuleSetIpRules(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      ipMask: (() { final guardedValue = map['ipMask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
