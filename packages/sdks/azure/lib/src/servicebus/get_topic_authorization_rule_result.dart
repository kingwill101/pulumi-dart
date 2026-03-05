// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTopicAuthorizationRule.
class GetTopicAuthorizationRuleResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool listen;
  final bool manage;
  final String name;
  final String? namespaceName;
  /// The Primary Connection String for the ServiceBus Topic authorization Rule.
  final String primaryConnectionString;
  /// The alias Primary Connection String for the ServiceBus Namespace, if the namespace is Geo DR paired.
  final String primaryConnectionStringAlias;
  /// The Primary Key for the ServiceBus Topic authorization Rule.
  final String primaryKey;
  final String? queueName;
  final String? resourceGroupName;
  /// The Secondary Connection String for the ServiceBus Topic authorization Rule.
  final String secondaryConnectionString;
  /// The alias Secondary Connection String for the ServiceBus Namespace
  final String secondaryConnectionStringAlias;
  /// The Secondary Key for the ServiceBus Topic authorization Rule.
  final String secondaryKey;
  final bool send;
  final String? topicId;
  final String? topicName;

  /// Creates a new [GetTopicAuthorizationRuleResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [listen] Required.
  /// [manage] Required.
  /// [name] Required.
  /// [namespaceName] Optional.
  /// [primaryConnectionString] The Primary Connection String for the ServiceBus Topic authorization Rule.
  /// [primaryConnectionStringAlias] The alias Primary Connection String for the ServiceBus Namespace, if the namespace is Geo DR paired.
  /// [primaryKey] The Primary Key for the ServiceBus Topic authorization Rule.
  /// [queueName] Optional.
  /// [resourceGroupName] Optional.
  /// [secondaryConnectionString] The Secondary Connection String for the ServiceBus Topic authorization Rule.
  /// [secondaryConnectionStringAlias] The alias Secondary Connection String for the ServiceBus Namespace
  /// [secondaryKey] The Secondary Key for the ServiceBus Topic authorization Rule.
  /// [send] Required.
  /// [topicId] Optional.
  /// [topicName] Optional.
  GetTopicAuthorizationRuleResult({
    required this.id,
    required this.listen,
    required this.manage,
    required this.name,
    this.namespaceName,
    required this.primaryConnectionString,
    required this.primaryConnectionStringAlias,
    required this.primaryKey,
    this.queueName,
    this.resourceGroupName,
    required this.secondaryConnectionString,
    required this.secondaryConnectionStringAlias,
    required this.secondaryKey,
    required this.send,
    this.topicId,
    this.topicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'listen': listen,
      'manage': manage,
      'name': name,
      'namespaceName': ?namespaceName,
      'primaryConnectionString': primaryConnectionString,
      'primaryConnectionStringAlias': primaryConnectionStringAlias,
      'primaryKey': primaryKey,
      'queueName': ?queueName,
      'resourceGroupName': ?resourceGroupName,
      'secondaryConnectionString': secondaryConnectionString,
      'secondaryConnectionStringAlias': secondaryConnectionStringAlias,
      'secondaryKey': secondaryKey,
      'send': send,
      'topicId': ?topicId,
      'topicName': ?topicName,
    };
  }

  factory GetTopicAuthorizationRuleResult.fromMap(Map<String, dynamic> map) {
    return GetTopicAuthorizationRuleResult(
      id: map['id'] as String,
      listen: map['listen'] as bool,
      manage: map['manage'] as bool,
      name: map['name'] as String,
      namespaceName: (() { final guardedValue = map['namespaceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryConnectionString: map['primaryConnectionString'] as String,
      primaryConnectionStringAlias: map['primaryConnectionStringAlias'] as String,
      primaryKey: map['primaryKey'] as String,
      queueName: (() { final guardedValue = map['queueName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryConnectionString: map['secondaryConnectionString'] as String,
      secondaryConnectionStringAlias: map['secondaryConnectionStringAlias'] as String,
      secondaryKey: map['secondaryKey'] as String,
      send: map['send'] as bool,
      topicId: (() { final guardedValue = map['topicId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      topicName: (() { final guardedValue = map['topicName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

