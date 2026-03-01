// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_list_network_manager_effective_security_admin_rule_args_doc}
/// Arguments for listNetworkManagerEffectiveSecurityAdminRule.
/// {@endtemplate}
/// {@macro pulumi_network_list_network_manager_effective_security_admin_rule_args_doc}
class ListNetworkManagerEffectiveSecurityAdminRuleArgs {
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// When present, the value can be passed to a subsequent query call (together with the same query and scopes used in the current request) to retrieve the next page of data.
  final pulumi.Input<String>? skipToken;
  /// The name of the virtual network.
  final pulumi.Input<String> virtualNetworkName;

  /// Creates a new [ListNetworkManagerEffectiveSecurityAdminRuleArgs].
  /// [resourceGroupName] The name of the resource group.
  /// [skipToken] When present, the value can be passed to a subsequent query call (together with the same query and scopes used in the current request) to retrieve the next page of data.
  /// [virtualNetworkName] The name of the virtual network.
  ListNetworkManagerEffectiveSecurityAdminRuleArgs({
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? skipToken,
    required pulumi.Output<String> virtualNetworkName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      skipToken = pulumi.Input.asOptionalInput<String>(skipToken),
      virtualNetworkName = pulumi.Input.asInput<String>(virtualNetworkName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'skipToken': ?skipToken,
      'virtualNetworkName': virtualNetworkName,
    };
  }

  factory ListNetworkManagerEffectiveSecurityAdminRuleArgs.fromMap(Map<String, dynamic> map) {
    return ListNetworkManagerEffectiveSecurityAdminRuleArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      skipToken: map['skipToken'] == null ? null : pulumi.Output.create<String>(map['skipToken'] as String),
      virtualNetworkName: pulumi.Output.create<String>(map['virtualNetworkName'] as String),
    );
  }
}

