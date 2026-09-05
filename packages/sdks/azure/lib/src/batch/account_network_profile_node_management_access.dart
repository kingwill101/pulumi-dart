// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_network_profile_node_management_access_ip_rule.dart';

class AccountNetworkProfileNodeManagementAccess {
  /// Specifies the default action for the node management access. Possible values are `Allow` and `Deny`. Defaults to `Deny`.
  final pulumi.Input<String?>? defaultAction;
  /// One or more `ipRule` blocks as defined below.
  final pulumi.Input<List<AccountNetworkProfileNodeManagementAccessIpRule>?>? ipRules;

  /// Creates a new [AccountNetworkProfileNodeManagementAccess].
  /// [defaultAction] Specifies the default action for the node management access. Possible values are `Allow` and `Deny`. Defaults to `Deny`.
  /// [ipRules] One or more `ipRule` blocks as defined below.
  const AccountNetworkProfileNodeManagementAccess({
    this.defaultAction,
    this.ipRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultAction': ?defaultAction,
      'ipRules': ?pulumi.Input.mapOptionalInputValue<List<AccountNetworkProfileNodeManagementAccessIpRule>, List<Map<String, dynamic>>>(ipRules, (value) => pulumi.Input.encodeList<AccountNetworkProfileNodeManagementAccessIpRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AccountNetworkProfileNodeManagementAccess.fromMap(Map<String, dynamic> map) {
    return AccountNetworkProfileNodeManagementAccess(
      defaultAction: (() { final guardedValue = map['defaultAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipRules: (() { final guardedValue = map['ipRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccountNetworkProfileNodeManagementAccessIpRule>(guardedValue, (value) => AccountNetworkProfileNodeManagementAccessIpRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
