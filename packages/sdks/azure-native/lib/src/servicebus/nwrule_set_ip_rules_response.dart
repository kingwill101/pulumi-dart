// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Description of NetWorkRuleSet - IpRules resource.
class NWRuleSetIpRulesResponse {
  /// The IP Filter Action
  final pulumi.Input<String?>? action;
  /// IP Mask
  final pulumi.Input<String?>? ipMask;

  /// Creates a new [NWRuleSetIpRulesResponse].
  /// [action] The IP Filter Action
  /// [ipMask] IP Mask
  NWRuleSetIpRulesResponse({
    pulumi.Input<String?>? action,
    this.ipMask,
  }) : action = action ?? pulumi.Input.fromValue('Allow');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'ipMask': ?ipMask,
    };
  }

  factory NWRuleSetIpRulesResponse.fromMap(Map<String, dynamic> map) {
    return NWRuleSetIpRulesResponse(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipMask: (() { final guardedValue = map['ipMask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
