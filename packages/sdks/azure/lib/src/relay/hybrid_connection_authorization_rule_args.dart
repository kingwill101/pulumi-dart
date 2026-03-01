// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_relay_hybrid_connection_authorization_rule_hybrid_connection_authorization_rule_args_doc}
/// The set of arguments for HybridConnectionAuthorizationRule.
/// {@endtemplate}
/// {@macro pulumi_relay_hybrid_connection_authorization_rule_hybrid_connection_authorization_rule_args_doc}
class HybridConnectionAuthorizationRuleArgs {
  /// Name of the Azure Relay Hybrid Connection for which this Azure Relay Hybrid Connection Authorization Rule will be created. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created.
  final pulumi.Input<String> hybridConnectionName;
  /// Grants listen access to this Authorization Rule. Defaults to `false`.
  final pulumi.Input<bool>? listen;
  /// Grants manage access to this Authorization Rule. When this property is `true` - both `listen` and `send` must be set to `true` too. Defaults to `false`.
  final pulumi.Input<bool>? manage;
  /// The name which should be used for this Azure Relay Hybrid Connection Authorization Rule. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created.
  final pulumi.Input<String>? name;
  /// Name of the Azure Relay Namespace for which this Azure Relay Hybrid Connection Authorization Rule will be created. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created.
  final pulumi.Input<String> namespaceName;
  /// The name of the Resource Group where the Azure Relay Hybrid Connection Authorization Rule should exist. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Grants send access to this Authorization Rule. Defaults to `false`.
  final pulumi.Input<bool>? send;

  /// Creates a new [HybridConnectionAuthorizationRuleArgs].
  /// [hybridConnectionName] Name of the Azure Relay Hybrid Connection for which this Azure Relay Hybrid Connection Authorization Rule will be created. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created.
  /// [listen] Grants listen access to this Authorization Rule. Defaults to `false`.
  /// [manage] Grants manage access to this Authorization Rule. When this property is `true` - both `listen` and `send` must be set to `true` too. Defaults to `false`.
  /// [name] The name which should be used for this Azure Relay Hybrid Connection Authorization Rule. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created.
  /// [namespaceName] Name of the Azure Relay Namespace for which this Azure Relay Hybrid Connection Authorization Rule will be created. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created.
  /// [resourceGroupName] The name of the Resource Group where the Azure Relay Hybrid Connection Authorization Rule should exist. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created.
  /// [send] Grants send access to this Authorization Rule. Defaults to `false`.
  HybridConnectionAuthorizationRuleArgs({
    required pulumi.Output<String> hybridConnectionName,
    pulumi.Output<bool>? listen,
    pulumi.Output<bool>? manage,
    pulumi.Output<String>? name,
    required pulumi.Output<String> namespaceName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<bool>? send,
  }) :
      hybridConnectionName = pulumi.Input.asInput<String>(hybridConnectionName),
      listen = pulumi.Input.asOptionalInput<bool>(listen),
      manage = pulumi.Input.asOptionalInput<bool>(manage),
      name = pulumi.Input.asOptionalInput<String>(name),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      send = pulumi.Input.asOptionalInput<bool>(send);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hybridConnectionName': hybridConnectionName,
      'listen': ?listen,
      'manage': ?manage,
      'name': ?name,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
      'send': ?send,
    };
  }

  factory HybridConnectionAuthorizationRuleArgs.fromMap(Map<String, dynamic> map) {
    return HybridConnectionAuthorizationRuleArgs(
      hybridConnectionName: pulumi.Output.create<String>(map['hybridConnectionName'] as String),
      listen: map['listen'] == null ? null : pulumi.Output.create<bool>(map['listen'] as bool),
      manage: map['manage'] == null ? null : pulumi.Output.create<bool>(map['manage'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      send: map['send'] == null ? null : pulumi.Output.create<bool>(map['send'] as bool),
    );
  }
}

