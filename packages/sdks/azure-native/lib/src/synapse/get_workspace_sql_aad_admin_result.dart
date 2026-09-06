// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWorkspaceSqlAadAdmin.
class GetWorkspaceSqlAadAdminResult {
  /// Workspace active directory administrator type
  final String? administratorType;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Login of the workspace active directory administrator
  final String? login;
  /// The name of the resource
  final String? name;
  /// Object ID of the workspace active directory administrator
  final String? sid;
  /// Tenant ID of the workspace active directory administrator
  final String? tenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetWorkspaceSqlAadAdminResult].
  /// [administratorType] Workspace active directory administrator type
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [login] Login of the workspace active directory administrator
  /// [name] The name of the resource
  /// [sid] Object ID of the workspace active directory administrator
  /// [tenantId] Tenant ID of the workspace active directory administrator
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetWorkspaceSqlAadAdminResult({
    this.administratorType,
    this.azureApiVersion,
    this.id,
    this.login,
    this.name,
    this.sid,
    this.tenantId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorType': ?administratorType,
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'login': ?login,
      'name': ?name,
      'sid': ?sid,
      'tenantId': ?tenantId,
      'type': ?type,
    };
  }

  factory GetWorkspaceSqlAadAdminResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceSqlAadAdminResult(
      administratorType: (() { final guardedValue = map['administratorType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      login: (() { final guardedValue = map['login']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sid: (() { final guardedValue = map['sid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
