// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNamespaceDisasterRecoveryConfig.
class GetNamespaceDisasterRecoveryConfigResult {
  final String? aliasAuthorizationRuleId;
  /// The primary access key for the authorization rule `RootManageSharedAccessKey`.
  final String? defaultPrimaryKey;
  /// The secondary access key for the authorization rule `RootManageSharedAccessKey`.
  final String? defaultSecondaryKey;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? namespaceId;
  final String? namespaceName;
  /// The ID of the Service Bus Namespace to replicate to.
  final String? partnerNamespaceId;
  /// The alias Primary Connection String for the ServiceBus Namespace.
  final String? primaryConnectionStringAlias;
  final String? resourceGroupName;
  /// The alias Secondary Connection String for the ServiceBus Namespace
  final String? secondaryConnectionStringAlias;

  /// Creates a new [GetNamespaceDisasterRecoveryConfigResult].
  /// [aliasAuthorizationRuleId] Optional.
  /// [defaultPrimaryKey] The primary access key for the authorization rule `RootManageSharedAccessKey`.
  /// [defaultSecondaryKey] The secondary access key for the authorization rule `RootManageSharedAccessKey`.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [namespaceId] Optional.
  /// [namespaceName] Optional.
  /// [partnerNamespaceId] The ID of the Service Bus Namespace to replicate to.
  /// [primaryConnectionStringAlias] The alias Primary Connection String for the ServiceBus Namespace.
  /// [resourceGroupName] Optional.
  /// [secondaryConnectionStringAlias] The alias Secondary Connection String for the ServiceBus Namespace
  const GetNamespaceDisasterRecoveryConfigResult({
    this.aliasAuthorizationRuleId,
    this.defaultPrimaryKey,
    this.defaultSecondaryKey,
    this.id,
    this.name,
    this.namespaceId,
    this.namespaceName,
    this.partnerNamespaceId,
    this.primaryConnectionStringAlias,
    this.resourceGroupName,
    this.secondaryConnectionStringAlias,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasAuthorizationRuleId': ?aliasAuthorizationRuleId,
      'defaultPrimaryKey': ?defaultPrimaryKey,
      'defaultSecondaryKey': ?defaultSecondaryKey,
      'id': ?id,
      'name': ?name,
      'namespaceId': ?namespaceId,
      'namespaceName': ?namespaceName,
      'partnerNamespaceId': ?partnerNamespaceId,
      'primaryConnectionStringAlias': ?primaryConnectionStringAlias,
      'resourceGroupName': ?resourceGroupName,
      'secondaryConnectionStringAlias': ?secondaryConnectionStringAlias,
    };
  }

  factory GetNamespaceDisasterRecoveryConfigResult.fromMap(Map<String, dynamic> map) {
    return GetNamespaceDisasterRecoveryConfigResult(
      aliasAuthorizationRuleId: (() { final guardedValue = map['aliasAuthorizationRuleId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultPrimaryKey: (() { final guardedValue = map['defaultPrimaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultSecondaryKey: (() { final guardedValue = map['defaultSecondaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namespaceId: (() { final guardedValue = map['namespaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namespaceName: (() { final guardedValue = map['namespaceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partnerNamespaceId: (() { final guardedValue = map['partnerNamespaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryConnectionStringAlias: (() { final guardedValue = map['primaryConnectionStringAlias']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryConnectionStringAlias: (() { final guardedValue = map['secondaryConnectionStringAlias']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
