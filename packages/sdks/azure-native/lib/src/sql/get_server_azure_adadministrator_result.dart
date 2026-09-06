// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getServerAzureADAdministrator.
class GetServerAzureADAdministratorResult {
  /// Type of the sever administrator.
  final String? administratorType;
  /// Azure Active Directory only Authentication enabled.
  final bool? azureADOnlyAuthentication;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Resource ID.
  final String? id;
  /// Login name of the server administrator.
  final String? login;
  /// Resource name.
  final String? name;
  /// SID (object ID) of the server administrator.
  final String? sid;
  /// Tenant ID of the administrator.
  final String? tenantId;
  /// Resource type.
  final String? type;

  /// Creates a new [GetServerAzureADAdministratorResult].
  /// [administratorType] Type of the sever administrator.
  /// [azureADOnlyAuthentication] Azure Active Directory only Authentication enabled.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [login] Login name of the server administrator.
  /// [name] Resource name.
  /// [sid] SID (object ID) of the server administrator.
  /// [tenantId] Tenant ID of the administrator.
  /// [type] Resource type.
  const GetServerAzureADAdministratorResult({
    this.administratorType,
    this.azureADOnlyAuthentication,
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
      'azureADOnlyAuthentication': ?azureADOnlyAuthentication,
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'login': ?login,
      'name': ?name,
      'sid': ?sid,
      'tenantId': ?tenantId,
      'type': ?type,
    };
  }

  factory GetServerAzureADAdministratorResult.fromMap(Map<String, dynamic> map) {
    return GetServerAzureADAdministratorResult(
      administratorType: (() { final guardedValue = map['administratorType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureADOnlyAuthentication: (() { final guardedValue = map['azureADOnlyAuthentication']; if (guardedValue == null) return null; return guardedValue as bool; })(),
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
