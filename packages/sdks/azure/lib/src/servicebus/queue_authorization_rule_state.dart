// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering QueueAuthorizationRule resources.
class QueueAuthorizationRuleState {
  /// Does this Authorization Rule have Listen permissions to the ServiceBus Queue? Defaults to `false`.
  final pulumi.Input<bool?>? listen;
  /// Does this Authorization Rule have Manage permissions to the ServiceBus Queue? When this property is `true` - both `listen` and `send` must be too. Defaults to `false`.
  final pulumi.Input<bool?>? manage;
  /// Specifies the name of the Authorization Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The Primary Connection String for the Authorization Rule.
  final pulumi.Input<String?>? primaryConnectionString;
  /// The alias Primary Connection String for the ServiceBus Namespace, if the namespace is Geo DR paired.
  final pulumi.Input<String?>? primaryConnectionStringAlias;
  /// The Primary Key for the Authorization Rule.
  final pulumi.Input<String?>? primaryKey;
  /// Specifies the ID of the ServiceBus Queue. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** At least one of the 3 permissions below needs to be set.
  final pulumi.Input<String?>? queueId;
  /// The Secondary Connection String for the Authorization Rule.
  final pulumi.Input<String?>? secondaryConnectionString;
  /// The alias Secondary Connection String for the ServiceBus Namespace
  final pulumi.Input<String?>? secondaryConnectionStringAlias;
  /// The Secondary Key for the Authorization Rule.
  final pulumi.Input<String?>? secondaryKey;
  /// Does this Authorization Rule have Send permissions to the ServiceBus Queue? Defaults to `false`.
  final pulumi.Input<bool?>? send;

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
  const QueueAuthorizationRuleState({
    this.listen,
    this.manage,
    this.name,
    this.primaryConnectionString,
    this.primaryConnectionStringAlias,
    this.primaryKey,
    this.queueId,
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
      listen: (() { final guardedValue = map['listen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      manage: (() { final guardedValue = map['manage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryConnectionString: (() { final guardedValue = map['primaryConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryConnectionStringAlias: (() { final guardedValue = map['primaryConnectionStringAlias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queueId: (() { final guardedValue = map['queueId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryConnectionString: (() { final guardedValue = map['secondaryConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryConnectionStringAlias: (() { final guardedValue = map['secondaryConnectionStringAlias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryKey: (() { final guardedValue = map['secondaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      send: (() { final guardedValue = map['send']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
