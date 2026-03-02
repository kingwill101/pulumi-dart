// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNamespaceAuthorizationRule.
class GetNamespaceAuthorizationRuleResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String? namespaceId;
  final String? namespaceName;
  /// The primary connection string for the authorization rule.
  final String primaryConnectionString;
  /// The alias Primary Connection String for the ServiceBus Namespace, if the namespace is Geo DR paired.
  final String primaryConnectionStringAlias;
  /// The primary access key for the authorization rule.
  final String primaryKey;
  final String? resourceGroupName;
  /// The secondary connection string for the authorization rule.
  final String secondaryConnectionString;
  /// The alias Secondary Connection String for the ServiceBus Namespace
  final String secondaryConnectionStringAlias;
  /// The secondary access key for the authorization rule.
  final String secondaryKey;

  /// Creates a new [GetNamespaceAuthorizationRuleResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [namespaceId] Optional.
  /// [namespaceName] Optional.
  /// [primaryConnectionString] The primary connection string for the authorization rule.
  /// [primaryConnectionStringAlias] The alias Primary Connection String for the ServiceBus Namespace, if the namespace is Geo DR paired.
  /// [primaryKey] The primary access key for the authorization rule.
  /// [resourceGroupName] Optional.
  /// [secondaryConnectionString] The secondary connection string for the authorization rule.
  /// [secondaryConnectionStringAlias] The alias Secondary Connection String for the ServiceBus Namespace
  /// [secondaryKey] The secondary access key for the authorization rule.
  GetNamespaceAuthorizationRuleResult({
    required this.id,
    required this.name,
    this.namespaceId,
    this.namespaceName,
    required this.primaryConnectionString,
    required this.primaryConnectionStringAlias,
    required this.primaryKey,
    this.resourceGroupName,
    required this.secondaryConnectionString,
    required this.secondaryConnectionStringAlias,
    required this.secondaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'namespaceId': ?namespaceId,
      'namespaceName': ?namespaceName,
      'primaryConnectionString': primaryConnectionString,
      'primaryConnectionStringAlias': primaryConnectionStringAlias,
      'primaryKey': primaryKey,
      'resourceGroupName': ?resourceGroupName,
      'secondaryConnectionString': secondaryConnectionString,
      'secondaryConnectionStringAlias': secondaryConnectionStringAlias,
      'secondaryKey': secondaryKey,
    };
  }

  factory GetNamespaceAuthorizationRuleResult.fromMap(Map<String, dynamic> map) {
    return GetNamespaceAuthorizationRuleResult(
      id: map['id'] as String,
      name: map['name'] as String,
      namespaceId: map['namespaceId'] == null ? null : map['namespaceId']! as String,
      namespaceName: map['namespaceName'] == null ? null : map['namespaceName']! as String,
      primaryConnectionString: map['primaryConnectionString'] as String,
      primaryConnectionStringAlias: map['primaryConnectionStringAlias'] as String,
      primaryKey: map['primaryKey'] as String,
      resourceGroupName: map['resourceGroupName'] == null ? null : map['resourceGroupName']! as String,
      secondaryConnectionString: map['secondaryConnectionString'] as String,
      secondaryConnectionStringAlias: map['secondaryConnectionStringAlias'] as String,
      secondaryKey: map['secondaryKey'] as String,
    );
  }
}

