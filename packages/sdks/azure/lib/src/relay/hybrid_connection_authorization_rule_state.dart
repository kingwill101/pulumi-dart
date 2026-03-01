// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HybridConnectionAuthorizationRule resources.
class HybridConnectionAuthorizationRuleState {
  /// Name of the Azure Relay Hybrid Connection for which this Azure Relay Hybrid Connection Authorization Rule will be created. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created.
  final pulumi.Input<String>? hybridConnectionName;
  /// Grants listen access to this Authorization Rule. Defaults to `false`.
  final pulumi.Input<bool>? listen;
  /// Grants manage access to this Authorization Rule. When this property is `true` - both `listen` and `send` must be set to `true` too. Defaults to `false`.
  final pulumi.Input<bool>? manage;
  /// The name which should be used for this Azure Relay Hybrid Connection Authorization Rule. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created.
  final pulumi.Input<String>? name;
  /// Name of the Azure Relay Namespace for which this Azure Relay Hybrid Connection Authorization Rule will be created. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created.
  final pulumi.Input<String>? namespaceName;
  /// The Primary Connection String for the Azure Relay Hybrid Connection Authorization Rule.
  final pulumi.Input<String>? primaryConnectionString;
  /// The Primary Key for the Azure Relay Hybrid Connection Authorization Rule.
  final pulumi.Input<String>? primaryKey;
  /// The name of the Resource Group where the Azure Relay Hybrid Connection Authorization Rule should exist. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The Secondary Connection String for the Azure Relay Hybrid Connection Authorization Rule.
  final pulumi.Input<String>? secondaryConnectionString;
  /// The Secondary Key for the Azure Relay Hybrid Connection Authorization Rule.
  final pulumi.Input<String>? secondaryKey;
  /// Grants send access to this Authorization Rule. Defaults to `false`.
  final pulumi.Input<bool>? send;

  /// Creates a new [HybridConnectionAuthorizationRuleState].
  /// [hybridConnectionName] Name of the Azure Relay Hybrid Connection for which this Azure Relay Hybrid Connection Authorization Rule will be created. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created.
  /// [listen] Grants listen access to this Authorization Rule. Defaults to `false`.
  /// [manage] Grants manage access to this Authorization Rule. When this property is `true` - both `listen` and `send` must be set to `true` too. Defaults to `false`.
  /// [name] The name which should be used for this Azure Relay Hybrid Connection Authorization Rule. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created.
  /// [namespaceName] Name of the Azure Relay Namespace for which this Azure Relay Hybrid Connection Authorization Rule will be created. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created.
  /// [primaryConnectionString] The Primary Connection String for the Azure Relay Hybrid Connection Authorization Rule.
  /// [primaryKey] The Primary Key for the Azure Relay Hybrid Connection Authorization Rule.
  /// [resourceGroupName] The name of the Resource Group where the Azure Relay Hybrid Connection Authorization Rule should exist. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created.
  /// [secondaryConnectionString] The Secondary Connection String for the Azure Relay Hybrid Connection Authorization Rule.
  /// [secondaryKey] The Secondary Key for the Azure Relay Hybrid Connection Authorization Rule.
  /// [send] Grants send access to this Authorization Rule. Defaults to `false`.
  HybridConnectionAuthorizationRuleState({
    pulumi.Output<String>? hybridConnectionName,
    pulumi.Output<bool>? listen,
    pulumi.Output<bool>? manage,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namespaceName,
    pulumi.Output<String>? primaryConnectionString,
    pulumi.Output<String>? primaryKey,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? secondaryConnectionString,
    pulumi.Output<String>? secondaryKey,
    pulumi.Output<bool>? send,
  }) :
      hybridConnectionName = pulumi.Input.asOptionalInput<String>(hybridConnectionName),
      listen = pulumi.Input.asOptionalInput<bool>(listen),
      manage = pulumi.Input.asOptionalInput<bool>(manage),
      name = pulumi.Input.asOptionalInput<String>(name),
      namespaceName = pulumi.Input.asOptionalInput<String>(namespaceName),
      primaryConnectionString = pulumi.Input.asOptionalInput<String>(primaryConnectionString),
      primaryKey = pulumi.Input.asOptionalInput<String>(primaryKey),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      secondaryConnectionString = pulumi.Input.asOptionalInput<String>(secondaryConnectionString),
      secondaryKey = pulumi.Input.asOptionalInput<String>(secondaryKey),
      send = pulumi.Input.asOptionalInput<bool>(send);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hybridConnectionName': ?hybridConnectionName,
      'listen': ?listen,
      'manage': ?manage,
      'name': ?name,
      'namespaceName': ?namespaceName,
      'primaryConnectionString': ?primaryConnectionString,
      'primaryKey': ?primaryKey,
      'resourceGroupName': ?resourceGroupName,
      'secondaryConnectionString': ?secondaryConnectionString,
      'secondaryKey': ?secondaryKey,
      'send': ?send,
    };
  }

  factory HybridConnectionAuthorizationRuleState.fromMap(Map<String, dynamic> map) {
    return HybridConnectionAuthorizationRuleState(
      hybridConnectionName: map['hybridConnectionName'] == null ? null : pulumi.Output.create<String>(map['hybridConnectionName'] as String),
      listen: map['listen'] == null ? null : pulumi.Output.create<bool>(map['listen'] as bool),
      manage: map['manage'] == null ? null : pulumi.Output.create<bool>(map['manage'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namespaceName: map['namespaceName'] == null ? null : pulumi.Output.create<String>(map['namespaceName'] as String),
      primaryConnectionString: map['primaryConnectionString'] == null ? null : pulumi.Output.create<String>(map['primaryConnectionString'] as String),
      primaryKey: map['primaryKey'] == null ? null : pulumi.Output.create<String>(map['primaryKey'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      secondaryConnectionString: map['secondaryConnectionString'] == null ? null : pulumi.Output.create<String>(map['secondaryConnectionString'] as String),
      secondaryKey: map['secondaryKey'] == null ? null : pulumi.Output.create<String>(map['secondaryKey'] as String),
      send: map['send'] == null ? null : pulumi.Output.create<bool>(map['send'] as bool),
    );
  }
}

