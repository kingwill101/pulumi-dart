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
  /// > **Note:** At least one of the 3 permissions below needs to be set.
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
    pulumi.Output<bool>? listen,
    pulumi.Output<bool>? manage,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namespaceName,
    pulumi.Output<String>? primaryConnectionString,
    pulumi.Output<String>? primaryConnectionStringAlias,
    pulumi.Output<String>? primaryKey,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? secondaryConnectionString,
    pulumi.Output<String>? secondaryConnectionStringAlias,
    pulumi.Output<String>? secondaryKey,
    pulumi.Output<bool>? send,
  }) :
      listen = pulumi.Input.asOptionalInput<bool>(listen),
      manage = pulumi.Input.asOptionalInput<bool>(manage),
      name = pulumi.Input.asOptionalInput<String>(name),
      namespaceName = pulumi.Input.asOptionalInput<String>(namespaceName),
      primaryConnectionString = pulumi.Input.asOptionalInput<String>(primaryConnectionString),
      primaryConnectionStringAlias = pulumi.Input.asOptionalInput<String>(primaryConnectionStringAlias),
      primaryKey = pulumi.Input.asOptionalInput<String>(primaryKey),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      secondaryConnectionString = pulumi.Input.asOptionalInput<String>(secondaryConnectionString),
      secondaryConnectionStringAlias = pulumi.Input.asOptionalInput<String>(secondaryConnectionStringAlias),
      secondaryKey = pulumi.Input.asOptionalInput<String>(secondaryKey),
      send = pulumi.Input.asOptionalInput<bool>(send);

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

  factory EventHubNamespaceAuthorizationRuleState.fromMap(Map<String, dynamic> map) {
    return EventHubNamespaceAuthorizationRuleState(
      listen: map['listen'] == null ? null : pulumi.Output.create<bool>(map['listen'] as bool),
      manage: map['manage'] == null ? null : pulumi.Output.create<bool>(map['manage'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namespaceName: map['namespaceName'] == null ? null : pulumi.Output.create<String>(map['namespaceName'] as String),
      primaryConnectionString: map['primaryConnectionString'] == null ? null : pulumi.Output.create<String>(map['primaryConnectionString'] as String),
      primaryConnectionStringAlias: map['primaryConnectionStringAlias'] == null ? null : pulumi.Output.create<String>(map['primaryConnectionStringAlias'] as String),
      primaryKey: map['primaryKey'] == null ? null : pulumi.Output.create<String>(map['primaryKey'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      secondaryConnectionString: map['secondaryConnectionString'] == null ? null : pulumi.Output.create<String>(map['secondaryConnectionString'] as String),
      secondaryConnectionStringAlias: map['secondaryConnectionStringAlias'] == null ? null : pulumi.Output.create<String>(map['secondaryConnectionStringAlias'] as String),
      secondaryKey: map['secondaryKey'] == null ? null : pulumi.Output.create<String>(map['secondaryKey'] as String),
      send: map['send'] == null ? null : pulumi.Output.create<bool>(map['send'] as bool),
    );
  }
}

