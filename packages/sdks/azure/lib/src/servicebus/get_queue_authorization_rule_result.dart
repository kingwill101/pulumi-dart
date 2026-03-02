// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getQueueAuthorizationRule.
class GetQueueAuthorizationRuleResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool listen;
  final bool manage;
  final String name;
  final String? namespaceName;
  /// The Primary Connection String for the ServiceBus Queue authorization Rule.
  final String primaryConnectionString;
  /// The alias Primary Connection String for the ServiceBus Namespace, if the namespace is Geo DR paired.
  final String primaryConnectionStringAlias;
  /// The Primary Key for the ServiceBus Queue authorization Rule.
  final String primaryKey;
  final String? queueId;
  final String? queueName;
  final String? resourceGroupName;
  /// The Secondary Connection String for the ServiceBus Queue authorization Rule.
  final String secondaryConnectionString;
  /// The alias Secondary Connection String for the ServiceBus Namespace
  final String secondaryConnectionStringAlias;
  /// The Secondary Key for the ServiceBus Queue authorization Rule.
  final String secondaryKey;
  final bool send;

  /// Creates a new [GetQueueAuthorizationRuleResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [listen] Required.
  /// [manage] Required.
  /// [name] Required.
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
  /// [send] Required.
  GetQueueAuthorizationRuleResult({
    required this.id,
    required this.listen,
    required this.manage,
    required this.name,
    this.namespaceName,
    required this.primaryConnectionString,
    required this.primaryConnectionStringAlias,
    required this.primaryKey,
    this.queueId,
    this.queueName,
    this.resourceGroupName,
    required this.secondaryConnectionString,
    required this.secondaryConnectionStringAlias,
    required this.secondaryKey,
    required this.send,
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
      'queueId': ?queueId,
      'queueName': ?queueName,
      'resourceGroupName': ?resourceGroupName,
      'secondaryConnectionString': secondaryConnectionString,
      'secondaryConnectionStringAlias': secondaryConnectionStringAlias,
      'secondaryKey': secondaryKey,
      'send': send,
    };
  }

  factory GetQueueAuthorizationRuleResult.fromMap(Map<String, dynamic> map) {
    return GetQueueAuthorizationRuleResult(
      id: map['id'] as String,
      listen: map['listen'] as bool,
      manage: map['manage'] as bool,
      name: map['name'] as String,
      namespaceName: map['namespaceName'] == null ? null : map['namespaceName']! as String,
      primaryConnectionString: map['primaryConnectionString'] as String,
      primaryConnectionStringAlias: map['primaryConnectionStringAlias'] as String,
      primaryKey: map['primaryKey'] as String,
      queueId: map['queueId'] == null ? null : map['queueId']! as String,
      queueName: map['queueName'] == null ? null : map['queueName']! as String,
      resourceGroupName: map['resourceGroupName'] == null ? null : map['resourceGroupName']! as String,
      secondaryConnectionString: map['secondaryConnectionString'] as String,
      secondaryConnectionStringAlias: map['secondaryConnectionStringAlias'] as String,
      secondaryKey: map['secondaryKey'] as String,
      send: map['send'] as bool,
    );
  }
}

