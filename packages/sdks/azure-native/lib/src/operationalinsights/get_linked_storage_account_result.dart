// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLinkedStorageAccount.
class GetLinkedStorageAccountResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Linked storage accounts type.
  final String dataSourceType;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// Linked storage accounts resources ids.
  final List<String>? storageAccountIds;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetLinkedStorageAccountResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dataSourceType] Linked storage accounts type.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [storageAccountIds] Linked storage accounts resources ids.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetLinkedStorageAccountResult({
    required this.azureApiVersion,
    required this.dataSourceType,
    required this.id,
    required this.name,
    this.storageAccountIds,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'dataSourceType': dataSourceType,
      'id': id,
      'name': name,
      'storageAccountIds': ?storageAccountIds,
      'type': type,
    };
  }

  factory GetLinkedStorageAccountResult.fromMap(Map<String, dynamic> map) {
    return GetLinkedStorageAccountResult(
      azureApiVersion: map['azureApiVersion'] as String,
      dataSourceType: map['dataSourceType'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      storageAccountIds: (() { final guardedValue = map['storageAccountIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      type: map['type'] as String,
    );
  }
}

