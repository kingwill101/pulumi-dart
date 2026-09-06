// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getManagedInstanceAdministrator.
class GetManagedInstanceAdministratorResult {
  /// Type of the managed instance administrator.
  final String? administratorType;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Resource ID.
  final String? id;
  /// Login name of the managed instance administrator.
  final String? login;
  /// Resource name.
  final String? name;
  /// SID (object ID) of the managed instance administrator.
  final String? sid;
  /// Tenant ID of the managed instance administrator.
  final String? tenantId;
  /// Resource type.
  final String? type;

  /// Creates a new [GetManagedInstanceAdministratorResult].
  /// [administratorType] Type of the managed instance administrator.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [login] Login name of the managed instance administrator.
  /// [name] Resource name.
  /// [sid] SID (object ID) of the managed instance administrator.
  /// [tenantId] Tenant ID of the managed instance administrator.
  /// [type] Resource type.
  const GetManagedInstanceAdministratorResult({
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

  factory GetManagedInstanceAdministratorResult.fromMap(Map<String, dynamic> map) {
    return GetManagedInstanceAdministratorResult(
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
