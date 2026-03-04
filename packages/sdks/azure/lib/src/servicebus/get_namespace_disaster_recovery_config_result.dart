// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getNamespaceDisasterRecoveryConfig.
class GetNamespaceDisasterRecoveryConfigResult {
  final String? aliasAuthorizationRuleId;

  /// The primary access key for the authorization rule `RootManageSharedAccessKey`.
  final String defaultPrimaryKey;

  /// The secondary access key for the authorization rule `RootManageSharedAccessKey`.
  final String defaultSecondaryKey;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String namespaceId;
  final String namespaceName;

  /// The ID of the Service Bus Namespace to replicate to.
  final String partnerNamespaceId;

  /// The alias Primary Connection String for the ServiceBus Namespace.
  final String primaryConnectionStringAlias;
  final String resourceGroupName;

  /// The alias Secondary Connection String for the ServiceBus Namespace
  final String secondaryConnectionStringAlias;

  /// Creates a new [GetNamespaceDisasterRecoveryConfigResult].
  /// [aliasAuthorizationRuleId] Optional.
  /// [defaultPrimaryKey] The primary access key for the authorization rule `RootManageSharedAccessKey`.
  /// [defaultSecondaryKey] The secondary access key for the authorization rule `RootManageSharedAccessKey`.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [namespaceId] Required.
  /// [namespaceName] Required.
  /// [partnerNamespaceId] The ID of the Service Bus Namespace to replicate to.
  /// [primaryConnectionStringAlias] The alias Primary Connection String for the ServiceBus Namespace.
  /// [resourceGroupName] Required.
  /// [secondaryConnectionStringAlias] The alias Secondary Connection String for the ServiceBus Namespace
  GetNamespaceDisasterRecoveryConfigResult({
    this.aliasAuthorizationRuleId,
    required this.defaultPrimaryKey,
    required this.defaultSecondaryKey,
    required this.id,
    required this.name,
    required this.namespaceId,
    required this.namespaceName,
    required this.partnerNamespaceId,
    required this.primaryConnectionStringAlias,
    required this.resourceGroupName,
    required this.secondaryConnectionStringAlias,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasAuthorizationRuleId': ?aliasAuthorizationRuleId,
      'defaultPrimaryKey': defaultPrimaryKey,
      'defaultSecondaryKey': defaultSecondaryKey,
      'id': id,
      'name': name,
      'namespaceId': namespaceId,
      'namespaceName': namespaceName,
      'partnerNamespaceId': partnerNamespaceId,
      'primaryConnectionStringAlias': primaryConnectionStringAlias,
      'resourceGroupName': resourceGroupName,
      'secondaryConnectionStringAlias': secondaryConnectionStringAlias,
    };
  }

  factory GetNamespaceDisasterRecoveryConfigResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetNamespaceDisasterRecoveryConfigResult(
      aliasAuthorizationRuleId: (() {
        final guardedValue = map['aliasAuthorizationRuleId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      defaultPrimaryKey: map['defaultPrimaryKey'] as String,
      defaultSecondaryKey: map['defaultSecondaryKey'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      namespaceId: map['namespaceId'] as String,
      namespaceName: map['namespaceName'] as String,
      partnerNamespaceId: map['partnerNamespaceId'] as String,
      primaryConnectionStringAlias:
          map['primaryConnectionStringAlias'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      secondaryConnectionStringAlias:
          map['secondaryConnectionStringAlias'] as String,
    );
  }
}
