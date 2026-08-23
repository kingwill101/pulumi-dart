// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNamespaceAuthorizationRule.
class GetNamespaceAuthorizationRuleResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Does this Authorization Rule have permissions to Listen to the Event Hub?
  final bool listen;
  /// Does this Authorization Rule have permissions to Manage to the Event Hub?
  final bool manage;
  final String name;
  final String namespaceName;
  /// The Primary Connection String for the Event Hubs authorization Rule.
  final String primaryConnectionString;
  /// The alias of the Primary Connection String for the Event Hubs authorization Rule.
  final String primaryConnectionStringAlias;
  /// The Primary Key for the Event Hubs authorization Rule.
  final String primaryKey;
  final String resourceGroupName;
  /// The Secondary Connection String for the Event Hubs authorization Rule.
  final String secondaryConnectionString;
  /// The alias of the Secondary Connection String for the Event Hubs authorization Rule.
  final String secondaryConnectionStringAlias;
  /// The Secondary Key for the Event Hubs authorization Rule.
  final String secondaryKey;
  /// Does this Authorization Rule have permissions to Send to the Event Hub?
  final bool send;

  /// Creates a new [GetNamespaceAuthorizationRuleResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [listen] Does this Authorization Rule have permissions to Listen to the Event Hub?
  /// [manage] Does this Authorization Rule have permissions to Manage to the Event Hub?
  /// [name] Required.
  /// [namespaceName] Required.
  /// [primaryConnectionString] The Primary Connection String for the Event Hubs authorization Rule.
  /// [primaryConnectionStringAlias] The alias of the Primary Connection String for the Event Hubs authorization Rule.
  /// [primaryKey] The Primary Key for the Event Hubs authorization Rule.
  /// [resourceGroupName] Required.
  /// [secondaryConnectionString] The Secondary Connection String for the Event Hubs authorization Rule.
  /// [secondaryConnectionStringAlias] The alias of the Secondary Connection String for the Event Hubs authorization Rule.
  /// [secondaryKey] The Secondary Key for the Event Hubs authorization Rule.
  /// [send] Does this Authorization Rule have permissions to Send to the Event Hub?
  const GetNamespaceAuthorizationRuleResult({
    required this.id,
    required this.listen,
    required this.manage,
    required this.name,
    required this.namespaceName,
    required this.primaryConnectionString,
    required this.primaryConnectionStringAlias,
    required this.primaryKey,
    required this.resourceGroupName,
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
      'namespaceName': namespaceName,
      'primaryConnectionString': primaryConnectionString,
      'primaryConnectionStringAlias': primaryConnectionStringAlias,
      'primaryKey': primaryKey,
      'resourceGroupName': resourceGroupName,
      'secondaryConnectionString': secondaryConnectionString,
      'secondaryConnectionStringAlias': secondaryConnectionStringAlias,
      'secondaryKey': secondaryKey,
      'send': send,
    };
  }

  factory GetNamespaceAuthorizationRuleResult.fromMap(Map<String, dynamic> map) {
    return GetNamespaceAuthorizationRuleResult(
      id: map['id'] as String,
      listen: map['listen'] as bool,
      manage: map['manage'] as bool,
      name: map['name'] as String,
      namespaceName: map['namespaceName'] as String,
      primaryConnectionString: map['primaryConnectionString'] as String,
      primaryConnectionStringAlias: map['primaryConnectionStringAlias'] as String,
      primaryKey: map['primaryKey'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      secondaryConnectionString: map['secondaryConnectionString'] as String,
      secondaryConnectionStringAlias: map['secondaryConnectionStringAlias'] as String,
      secondaryKey: map['secondaryKey'] as String,
      send: map['send'] as bool,
    );
  }
}
