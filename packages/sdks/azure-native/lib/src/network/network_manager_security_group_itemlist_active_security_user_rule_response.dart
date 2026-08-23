// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Network manager security group item.
class NetworkManagerSecurityGroupItemlistActiveSecurityUserRuleResponse {
  /// Network manager group Id.
  final pulumi.Input<String>? networkGroupId;

  /// Creates a new [NetworkManagerSecurityGroupItemlistActiveSecurityUserRuleResponse].
  /// [networkGroupId] Network manager group Id.
  const NetworkManagerSecurityGroupItemlistActiveSecurityUserRuleResponse({
    this.networkGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkGroupId': ?networkGroupId,
    };
  }

  factory NetworkManagerSecurityGroupItemlistActiveSecurityUserRuleResponse.fromMap(Map<String, dynamic> map) {
    return NetworkManagerSecurityGroupItemlistActiveSecurityUserRuleResponse(
      networkGroupId: (() { final guardedValue = map['networkGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
