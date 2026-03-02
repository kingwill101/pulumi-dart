// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NamespaceAuthorizationRule resources.
class NamespaceAuthorizationRuleState {
  /// Grants listen access to this Authorization Rule. Defaults to `false`.
  final pulumi.Input<bool>? listen;
  /// Grants manage access to this Authorization Rule. When this property is `true` - both `listen` and `send` must be too. Defaults to `false`.
  final pulumi.Input<bool>? manage;
  /// Specifies the name of the ServiceBus Namespace Authorization Rule resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the ID of the ServiceBus Namespace. Changing this forces a new resource to be created.
  ///
  /// > **Note:** At least one of the 3 permissions below needs to be set.
  final pulumi.Input<String>? namespaceId;
  /// The Primary Connection String for the ServiceBus Namespace authorization Rule.
  final pulumi.Input<String>? primaryConnectionString;
  /// The alias Primary Connection String for the ServiceBus Namespace, if the namespace is Geo DR paired.
  final pulumi.Input<String>? primaryConnectionStringAlias;
  /// The Primary Key for the ServiceBus Namespace authorization Rule.
  final pulumi.Input<String>? primaryKey;
  /// The Secondary Connection String for the ServiceBus Namespace authorization Rule.
  final pulumi.Input<String>? secondaryConnectionString;
  /// The alias Secondary Connection String for the ServiceBus Namespace
  final pulumi.Input<String>? secondaryConnectionStringAlias;
  /// The Secondary Key for the ServiceBus Namespace authorization Rule.
  final pulumi.Input<String>? secondaryKey;
  /// Grants send access to this Authorization Rule. Defaults to `false`.
  final pulumi.Input<bool>? send;

  /// Creates a new [NamespaceAuthorizationRuleState].
  /// [listen] Grants listen access to this Authorization Rule. Defaults to `false`.
  /// [manage] Grants manage access to this Authorization Rule. When this property is `true` - both `listen` and `send` must be too. Defaults to `false`.
  /// [name] Specifies the name of the ServiceBus Namespace Authorization Rule resource. Changing this forces a new resource to be created.
  /// [namespaceId] Specifies the ID of the ServiceBus Namespace. Changing this forces a new resource to be created.
  /// [primaryConnectionString] The Primary Connection String for the ServiceBus Namespace authorization Rule.
  /// [primaryConnectionStringAlias] The alias Primary Connection String for the ServiceBus Namespace, if the namespace is Geo DR paired.
  /// [primaryKey] The Primary Key for the ServiceBus Namespace authorization Rule.
  /// [secondaryConnectionString] The Secondary Connection String for the ServiceBus Namespace authorization Rule.
  /// [secondaryConnectionStringAlias] The alias Secondary Connection String for the ServiceBus Namespace
  /// [secondaryKey] The Secondary Key for the ServiceBus Namespace authorization Rule.
  /// [send] Grants send access to this Authorization Rule. Defaults to `false`.
  NamespaceAuthorizationRuleState({
    this.listen,
    this.manage,
    this.name,
    this.namespaceId,
    this.primaryConnectionString,
    this.primaryConnectionStringAlias,
    this.primaryKey,
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
      'namespaceId': ?namespaceId,
      'primaryConnectionString': ?primaryConnectionString,
      'primaryConnectionStringAlias': ?primaryConnectionStringAlias,
      'primaryKey': ?primaryKey,
      'secondaryConnectionString': ?secondaryConnectionString,
      'secondaryConnectionStringAlias': ?secondaryConnectionStringAlias,
      'secondaryKey': ?secondaryKey,
      'send': ?send,
    };
  }

  factory NamespaceAuthorizationRuleState.fromMap(Map<String, dynamic> map) {
    return NamespaceAuthorizationRuleState(
      listen: map['listen'] == null ? null : (map['listen'] as bool).input(),
      manage: map['manage'] == null ? null : (map['manage'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namespaceId: map['namespaceId'] == null ? null : (map['namespaceId'] as String).input(),
      primaryConnectionString: map['primaryConnectionString'] == null ? null : (map['primaryConnectionString'] as String).input(),
      primaryConnectionStringAlias: map['primaryConnectionStringAlias'] == null ? null : (map['primaryConnectionStringAlias'] as String).input(),
      primaryKey: map['primaryKey'] == null ? null : (map['primaryKey'] as String).input(),
      secondaryConnectionString: map['secondaryConnectionString'] == null ? null : (map['secondaryConnectionString'] as String).input(),
      secondaryConnectionStringAlias: map['secondaryConnectionStringAlias'] == null ? null : (map['secondaryConnectionStringAlias'] as String).input(),
      secondaryKey: map['secondaryKey'] == null ? null : (map['secondaryKey'] as String).input(),
      send: map['send'] == null ? null : (map['send'] as bool).input(),
    );
  }
}

