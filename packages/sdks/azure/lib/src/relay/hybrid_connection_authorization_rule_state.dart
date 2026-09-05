// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HybridConnectionAuthorizationRule resources.
class HybridConnectionAuthorizationRuleState {
  /// Name of the Azure Relay Hybrid Connection for which this Azure Relay Hybrid Connection Authorization Rule will be created. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created.
  final pulumi.Input<String?>? hybridConnectionName;
  /// Grants listen access to this Authorization Rule. Defaults to `false`.
  final pulumi.Input<bool?>? listen;
  /// Grants manage access to this Authorization Rule. When this property is `true` - both `listen` and `send` must be set to `true` too. Defaults to `false`.
  final pulumi.Input<bool?>? manage;
  /// The name which should be used for this Azure Relay Hybrid Connection Authorization Rule. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created.
  final pulumi.Input<String?>? name;
  /// Name of the Azure Relay Namespace for which this Azure Relay Hybrid Connection Authorization Rule will be created. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created.
  final pulumi.Input<String?>? namespaceName;
  /// The Primary Connection String for the Azure Relay Hybrid Connection Authorization Rule.
  final pulumi.Input<String?>? primaryConnectionString;
  /// The Primary Key for the Azure Relay Hybrid Connection Authorization Rule.
  final pulumi.Input<String?>? primaryKey;
  /// The name of the Resource Group where the Azure Relay Hybrid Connection Authorization Rule should exist. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// The Secondary Connection String for the Azure Relay Hybrid Connection Authorization Rule.
  final pulumi.Input<String?>? secondaryConnectionString;
  /// The Secondary Key for the Azure Relay Hybrid Connection Authorization Rule.
  final pulumi.Input<String?>? secondaryKey;
  /// Grants send access to this Authorization Rule. Defaults to `false`.
  final pulumi.Input<bool?>? send;

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
  const HybridConnectionAuthorizationRuleState({
    this.hybridConnectionName,
    this.listen,
    this.manage,
    this.name,
    this.namespaceName,
    this.primaryConnectionString,
    this.primaryKey,
    this.resourceGroupName,
    this.secondaryConnectionString,
    this.secondaryKey,
    this.send,
  });

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
      hybridConnectionName: (() { final guardedValue = map['hybridConnectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      listen: (() { final guardedValue = map['listen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      manage: (() { final guardedValue = map['manage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceName: (() { final guardedValue = map['namespaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryConnectionString: (() { final guardedValue = map['primaryConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryConnectionString: (() { final guardedValue = map['secondaryConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryKey: (() { final guardedValue = map['secondaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      send: (() { final guardedValue = map['send']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
