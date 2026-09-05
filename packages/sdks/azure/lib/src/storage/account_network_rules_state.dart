// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_network_rules_private_link_access_rule.dart';

/// Input properties used for looking up and filtering AccountNetworkRules resources.
class AccountNetworkRulesState {
  /// Specifies whether traffic is bypassed for Logging/Metrics/AzureServices. Valid options are any combination of `Logging`, `Metrics`, `AzureServices`, or `None`. Defaults to `["AzureServices"]`.
  ///
  /// &gt; **Note:** User has to explicitly set `bypass` to empty slice (`[]`) to remove it.
  final pulumi.Input<List<String>?>? bypasses;
  /// Specifies the default action of allow or deny when no other rules match. Valid options are `Deny` or `Allow`.
  final pulumi.Input<String?>? defaultAction;
  /// List of public IP or IP ranges in CIDR Format. Only IPv4 addresses are allowed. Private IP address ranges (as defined in [RFC 1918](https://tools.ietf.org/html/rfc1918#section-3)) are not allowed.
  ///
  /// &gt; **Note:** Small address ranges using "/31" or "/32" prefix sizes are not supported. These ranges should be configured using individual IP address rules without prefix specified.
  ///
  /// &gt; **Note:** IP network rules have no effect on requests originating from the same Azure region as the storage account. Use Virtual network rules to allow same-region requests. Services deployed in the same region as the storage account use private Azure IP addresses for communication. Thus, you cannot restrict access to specific Azure services based on their public outbound IP address range.
  ///
  /// &gt; **Note:** User has to explicitly set `ipRules` to empty slice (`[]`) to remove it.
  final pulumi.Input<List<String>?>? ipRules;
  /// One or more `privateLinkAccess` block as defined below.
  final pulumi.Input<List<AccountNetworkRulesPrivateLinkAccessRule>?>? privateLinkAccessRules;
  /// Specifies the ID of the storage account. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? storageAccountId;
  /// A list of virtual network subnet ids to secure the storage account.
  ///
  /// &gt; **Note:** User has to explicitly set `virtualNetworkSubnetIds` to empty slice (`[]`) to remove it.
  final pulumi.Input<List<String>?>? virtualNetworkSubnetIds;

  /// Creates a new [AccountNetworkRulesState].
  /// [bypasses] Specifies whether traffic is bypassed for Logging/Metrics/AzureServices. Valid options are any combination of `Logging`, `Metrics`, `AzureServices`, or `None`. Defaults to `["AzureServices"]`.
  /// [defaultAction] Specifies the default action of allow or deny when no other rules match. Valid options are `Deny` or `Allow`.
  /// [ipRules] List of public IP or IP ranges in CIDR Format. Only IPv4 addresses are allowed. Private IP address ranges (as defined in [RFC 1918](https://tools.ietf.org/html/rfc1918#section-3)) are not allowed.
  /// [privateLinkAccessRules] One or more `privateLinkAccess` block as defined below.
  /// [storageAccountId] Specifies the ID of the storage account. Changing this forces a new resource to be created.
  /// [virtualNetworkSubnetIds] A list of virtual network subnet ids to secure the storage account.
  const AccountNetworkRulesState({
    this.bypasses,
    this.defaultAction,
    this.ipRules,
    this.privateLinkAccessRules,
    this.storageAccountId,
    this.virtualNetworkSubnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypasses': ?bypasses,
      'defaultAction': ?defaultAction,
      'ipRules': ?ipRules,
      'privateLinkAccessRules': ?pulumi.Input.mapOptionalInputValue<List<AccountNetworkRulesPrivateLinkAccessRule>, List<Map<String, dynamic>>>(privateLinkAccessRules, (value) => pulumi.Input.encodeList<AccountNetworkRulesPrivateLinkAccessRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageAccountId': ?storageAccountId,
      'virtualNetworkSubnetIds': ?virtualNetworkSubnetIds,
    };
  }

  factory AccountNetworkRulesState.fromMap(Map<String, dynamic> map) {
    return AccountNetworkRulesState(
      bypasses: (() { final guardedValue = map['bypasses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      defaultAction: (() { final guardedValue = map['defaultAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipRules: (() { final guardedValue = map['ipRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      privateLinkAccessRules: (() { final guardedValue = map['privateLinkAccessRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccountNetworkRulesPrivateLinkAccessRule>(guardedValue, (value) => AccountNetworkRulesPrivateLinkAccessRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualNetworkSubnetIds: (() { final guardedValue = map['virtualNetworkSubnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
