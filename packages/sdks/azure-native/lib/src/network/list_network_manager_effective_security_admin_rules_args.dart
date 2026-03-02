// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_list_network_manager_effective_security_admin_rules_args_doc}
/// Arguments for listNetworkManagerEffectiveSecurityAdminRules.
/// {@endtemplate}
/// {@macro pulumi_network_list_network_manager_effective_security_admin_rules_args_doc}
class ListNetworkManagerEffectiveSecurityAdminRulesArgs {
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// When present, the value can be passed to a subsequent query call (together with the same query and scopes used in the current request) to retrieve the next page of data.
  final pulumi.Input<String>? skipToken;
  /// An optional query parameter which specifies the maximum number of records to be returned by the server.
  final pulumi.Input<int>? top;
  /// The name of the virtual network.
  final pulumi.Input<String> virtualNetworkName;

  /// Creates a new [ListNetworkManagerEffectiveSecurityAdminRulesArgs].
  /// [resourceGroupName] The name of the resource group.
  /// [skipToken] When present, the value can be passed to a subsequent query call (together with the same query and scopes used in the current request) to retrieve the next page of data.
  /// [top] An optional query parameter which specifies the maximum number of records to be returned by the server.
  /// [virtualNetworkName] The name of the virtual network.
  ListNetworkManagerEffectiveSecurityAdminRulesArgs({
    required this.resourceGroupName,
    this.skipToken,
    this.top,
    required this.virtualNetworkName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'skipToken': ?skipToken,
      'top': ?top,
      'virtualNetworkName': virtualNetworkName,
    };
  }

  factory ListNetworkManagerEffectiveSecurityAdminRulesArgs.fromMap(Map<String, dynamic> map) {
    return ListNetworkManagerEffectiveSecurityAdminRulesArgs(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      skipToken: map['skipToken'] == null ? null : (map['skipToken'] as String).input(),
      top: map['top'] == null ? null : (map['top'] as int).input(),
      virtualNetworkName: (map['virtualNetworkName'] as String).input(),
    );
  }
}

