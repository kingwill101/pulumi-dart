// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNamespaceAuthorizationRule.
class GetNamespaceAuthorizationRuleResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? namespaceId;
  final String? namespaceName;
  /// The primary connection string for the authorization rule.
  final String? primaryConnectionString;
  /// The alias Primary Connection String for the ServiceBus Namespace, if the namespace is Geo DR paired.
  final String? primaryConnectionStringAlias;
  /// The primary access key for the authorization rule.
  final String? primaryKey;
  final String? resourceGroupName;
  /// The secondary connection string for the authorization rule.
  final String? secondaryConnectionString;
  /// The alias Secondary Connection String for the ServiceBus Namespace
  final String? secondaryConnectionStringAlias;
  /// The secondary access key for the authorization rule.
  final String? secondaryKey;

  /// Creates a new [GetNamespaceAuthorizationRuleResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [namespaceId] Optional.
  /// [namespaceName] Optional.
  /// [primaryConnectionString] The primary connection string for the authorization rule.
  /// [primaryConnectionStringAlias] The alias Primary Connection String for the ServiceBus Namespace, if the namespace is Geo DR paired.
  /// [primaryKey] The primary access key for the authorization rule.
  /// [resourceGroupName] Optional.
  /// [secondaryConnectionString] The secondary connection string for the authorization rule.
  /// [secondaryConnectionStringAlias] The alias Secondary Connection String for the ServiceBus Namespace
  /// [secondaryKey] The secondary access key for the authorization rule.
  const GetNamespaceAuthorizationRuleResult({
    this.id,
    this.name,
    this.namespaceId,
    this.namespaceName,
    this.primaryConnectionString,
    this.primaryConnectionStringAlias,
    this.primaryKey,
    this.resourceGroupName,
    this.secondaryConnectionString,
    this.secondaryConnectionStringAlias,
    this.secondaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'namespaceId': ?namespaceId,
      'namespaceName': ?namespaceName,
      'primaryConnectionString': ?primaryConnectionString,
      'primaryConnectionStringAlias': ?primaryConnectionStringAlias,
      'primaryKey': ?primaryKey,
      'resourceGroupName': ?resourceGroupName,
      'secondaryConnectionString': ?secondaryConnectionString,
      'secondaryConnectionStringAlias': ?secondaryConnectionStringAlias,
      'secondaryKey': ?secondaryKey,
    };
  }

  factory GetNamespaceAuthorizationRuleResult.fromMap(Map<String, dynamic> map) {
    return GetNamespaceAuthorizationRuleResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namespaceId: (() { final guardedValue = map['namespaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namespaceName: (() { final guardedValue = map['namespaceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryConnectionString: (() { final guardedValue = map['primaryConnectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryConnectionStringAlias: (() { final guardedValue = map['primaryConnectionStringAlias']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryConnectionString: (() { final guardedValue = map['secondaryConnectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryConnectionStringAlias: (() { final guardedValue = map['secondaryConnectionStringAlias']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryKey: (() { final guardedValue = map['secondaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
