// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering QueueAuthorizationRule resources.
class QueueAuthorizationRuleState {
  /// Does this Authorization Rule have Listen permissions to the ServiceBus Queue? Defaults to `false`.
  final pulumi.Input<bool>? listen;
  /// Does this Authorization Rule have Manage permissions to the ServiceBus Queue? When this property is `true` - both `listen` and `send` must be too. Defaults to `false`.
  final pulumi.Input<bool>? manage;
  /// Specifies the name of the Authorization Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The Primary Connection String for the Authorization Rule.
  final pulumi.Input<String>? primaryConnectionString;
  /// The alias Primary Connection String for the ServiceBus Namespace, if the namespace is Geo DR paired.
  final pulumi.Input<String>? primaryConnectionStringAlias;
  /// The Primary Key for the Authorization Rule.
  final pulumi.Input<String>? primaryKey;
  /// Specifies the ID of the ServiceBus Queue. Changing this forces a new resource to be created.
  ///
  /// > **Note:** At least one of the 3 permissions below needs to be set.
  final pulumi.Input<String>? queueId;
  /// The Secondary Connection String for the Authorization Rule.
  final pulumi.Input<String>? secondaryConnectionString;
  /// The alias Secondary Connection String for the ServiceBus Namespace
  final pulumi.Input<String>? secondaryConnectionStringAlias;
  /// The Secondary Key for the Authorization Rule.
  final pulumi.Input<String>? secondaryKey;
  /// Does this Authorization Rule have Send permissions to the ServiceBus Queue? Defaults to `false`.
  final pulumi.Input<bool>? send;

  /// Creates a new [QueueAuthorizationRuleState].
  /// [listen] Does this Authorization Rule have Listen permissions to the ServiceBus Queue? Defaults to `false`.
  /// [manage] Does this Authorization Rule have Manage permissions to the ServiceBus Queue? When this property is `true` - both `listen` and `send` must be too. Defaults to `false`.
  /// [name] Specifies the name of the Authorization Rule. Changing this forces a new resource to be created.
  /// [primaryConnectionString] The Primary Connection String for the Authorization Rule.
  /// [primaryConnectionStringAlias] The alias Primary Connection String for the ServiceBus Namespace, if the namespace is Geo DR paired.
  /// [primaryKey] The Primary Key for the Authorization Rule.
  /// [queueId] Specifies the ID of the ServiceBus Queue. Changing this forces a new resource to be created.
  /// [secondaryConnectionString] The Secondary Connection String for the Authorization Rule.
  /// [secondaryConnectionStringAlias] The alias Secondary Connection String for the ServiceBus Namespace
  /// [secondaryKey] The Secondary Key for the Authorization Rule.
  /// [send] Does this Authorization Rule have Send permissions to the ServiceBus Queue? Defaults to `false`.
  QueueAuthorizationRuleState({
    pulumi.Output<bool>? listen,
    pulumi.Output<bool>? manage,
    pulumi.Output<String>? name,
    pulumi.Output<String>? primaryConnectionString,
    pulumi.Output<String>? primaryConnectionStringAlias,
    pulumi.Output<String>? primaryKey,
    pulumi.Output<String>? queueId,
    pulumi.Output<String>? secondaryConnectionString,
    pulumi.Output<String>? secondaryConnectionStringAlias,
    pulumi.Output<String>? secondaryKey,
    pulumi.Output<bool>? send,
  }) :
      listen = pulumi.Input.asOptionalInput<bool>(listen),
      manage = pulumi.Input.asOptionalInput<bool>(manage),
      name = pulumi.Input.asOptionalInput<String>(name),
      primaryConnectionString = pulumi.Input.asOptionalInput<String>(primaryConnectionString),
      primaryConnectionStringAlias = pulumi.Input.asOptionalInput<String>(primaryConnectionStringAlias),
      primaryKey = pulumi.Input.asOptionalInput<String>(primaryKey),
      queueId = pulumi.Input.asOptionalInput<String>(queueId),
      secondaryConnectionString = pulumi.Input.asOptionalInput<String>(secondaryConnectionString),
      secondaryConnectionStringAlias = pulumi.Input.asOptionalInput<String>(secondaryConnectionStringAlias),
      secondaryKey = pulumi.Input.asOptionalInput<String>(secondaryKey),
      send = pulumi.Input.asOptionalInput<bool>(send);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'listen': ?listen,
      'manage': ?manage,
      'name': ?name,
      'primaryConnectionString': ?primaryConnectionString,
      'primaryConnectionStringAlias': ?primaryConnectionStringAlias,
      'primaryKey': ?primaryKey,
      'queueId': ?queueId,
      'secondaryConnectionString': ?secondaryConnectionString,
      'secondaryConnectionStringAlias': ?secondaryConnectionStringAlias,
      'secondaryKey': ?secondaryKey,
      'send': ?send,
    };
  }

  factory QueueAuthorizationRuleState.fromMap(Map<String, dynamic> map) {
    return QueueAuthorizationRuleState(
      listen: map['listen'] == null ? null : pulumi.Output.create<bool>(map['listen'] as bool),
      manage: map['manage'] == null ? null : pulumi.Output.create<bool>(map['manage'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      primaryConnectionString: map['primaryConnectionString'] == null ? null : pulumi.Output.create<String>(map['primaryConnectionString'] as String),
      primaryConnectionStringAlias: map['primaryConnectionStringAlias'] == null ? null : pulumi.Output.create<String>(map['primaryConnectionStringAlias'] as String),
      primaryKey: map['primaryKey'] == null ? null : pulumi.Output.create<String>(map['primaryKey'] as String),
      queueId: map['queueId'] == null ? null : pulumi.Output.create<String>(map['queueId'] as String),
      secondaryConnectionString: map['secondaryConnectionString'] == null ? null : pulumi.Output.create<String>(map['secondaryConnectionString'] as String),
      secondaryConnectionStringAlias: map['secondaryConnectionStringAlias'] == null ? null : pulumi.Output.create<String>(map['secondaryConnectionStringAlias'] as String),
      secondaryKey: map['secondaryKey'] == null ? null : pulumi.Output.create<String>(map['secondaryKey'] as String),
      send: map['send'] == null ? null : pulumi.Output.create<bool>(map['send'] as bool),
    );
  }
}

