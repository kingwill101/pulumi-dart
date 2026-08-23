// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter_items.dart';
import 'order_by.dart';

/// {@template pulumi_network_list_firewall_policy_idps_signature_args_doc}
/// Arguments for listFirewallPolicyIdpsSignature.
/// {@endtemplate}
/// {@macro pulumi_network_list_firewall_policy_idps_signature_args_doc}
class ListFirewallPolicyIdpsSignatureArgs {
  /// Contain all filters names and values
  final pulumi.Input<List<FilterItems>>? filters;
  /// The name of the Firewall Policy.
  final pulumi.Input<String> firewallPolicyName;
  /// Column to sort response by
  final pulumi.Input<OrderBy>? orderBy;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The number of the results to return in each page
  final pulumi.Input<int>? resultsPerPage;
  /// Search term in all columns
  final pulumi.Input<String>? search;
  /// The number of records matching the filter to skip
  final pulumi.Input<int>? skip;

  /// Creates a new [ListFirewallPolicyIdpsSignatureArgs].
  /// [filters] Contain all filters names and values
  /// [firewallPolicyName] The name of the Firewall Policy.
  /// [orderBy] Column to sort response by
  /// [resourceGroupName] The name of the resource group.
  /// [resultsPerPage] The number of the results to return in each page
  /// [search] Search term in all columns
  /// [skip] The number of records matching the filter to skip
  const ListFirewallPolicyIdpsSignatureArgs({
    this.filters,
    required this.firewallPolicyName,
    this.orderBy,
    required this.resourceGroupName,
    this.resultsPerPage,
    this.search,
    this.skip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<FilterItems>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<FilterItems, Map<String, dynamic>>(value, (value) => value.toMap())),
      'firewallPolicyName': firewallPolicyName,
      'orderBy': ?pulumi.Input.mapOptionalInputValue<OrderBy, Map<String, dynamic>>(orderBy, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resultsPerPage': ?resultsPerPage,
      'search': ?search,
      'skip': ?skip,
    };
  }

  factory ListFirewallPolicyIdpsSignatureArgs.fromMap(Map<String, dynamic> map) {
    return ListFirewallPolicyIdpsSignatureArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FilterItems>(guardedValue, (value) => FilterItems.fromMap((value as Map).cast<String, dynamic>()))); })(),
      firewallPolicyName: pulumi.Input.fromValue(map['firewallPolicyName'] as String),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrderBy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resultsPerPage: (() { final guardedValue = map['resultsPerPage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skip: (() { final guardedValue = map['skip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
