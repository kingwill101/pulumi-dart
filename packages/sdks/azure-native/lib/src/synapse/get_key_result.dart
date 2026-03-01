// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getKey.
class GetKeyResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Used to activate the workspace after a customer managed key is provided.
  final bool? isActiveCMK;
  /// The Key Vault Url of the workspace key.
  final String? keyVaultUrl;
  /// The name of the resource
  final String name;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetKeyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [isActiveCMK] Used to activate the workspace after a customer managed key is provided.
  /// [keyVaultUrl] The Key Vault Url of the workspace key.
  /// [name] The name of the resource
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetKeyResult({
    required this.azureApiVersion,
    required this.id,
    this.isActiveCMK,
    this.keyVaultUrl,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'isActiveCMK': ?isActiveCMK,
      'keyVaultUrl': ?keyVaultUrl,
      'name': name,
      'type': type,
    };
  }

  factory GetKeyResult.fromMap(Map<String, dynamic> map) {
    return GetKeyResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      isActiveCMK: map['isActiveCMK'] == null ? null : map['isActiveCMK'] as bool,
      keyVaultUrl: map['keyVaultUrl'] == null ? null : map['keyVaultUrl'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

