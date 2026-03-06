// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_network_profile_account_access.dart';
import 'account_network_profile_node_management_access.dart';

class AccountNetworkProfile {
  /// An `account_access` block as defined below.
  final pulumi.Input<AccountNetworkProfileAccountAccess>? accountAccess;
  /// A `node_management_access` block as defined below.
  ///
  /// &gt; **NOTE:** At least one of `account_access` or `node_management_access` must be specified.
  final pulumi.Input<AccountNetworkProfileNodeManagementAccess>? nodeManagementAccess;

  /// Creates a new [AccountNetworkProfile].
  /// [accountAccess] An `account_access` block as defined below.
  /// [nodeManagementAccess] A `node_management_access` block as defined below.
  const AccountNetworkProfile({
    this.accountAccess,
    this.nodeManagementAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountAccess': ?pulumi.Input.mapOptionalInputValue<AccountNetworkProfileAccountAccess, Map<String, dynamic>>(accountAccess, (value) => value.toMap()),
      'nodeManagementAccess': ?pulumi.Input.mapOptionalInputValue<AccountNetworkProfileNodeManagementAccess, Map<String, dynamic>>(nodeManagementAccess, (value) => value.toMap()),
    };
  }

  factory AccountNetworkProfile.fromMap(Map<String, dynamic> map) {
    return AccountNetworkProfile(
      accountAccess: (() { final guardedValue = map['accountAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountNetworkProfileAccountAccess.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodeManagementAccess: (() { final guardedValue = map['nodeManagementAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountNetworkProfileNodeManagementAccess.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

