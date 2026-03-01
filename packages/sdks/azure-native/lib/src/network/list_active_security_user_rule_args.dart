// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_list_active_security_user_rule_args_doc}
/// Arguments for listActiveSecurityUserRule.
/// {@endtemplate}
/// {@macro pulumi_network_list_active_security_user_rule_args_doc}
class ListActiveSecurityUserRuleArgs {
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// List of regions.
  final pulumi.Input<List<String>>? regions;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// When present, the value can be passed to a subsequent query call (together with the same query and scopes used in the current request) to retrieve the next page of data.
  final pulumi.Input<String>? skipToken;

  /// Creates a new [ListActiveSecurityUserRuleArgs].
  /// [networkManagerName] The name of the network manager.
  /// [regions] List of regions.
  /// [resourceGroupName] The name of the resource group.
  /// [skipToken] When present, the value can be passed to a subsequent query call (together with the same query and scopes used in the current request) to retrieve the next page of data.
  ListActiveSecurityUserRuleArgs({
    required pulumi.Output<String> networkManagerName,
    pulumi.Output<List<String>>? regions,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? skipToken,
  }) :
      networkManagerName = pulumi.Input.asInput<String>(networkManagerName),
      regions = pulumi.Input.asOptionalInput<List<String>>(regions),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      skipToken = pulumi.Input.asOptionalInput<String>(skipToken);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkManagerName': networkManagerName,
      'regions': ?regions,
      'resourceGroupName': resourceGroupName,
      'skipToken': ?skipToken,
    };
  }

  factory ListActiveSecurityUserRuleArgs.fromMap(Map<String, dynamic> map) {
    return ListActiveSecurityUserRuleArgs(
      networkManagerName: pulumi.Output.create<String>(map['networkManagerName'] as String),
      regions: map['regions'] == null ? null : pulumi.Output.create<List<String>>((map['regions'] as List).cast<String>()),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      skipToken: map['skipToken'] == null ? null : pulumi.Output.create<String>(map['skipToken'] as String),
    );
  }
}

