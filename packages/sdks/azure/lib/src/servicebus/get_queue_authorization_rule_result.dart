// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getQueueAuthorizationRule.
class GetQueueAuthorizationRuleResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final bool? listen;
  final bool? manage;
  final String? name;
  final String? namespaceName;
  /// The Primary Connection String for the ServiceBus Queue authorization Rule.
  final String? primaryConnectionString;
  /// The alias Primary Connection String for the ServiceBus Namespace, if the namespace is Geo DR paired.
  final String? primaryConnectionStringAlias;
  /// The Primary Key for the ServiceBus Queue authorization Rule.
  final String? primaryKey;
  final String? queueId;
  final String? queueName;
  final String? resourceGroupName;
  /// The Secondary Connection String for the ServiceBus Queue authorization Rule.
  final String? secondaryConnectionString;
  /// The alias Secondary Connection String for the ServiceBus Namespace
  final String? secondaryConnectionStringAlias;
  /// The Secondary Key for the ServiceBus Queue authorization Rule.
  final String? secondaryKey;
  final bool? send;

  /// Creates a new [GetQueueAuthorizationRuleResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [listen] Optional.
  /// [manage] Optional.
  /// [name] Optional.
  /// [namespaceName] Optional.
  /// [primaryConnectionString] The Primary Connection String for the ServiceBus Queue authorization Rule.
  /// [primaryConnectionStringAlias] The alias Primary Connection String for the ServiceBus Namespace, if the namespace is Geo DR paired.
  /// [primaryKey] The Primary Key for the ServiceBus Queue authorization Rule.
  /// [queueId] Optional.
  /// [queueName] Optional.
  /// [resourceGroupName] Optional.
  /// [secondaryConnectionString] The Secondary Connection String for the ServiceBus Queue authorization Rule.
  /// [secondaryConnectionStringAlias] The alias Secondary Connection String for the ServiceBus Namespace
  /// [secondaryKey] The Secondary Key for the ServiceBus Queue authorization Rule.
  /// [send] Optional.
  const GetQueueAuthorizationRuleResult({
    this.id,
    this.listen,
    this.manage,
    this.name,
    this.namespaceName,
    this.primaryConnectionString,
    this.primaryConnectionStringAlias,
    this.primaryKey,
    this.queueId,
    this.queueName,
    this.resourceGroupName,
    this.secondaryConnectionString,
    this.secondaryConnectionStringAlias,
    this.secondaryKey,
    this.send,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'listen': ?listen,
      'manage': ?manage,
      'name': ?name,
      'namespaceName': ?namespaceName,
      'primaryConnectionString': ?primaryConnectionString,
      'primaryConnectionStringAlias': ?primaryConnectionStringAlias,
      'primaryKey': ?primaryKey,
      'queueId': ?queueId,
      'queueName': ?queueName,
      'resourceGroupName': ?resourceGroupName,
      'secondaryConnectionString': ?secondaryConnectionString,
      'secondaryConnectionStringAlias': ?secondaryConnectionStringAlias,
      'secondaryKey': ?secondaryKey,
      'send': ?send,
    };
  }

  factory GetQueueAuthorizationRuleResult.fromMap(Map<String, dynamic> map) {
    return GetQueueAuthorizationRuleResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      listen: (() { final guardedValue = map['listen']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      manage: (() { final guardedValue = map['manage']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namespaceName: (() { final guardedValue = map['namespaceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryConnectionString: (() { final guardedValue = map['primaryConnectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryConnectionStringAlias: (() { final guardedValue = map['primaryConnectionStringAlias']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      queueId: (() { final guardedValue = map['queueId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      queueName: (() { final guardedValue = map['queueName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryConnectionString: (() { final guardedValue = map['secondaryConnectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryConnectionStringAlias: (() { final guardedValue = map['secondaryConnectionStringAlias']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryKey: (() { final guardedValue = map['secondaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      send: (() { final guardedValue = map['send']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
