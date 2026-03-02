// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_network_rules_private_link_access_rule.dart';

/// {@template pulumi_storage_account_network_rules_account_network_rules_args_doc}
/// The set of arguments for AccountNetworkRules.
/// {@endtemplate}
/// {@macro pulumi_storage_account_network_rules_account_network_rules_args_doc}
class AccountNetworkRulesArgs {
  /// Specifies whether traffic is bypassed for Logging/Metrics/AzureServices. Valid options are any combination of `Logging`, `Metrics`, `AzureServices`, or `None`. Defaults to `["AzureServices"]`.
  ///
  /// > **Note:** User has to explicitly set `bypass` to empty slice (`[]`) to remove it.
  final pulumi.Input<List<String>>? bypasses;
  /// Specifies the default action of allow or deny when no other rules match. Valid options are `Deny` or `Allow`.
  final pulumi.Input<String> defaultAction;
  /// List of public IP or IP ranges in CIDR Format. Only IPv4 addresses are allowed. Private IP address ranges (as defined in [RFC 1918](https://tools.ietf.org/html/rfc1918#section-3)) are not allowed.
  ///
  /// > **Note:** Small address ranges using "/31" or "/32" prefix sizes are not supported. These ranges should be configured using individual IP address rules without prefix specified.
  ///
  /// > **Note:** IP network rules have no effect on requests originating from the same Azure region as the storage account. Use Virtual network rules to allow same-region requests. Services deployed in the same region as the storage account use private Azure IP addresses for communication. Thus, you cannot restrict access to specific Azure services based on their public outbound IP address range.
  ///
  /// > **Note:** User has to explicitly set `ip_rules` to empty slice (`[]`) to remove it.
  final pulumi.Input<List<String>>? ipRules;
  /// One or more `private_link_access` block as defined below.
  final pulumi.Input<List<AccountNetworkRulesPrivateLinkAccessRule>>? privateLinkAccessRules;
  /// Specifies the ID of the storage account. Changing this forces a new resource to be created.
  final pulumi.Input<String> storageAccountId;
  /// A list of virtual network subnet ids to secure the storage account.
  ///
  /// > **Note:** User has to explicitly set `virtual_network_subnet_ids` to empty slice (`[]`) to remove it.
  final pulumi.Input<List<String>>? virtualNetworkSubnetIds;

  /// Creates a new [AccountNetworkRulesArgs].
  /// [bypasses] Specifies whether traffic is bypassed for Logging/Metrics/AzureServices. Valid options are any combination of `Logging`, `Metrics`, `AzureServices`, or `None`. Defaults to `["AzureServices"]`.
  /// [defaultAction] Specifies the default action of allow or deny when no other rules match. Valid options are `Deny` or `Allow`.
  /// [ipRules] List of public IP or IP ranges in CIDR Format. Only IPv4 addresses are allowed. Private IP address ranges (as defined in [RFC 1918](https://tools.ietf.org/html/rfc1918#section-3)) are not allowed.
  /// [privateLinkAccessRules] One or more `private_link_access` block as defined below.
  /// [storageAccountId] Specifies the ID of the storage account. Changing this forces a new resource to be created.
  /// [virtualNetworkSubnetIds] A list of virtual network subnet ids to secure the storage account.
  AccountNetworkRulesArgs({
    this.bypasses,
    required this.defaultAction,
    this.ipRules,
    this.privateLinkAccessRules,
    required this.storageAccountId,
    this.virtualNetworkSubnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypasses': ?bypasses,
      'defaultAction': defaultAction,
      'ipRules': ?ipRules,
      'privateLinkAccessRules': ?pulumi.Input.mapOptionalInputValue<List<AccountNetworkRulesPrivateLinkAccessRule>, List<Map<String, dynamic>>>(privateLinkAccessRules, (value) => pulumi.Input.encodeList<AccountNetworkRulesPrivateLinkAccessRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageAccountId': storageAccountId,
      'virtualNetworkSubnetIds': ?virtualNetworkSubnetIds,
    };
  }

  factory AccountNetworkRulesArgs.fromMap(Map<String, dynamic> map) {
    return AccountNetworkRulesArgs(
      bypasses: map['bypasses'] == null ? null : ((map['bypasses'] as List).cast<String>()).input(),
      defaultAction: (map['defaultAction'] as String).input(),
      ipRules: map['ipRules'] == null ? null : ((map['ipRules'] as List).cast<String>()).input(),
      privateLinkAccessRules: map['privateLinkAccessRules'] == null ? null : (pulumi.Input.decodeList<AccountNetworkRulesPrivateLinkAccessRule>(map['privateLinkAccessRules'], (value) => AccountNetworkRulesPrivateLinkAccessRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      storageAccountId: (map['storageAccountId'] as String).input(),
      virtualNetworkSubnetIds: map['virtualNetworkSubnetIds'] == null ? null : ((map['virtualNetworkSubnetIds'] as List).cast<String>()).input(),
    );
  }
}

