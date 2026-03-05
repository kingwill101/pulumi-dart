// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_network_rules_private_link_access.dart';

class AccountNetworkRules {
  /// Specifies whether traffic is bypassed for Logging/Metrics/AzureServices. Valid options are any combination of `Logging`, `Metrics`, `AzureServices`, or `None`.
  final pulumi.Input<List<String>>? bypasses;
  /// Specifies the default action of allow or deny when no other rules match. Valid options are `Deny` or `Allow`.
  final pulumi.Input<String> defaultAction;
  /// List of public IP or IP ranges in CIDR Format. Only IPv4 addresses are allowed. /31 CIDRs, /32 CIDRs, and Private IP address ranges (as defined in [RFC 1918](https://tools.ietf.org/html/rfc1918#section-3)), are not allowed.
  final pulumi.Input<List<String>>? ipRules;
  /// One or more `private_link_access` block as defined below.
  ///
  /// &gt; **Note:** If specifying `network_rules`, one of either `ip_rules` or `virtual_network_subnet_ids` must be specified and `default_action` must be set to `Deny`.
  ///
  /// &gt; **Note:** Network Rules can be defined either directly on the `azure.storage.Account` resource, or using the `azure.storage.AccountNetworkRules` resource - but the two cannot be used together. If both are used against the same Storage Account, spurious changes will occur. When managing Network Rules using this resource, to change from a `default_action` of `Deny` to `Allow` requires defining, rather than removing, the block.
  ///
  /// &gt; **Note:** The prefix of `ip_rules` must be between 0 and 30 and only supports public IP addresses.
  final pulumi.Input<List<AccountNetworkRulesPrivateLinkAccess>>? privateLinkAccesses;
  /// A list of resource ids for subnets.
  final pulumi.Input<List<String>>? virtualNetworkSubnetIds;

  /// Creates a new [AccountNetworkRules].
  /// [bypasses] Specifies whether traffic is bypassed for Logging/Metrics/AzureServices. Valid options are any combination of `Logging`, `Metrics`, `AzureServices`, or `None`.
  /// [defaultAction] Specifies the default action of allow or deny when no other rules match. Valid options are `Deny` or `Allow`.
  /// [ipRules] List of public IP or IP ranges in CIDR Format. Only IPv4 addresses are allowed. /31 CIDRs, /32 CIDRs, and Private IP address ranges (as defined in [RFC 1918](https://tools.ietf.org/html/rfc1918#section-3)), are not allowed.
  /// [privateLinkAccesses] One or more `private_link_access` block as defined below.
  /// [virtualNetworkSubnetIds] A list of resource ids for subnets.
  AccountNetworkRules({
    this.bypasses,
    required this.defaultAction,
    this.ipRules,
    this.privateLinkAccesses,
    this.virtualNetworkSubnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypasses': ?bypasses,
      'defaultAction': defaultAction,
      'ipRules': ?ipRules,
      'privateLinkAccesses': ?pulumi.Input.mapOptionalInputValue<List<AccountNetworkRulesPrivateLinkAccess>, List<Map<String, dynamic>>>(privateLinkAccesses, (value) => pulumi.Input.encodeList<AccountNetworkRulesPrivateLinkAccess, Map<String, dynamic>>(value, (value) => value.toMap())),
      'virtualNetworkSubnetIds': ?virtualNetworkSubnetIds,
    };
  }

  factory AccountNetworkRules.fromMap(Map<String, dynamic> map) {
    return AccountNetworkRules(
      bypasses: (() { final guardedValue = map['bypasses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      defaultAction: pulumi.Input.fromValue(map['defaultAction'] as String),
      ipRules: (() { final guardedValue = map['ipRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      privateLinkAccesses: (() { final guardedValue = map['privateLinkAccesses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccountNetworkRulesPrivateLinkAccess>(guardedValue, (value) => AccountNetworkRulesPrivateLinkAccess.fromMap((value as Map).cast<String, dynamic>()))); })(),
      virtualNetworkSubnetIds: (() { final guardedValue = map['virtualNetworkSubnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

