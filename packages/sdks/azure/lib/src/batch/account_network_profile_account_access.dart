// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_network_profile_account_access_ip_rule.dart';

class AccountNetworkProfileAccountAccess {
  /// Specifies the default action for the account access. Possible values are `Allow` and `Deny`. Defaults to `Deny`.
  final pulumi.Input<String>? defaultAction;

  /// One or more `ip_rule` blocks as defined below.
  final pulumi.Input<List<AccountNetworkProfileAccountAccessIpRule>>? ipRules;

  /// Creates a new [AccountNetworkProfileAccountAccess].
  /// [defaultAction] Specifies the default action for the account access. Possible values are `Allow` and `Deny`. Defaults to `Deny`.
  /// [ipRules] One or more `ip_rule` blocks as defined below.
  AccountNetworkProfileAccountAccess({this.defaultAction, this.ipRules});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultAction': ?defaultAction,
      'ipRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<AccountNetworkProfileAccountAccessIpRule>,
            List<Map<String, dynamic>>
          >(
            ipRules,
            (value) =>
                pulumi.Input.encodeList<
                  AccountNetworkProfileAccountAccessIpRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory AccountNetworkProfileAccountAccess.fromMap(Map<String, dynamic> map) {
    return AccountNetworkProfileAccountAccess(
      defaultAction: (() {
        final guardedValue = map['defaultAction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipRules: (() {
        final guardedValue = map['ipRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AccountNetworkProfileAccountAccessIpRule>(
            guardedValue,
            (value) => AccountNetworkProfileAccountAccessIpRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
