// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EventHubNamespaceAuthorizationRule resources.
class EventHubNamespaceAuthorizationRuleState {
  /// Grants listen access to this this Authorization Rule. Defaults to `false`.
  final pulumi.Input<bool>? listen;

  /// Grants manage access to this this Authorization Rule. When this property is `true` - both `listen` and `send` must be too. Defaults to `false`.
  final pulumi.Input<bool>? manage;

  /// Specifies the name of the Authorization Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// Specifies the name of the EventHub Namespace. Changing this forces a new resource to be created.
  final pulumi.Input<String>? namespaceName;

  /// The Primary Connection String for the Authorization Rule.
  final pulumi.Input<String>? primaryConnectionString;

  /// The alias of the Primary Connection String for the Authorization Rule, which is generated when disaster recovery is enabled.
  final pulumi.Input<String>? primaryConnectionStringAlias;

  /// The Primary Key for the Authorization Rule.
  final pulumi.Input<String>? primaryKey;

  /// The name of the resource group in which the EventHub Namespace exists. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** At least one of the 3 permissions below needs to be set.
  final pulumi.Input<String>? resourceGroupName;

  /// The Secondary Connection String for the Authorization Rule.
  final pulumi.Input<String>? secondaryConnectionString;

  /// The alias of the Secondary Connection String for the Authorization Rule, which is generated when disaster recovery is enabled.
  final pulumi.Input<String>? secondaryConnectionStringAlias;

  /// The Secondary Key for the Authorization Rule.
  final pulumi.Input<String>? secondaryKey;

  /// Grants send access to this this Authorization Rule. Defaults to `false`.
  final pulumi.Input<bool>? send;

  /// Creates a new [EventHubNamespaceAuthorizationRuleState].
  /// [listen] Grants listen access to this this Authorization Rule. Defaults to `false`.
  /// [manage] Grants manage access to this this Authorization Rule. When this property is `true` - both `listen` and `send` must be too. Defaults to `false`.
  /// [name] Specifies the name of the Authorization Rule. Changing this forces a new resource to be created.
  /// [namespaceName] Specifies the name of the EventHub Namespace. Changing this forces a new resource to be created.
  /// [primaryConnectionString] The Primary Connection String for the Authorization Rule.
  /// [primaryConnectionStringAlias] The alias of the Primary Connection String for the Authorization Rule, which is generated when disaster recovery is enabled.
  /// [primaryKey] The Primary Key for the Authorization Rule.
  /// [resourceGroupName] The name of the resource group in which the EventHub Namespace exists. Changing this forces a new resource to be created.
  /// [secondaryConnectionString] The Secondary Connection String for the Authorization Rule.
  /// [secondaryConnectionStringAlias] The alias of the Secondary Connection String for the Authorization Rule, which is generated when disaster recovery is enabled.
  /// [secondaryKey] The Secondary Key for the Authorization Rule.
  /// [send] Grants send access to this this Authorization Rule. Defaults to `false`.
  EventHubNamespaceAuthorizationRuleState({
    this.listen,
    this.manage,
    this.name,
    this.namespaceName,
    this.primaryConnectionString,
    this.primaryConnectionStringAlias,
    this.primaryKey,
    this.resourceGroupName,
    this.secondaryConnectionString,
    this.secondaryConnectionStringAlias,
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
      'primaryConnectionStringAlias': ?primaryConnectionStringAlias,
      'primaryKey': ?primaryKey,
      'resourceGroupName': ?resourceGroupName,
      'secondaryConnectionString': ?secondaryConnectionString,
      'secondaryConnectionStringAlias': ?secondaryConnectionStringAlias,
      'secondaryKey': ?secondaryKey,
      'send': ?send,
    };
  }

  factory EventHubNamespaceAuthorizationRuleState.fromMap(
    Map<String, dynamic> map,
  ) {
    return EventHubNamespaceAuthorizationRuleState(
      listen: (() {
        final guardedValue = map['listen'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      manage: (() {
        final guardedValue = map['manage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namespaceName: (() {
        final guardedValue = map['namespaceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryConnectionString: (() {
        final guardedValue = map['primaryConnectionString'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryConnectionStringAlias: (() {
        final guardedValue = map['primaryConnectionStringAlias'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryKey: (() {
        final guardedValue = map['primaryKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryConnectionString: (() {
        final guardedValue = map['secondaryConnectionString'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryConnectionStringAlias: (() {
        final guardedValue = map['secondaryConnectionStringAlias'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryKey: (() {
        final guardedValue = map['secondaryKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      send: (() {
        final guardedValue = map['send'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
