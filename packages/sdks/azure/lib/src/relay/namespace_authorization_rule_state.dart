// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NamespaceAuthorizationRule resources.
class NamespaceAuthorizationRuleState {
  /// Grants listen access to this Authorization Rule. Defaults to `false`.
  final pulumi.Input<bool>? listen;
  /// Grants manage access to this Authorization Rule. When this property is `true` - both `listen` and `send` must be set to `true` too. Defaults to `false`.
  final pulumi.Input<bool>? manage;
  /// The name which should be used for this Azure Relay Namespace Authorization Rule. Changing this forces a new Azure Relay Namespace Authorization Rule to be created.
  final pulumi.Input<String>? name;
  /// Name of the Azure Relay Namespace for which this Azure Relay Namespace Authorization Rule will be created. Changing this forces a new Azure Relay Namespace Authorization Rule to be created.
  final pulumi.Input<String>? namespaceName;
  /// The Primary Connection String for the Azure Relay Namespace Authorization Rule.
  final pulumi.Input<String>? primaryConnectionString;
  /// The Primary Key for the Azure Relay Namespace Authorization Rule.
  final pulumi.Input<String>? primaryKey;
  /// The name of the Resource Group where the Azure Relay Namespace Authorization Rule should exist. Changing this forces a new Azure Relay Namespace Authorization Rule to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The Secondary Connection String for the Azure Relay Namespace Authorization Rule.
  final pulumi.Input<String>? secondaryConnectionString;
  /// The Secondary Key for the Azure Relay Namespace Authorization Rule.
  final pulumi.Input<String>? secondaryKey;
  /// Grants send access to this Authorization Rule. Defaults to `false`.
  final pulumi.Input<bool>? send;

  /// Creates a new [NamespaceAuthorizationRuleState].
  /// [listen] Grants listen access to this Authorization Rule. Defaults to `false`.
  /// [manage] Grants manage access to this Authorization Rule. When this property is `true` - both `listen` and `send` must be set to `true` too. Defaults to `false`.
  /// [name] The name which should be used for this Azure Relay Namespace Authorization Rule. Changing this forces a new Azure Relay Namespace Authorization Rule to be created.
  /// [namespaceName] Name of the Azure Relay Namespace for which this Azure Relay Namespace Authorization Rule will be created. Changing this forces a new Azure Relay Namespace Authorization Rule to be created.
  /// [primaryConnectionString] The Primary Connection String for the Azure Relay Namespace Authorization Rule.
  /// [primaryKey] The Primary Key for the Azure Relay Namespace Authorization Rule.
  /// [resourceGroupName] The name of the Resource Group where the Azure Relay Namespace Authorization Rule should exist. Changing this forces a new Azure Relay Namespace Authorization Rule to be created.
  /// [secondaryConnectionString] The Secondary Connection String for the Azure Relay Namespace Authorization Rule.
  /// [secondaryKey] The Secondary Key for the Azure Relay Namespace Authorization Rule.
  /// [send] Grants send access to this Authorization Rule. Defaults to `false`.
  NamespaceAuthorizationRuleState({
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

  factory NamespaceAuthorizationRuleState.fromMap(Map<String, dynamic> map) {
    return NamespaceAuthorizationRuleState(
      listen: map['listen'] == null ? null : (map['listen']! as bool).input(),
      manage: map['manage'] == null ? null : (map['manage']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      namespaceName: map['namespaceName'] == null ? null : (map['namespaceName']! as String).input(),
      primaryConnectionString: map['primaryConnectionString'] == null ? null : (map['primaryConnectionString']! as String).input(),
      primaryKey: map['primaryKey'] == null ? null : (map['primaryKey']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      secondaryConnectionString: map['secondaryConnectionString'] == null ? null : (map['secondaryConnectionString']! as String).input(),
      secondaryKey: map['secondaryKey'] == null ? null : (map['secondaryKey']! as String).input(),
      send: map['send'] == null ? null : (map['send']! as bool).input(),
    );
  }
}

