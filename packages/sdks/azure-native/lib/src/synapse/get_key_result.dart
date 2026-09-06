// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getKey.
class GetKeyResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Used to activate the workspace after a customer managed key is provided.
  final bool? isActiveCMK;
  /// The Key Vault Url of the workspace key.
  final String? keyVaultUrl;
  /// The name of the resource
  final String? name;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetKeyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [isActiveCMK] Used to activate the workspace after a customer managed key is provided.
  /// [keyVaultUrl] The Key Vault Url of the workspace key.
  /// [name] The name of the resource
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetKeyResult({
    this.azureApiVersion,
    this.id,
    this.isActiveCMK,
    this.keyVaultUrl,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'isActiveCMK': ?isActiveCMK,
      'keyVaultUrl': ?keyVaultUrl,
      'name': ?name,
      'type': ?type,
    };
  }

  factory GetKeyResult.fromMap(Map<String, dynamic> map) {
    return GetKeyResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isActiveCMK: (() { final guardedValue = map['isActiveCMK']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      keyVaultUrl: (() { final guardedValue = map['keyVaultUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
