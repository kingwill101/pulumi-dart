// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Network manager security group item.
class NetworkManagerSecurityGroupItemlistNetworkManagerEffectiveSecurityAdminRuleResponse {
  /// Network manager group Id.
  final pulumi.Input<String?>? networkGroupId;

  /// Creates a new [NetworkManagerSecurityGroupItemlistNetworkManagerEffectiveSecurityAdminRuleResponse].
  /// [networkGroupId] Network manager group Id.
  const NetworkManagerSecurityGroupItemlistNetworkManagerEffectiveSecurityAdminRuleResponse({
    this.networkGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkGroupId': ?networkGroupId,
    };
  }

  factory NetworkManagerSecurityGroupItemlistNetworkManagerEffectiveSecurityAdminRuleResponse.fromMap(Map<String, dynamic> map) {
    return NetworkManagerSecurityGroupItemlistNetworkManagerEffectiveSecurityAdminRuleResponse(
      networkGroupId: (() { final guardedValue = map['networkGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
