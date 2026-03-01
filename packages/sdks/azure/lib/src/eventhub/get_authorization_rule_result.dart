// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAuthorizationRule.
class GetAuthorizationRuleResult {
  final String eventhubName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool? listen;
  final bool? manage;
  final String name;
  final String namespaceName;
  /// The Primary Connection String for the Event Hubs Authorization Rule.
  final String primaryConnectionString;
  /// The alias of the Primary Connection String for the Event Hubs Authorization Rule.
  final String primaryConnectionStringAlias;
  /// The Primary Key for the Event Hubs Authorization Rule.
  final String primaryKey;
  final String resourceGroupName;
  /// The Secondary Connection String for the Event Hubs Authorization Rule.
  final String secondaryConnectionString;
  /// The alias of the Secondary Connection String for the Event Hubs Authorization Rule.
  final String secondaryConnectionStringAlias;
  /// The Secondary Key for the Event Hubs Authorization Rule.
  final String secondaryKey;
  final bool? send;

  /// Creates a new [GetAuthorizationRuleResult].
  /// [eventhubName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [listen] Optional.
  /// [manage] Optional.
  /// [name] Required.
  /// [namespaceName] Required.
  /// [primaryConnectionString] The Primary Connection String for the Event Hubs Authorization Rule.
  /// [primaryConnectionStringAlias] The alias of the Primary Connection String for the Event Hubs Authorization Rule.
  /// [primaryKey] The Primary Key for the Event Hubs Authorization Rule.
  /// [resourceGroupName] Required.
  /// [secondaryConnectionString] The Secondary Connection String for the Event Hubs Authorization Rule.
  /// [secondaryConnectionStringAlias] The alias of the Secondary Connection String for the Event Hubs Authorization Rule.
  /// [secondaryKey] The Secondary Key for the Event Hubs Authorization Rule.
  /// [send] Optional.
  GetAuthorizationRuleResult({
    required this.eventhubName,
    required this.id,
    this.listen,
    this.manage,
    required this.name,
    required this.namespaceName,
    required this.primaryConnectionString,
    required this.primaryConnectionStringAlias,
    required this.primaryKey,
    required this.resourceGroupName,
    required this.secondaryConnectionString,
    required this.secondaryConnectionStringAlias,
    required this.secondaryKey,
    this.send,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventhubName': eventhubName,
      'id': id,
      'listen': ?listen,
      'manage': ?manage,
      'name': name,
      'namespaceName': namespaceName,
      'primaryConnectionString': primaryConnectionString,
      'primaryConnectionStringAlias': primaryConnectionStringAlias,
      'primaryKey': primaryKey,
      'resourceGroupName': resourceGroupName,
      'secondaryConnectionString': secondaryConnectionString,
      'secondaryConnectionStringAlias': secondaryConnectionStringAlias,
      'secondaryKey': secondaryKey,
      'send': ?send,
    };
  }

  factory GetAuthorizationRuleResult.fromMap(Map<String, dynamic> map) {
    return GetAuthorizationRuleResult(
      eventhubName: map['eventhubName'] as String,
      id: map['id'] as String,
      listen: map['listen'] == null ? null : map['listen'] as bool,
      manage: map['manage'] == null ? null : map['manage'] as bool,
      name: map['name'] as String,
      namespaceName: map['namespaceName'] as String,
      primaryConnectionString: map['primaryConnectionString'] as String,
      primaryConnectionStringAlias: map['primaryConnectionStringAlias'] as String,
      primaryKey: map['primaryKey'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      secondaryConnectionString: map['secondaryConnectionString'] as String,
      secondaryConnectionStringAlias: map['secondaryConnectionStringAlias'] as String,
      secondaryKey: map['secondaryKey'] as String,
      send: map['send'] == null ? null : map['send'] as bool,
    );
  }
}

