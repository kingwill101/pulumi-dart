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
    pulumi.Output<bool>? listen,
    pulumi.Output<bool>? manage,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namespaceId,
    pulumi.Output<String>? primaryConnectionString,
    pulumi.Output<String>? primaryConnectionStringAlias,
    pulumi.Output<String>? primaryKey,
    pulumi.Output<String>? secondaryConnectionString,
    pulumi.Output<String>? secondaryConnectionStringAlias,
    pulumi.Output<String>? secondaryKey,
    pulumi.Output<bool>? send,
  }) :
      listen = pulumi.Input.asOptionalInput<bool>(listen),
      manage = pulumi.Input.asOptionalInput<bool>(manage),
      name = pulumi.Input.asOptionalInput<String>(name),
      namespaceId = pulumi.Input.asOptionalInput<String>(namespaceId),
      primaryConnectionString = pulumi.Input.asOptionalInput<String>(primaryConnectionString),
      primaryConnectionStringAlias = pulumi.Input.asOptionalInput<String>(primaryConnectionStringAlias),
      primaryKey = pulumi.Input.asOptionalInput<String>(primaryKey),
      secondaryConnectionString = pulumi.Input.asOptionalInput<String>(secondaryConnectionString),
      secondaryConnectionStringAlias = pulumi.Input.asOptionalInput<String>(secondaryConnectionStringAlias),
      secondaryKey = pulumi.Input.asOptionalInput<String>(secondaryKey),
      send = pulumi.Input.asOptionalInput<bool>(send);

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
      listen: map['listen'] == null ? null : pulumi.Output.create<bool>(map['listen'] as bool),
      manage: map['manage'] == null ? null : pulumi.Output.create<bool>(map['manage'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namespaceId: map['namespaceId'] == null ? null : pulumi.Output.create<String>(map['namespaceId'] as String),
      primaryConnectionString: map['primaryConnectionString'] == null ? null : pulumi.Output.create<String>(map['primaryConnectionString'] as String),
      primaryConnectionStringAlias: map['primaryConnectionStringAlias'] == null ? null : pulumi.Output.create<String>(map['primaryConnectionStringAlias'] as String),
      primaryKey: map['primaryKey'] == null ? null : pulumi.Output.create<String>(map['primaryKey'] as String),
      secondaryConnectionString: map['secondaryConnectionString'] == null ? null : pulumi.Output.create<String>(map['secondaryConnectionString'] as String),
      secondaryConnectionStringAlias: map['secondaryConnectionStringAlias'] == null ? null : pulumi.Output.create<String>(map['secondaryConnectionStringAlias'] as String),
      secondaryKey: map['secondaryKey'] == null ? null : pulumi.Output.create<String>(map['secondaryKey'] as String),
      send: map['send'] == null ? null : pulumi.Output.create<bool>(map['send'] as bool),
    );
  }
}

