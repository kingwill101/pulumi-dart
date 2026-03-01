// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TopicAuthorizationRule resources.
class TopicAuthorizationRuleState {
  /// Grants listen access to this this Authorization Rule. Defaults to `false`.
  final pulumi.Input<bool>? listen;
  /// Grants manage access to this this Authorization Rule. When this property is `true` - both `listen` and `send` must be too. Defaults to `false`.
  final pulumi.Input<bool>? manage;
  /// Specifies the name of the ServiceBus Topic Authorization Rule resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The Primary Connection String for the ServiceBus Topic authorization Rule.
  final pulumi.Input<String>? primaryConnectionString;
  /// The alias Primary Connection String for the ServiceBus Namespace, if the namespace is Geo DR paired.
  final pulumi.Input<String>? primaryConnectionStringAlias;
  /// The Primary Key for the ServiceBus Topic authorization Rule.
  final pulumi.Input<String>? primaryKey;
  /// The Secondary Connection String for the ServiceBus Topic authorization Rule.
  final pulumi.Input<String>? secondaryConnectionString;
  /// The alias Secondary Connection String for the ServiceBus Namespace
  final pulumi.Input<String>? secondaryConnectionStringAlias;
  /// The Secondary Key for the ServiceBus Topic authorization Rule.
  final pulumi.Input<String>? secondaryKey;
  /// Grants send access to this this Authorization Rule. Defaults to `false`.
  final pulumi.Input<bool>? send;
  /// Specifies the ID of the ServiceBus Topic. Changing this forces a new resource to be created.
  ///
  /// > **Note:** At least one of the 3 permissions below needs to be set.
  final pulumi.Input<String>? topicId;

  /// Creates a new [TopicAuthorizationRuleState].
  /// [listen] Grants listen access to this this Authorization Rule. Defaults to `false`.
  /// [manage] Grants manage access to this this Authorization Rule. When this property is `true` - both `listen` and `send` must be too. Defaults to `false`.
  /// [name] Specifies the name of the ServiceBus Topic Authorization Rule resource. Changing this forces a new resource to be created.
  /// [primaryConnectionString] The Primary Connection String for the ServiceBus Topic authorization Rule.
  /// [primaryConnectionStringAlias] The alias Primary Connection String for the ServiceBus Namespace, if the namespace is Geo DR paired.
  /// [primaryKey] The Primary Key for the ServiceBus Topic authorization Rule.
  /// [secondaryConnectionString] The Secondary Connection String for the ServiceBus Topic authorization Rule.
  /// [secondaryConnectionStringAlias] The alias Secondary Connection String for the ServiceBus Namespace
  /// [secondaryKey] The Secondary Key for the ServiceBus Topic authorization Rule.
  /// [send] Grants send access to this this Authorization Rule. Defaults to `false`.
  /// [topicId] Specifies the ID of the ServiceBus Topic. Changing this forces a new resource to be created.
  TopicAuthorizationRuleState({
    pulumi.Output<bool>? listen,
    pulumi.Output<bool>? manage,
    pulumi.Output<String>? name,
    pulumi.Output<String>? primaryConnectionString,
    pulumi.Output<String>? primaryConnectionStringAlias,
    pulumi.Output<String>? primaryKey,
    pulumi.Output<String>? secondaryConnectionString,
    pulumi.Output<String>? secondaryConnectionStringAlias,
    pulumi.Output<String>? secondaryKey,
    pulumi.Output<bool>? send,
    pulumi.Output<String>? topicId,
  }) :
      listen = pulumi.Input.asOptionalInput<bool>(listen),
      manage = pulumi.Input.asOptionalInput<bool>(manage),
      name = pulumi.Input.asOptionalInput<String>(name),
      primaryConnectionString = pulumi.Input.asOptionalInput<String>(primaryConnectionString),
      primaryConnectionStringAlias = pulumi.Input.asOptionalInput<String>(primaryConnectionStringAlias),
      primaryKey = pulumi.Input.asOptionalInput<String>(primaryKey),
      secondaryConnectionString = pulumi.Input.asOptionalInput<String>(secondaryConnectionString),
      secondaryConnectionStringAlias = pulumi.Input.asOptionalInput<String>(secondaryConnectionStringAlias),
      secondaryKey = pulumi.Input.asOptionalInput<String>(secondaryKey),
      send = pulumi.Input.asOptionalInput<bool>(send),
      topicId = pulumi.Input.asOptionalInput<String>(topicId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'listen': ?listen,
      'manage': ?manage,
      'name': ?name,
      'primaryConnectionString': ?primaryConnectionString,
      'primaryConnectionStringAlias': ?primaryConnectionStringAlias,
      'primaryKey': ?primaryKey,
      'secondaryConnectionString': ?secondaryConnectionString,
      'secondaryConnectionStringAlias': ?secondaryConnectionStringAlias,
      'secondaryKey': ?secondaryKey,
      'send': ?send,
      'topicId': ?topicId,
    };
  }

  factory TopicAuthorizationRuleState.fromMap(Map<String, dynamic> map) {
    return TopicAuthorizationRuleState(
      listen: map['listen'] == null ? null : pulumi.Output.create<bool>(map['listen'] as bool),
      manage: map['manage'] == null ? null : pulumi.Output.create<bool>(map['manage'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      primaryConnectionString: map['primaryConnectionString'] == null ? null : pulumi.Output.create<String>(map['primaryConnectionString'] as String),
      primaryConnectionStringAlias: map['primaryConnectionStringAlias'] == null ? null : pulumi.Output.create<String>(map['primaryConnectionStringAlias'] as String),
      primaryKey: map['primaryKey'] == null ? null : pulumi.Output.create<String>(map['primaryKey'] as String),
      secondaryConnectionString: map['secondaryConnectionString'] == null ? null : pulumi.Output.create<String>(map['secondaryConnectionString'] as String),
      secondaryConnectionStringAlias: map['secondaryConnectionStringAlias'] == null ? null : pulumi.Output.create<String>(map['secondaryConnectionStringAlias'] as String),
      secondaryKey: map['secondaryKey'] == null ? null : pulumi.Output.create<String>(map['secondaryKey'] as String),
      send: map['send'] == null ? null : pulumi.Output.create<bool>(map['send'] as bool),
      topicId: map['topicId'] == null ? null : pulumi.Output.create<String>(map['topicId'] as String),
    );
  }
}

