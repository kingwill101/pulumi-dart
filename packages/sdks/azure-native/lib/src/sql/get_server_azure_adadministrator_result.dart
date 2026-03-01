// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getServerAzureADAdministrator.
class GetServerAzureADAdministratorResult {
  /// Type of the sever administrator.
  final String? administratorType;
  /// Azure Active Directory only Authentication enabled.
  final bool azureADOnlyAuthentication;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource ID.
  final String id;
  /// Login name of the server administrator.
  final String login;
  /// Resource name.
  final String name;
  /// SID (object ID) of the server administrator.
  final String sid;
  /// Tenant ID of the administrator.
  final String? tenantId;
  /// Resource type.
  final String type;

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
  GetServerAzureADAdministratorResult({
    this.administratorType,
    required this.azureADOnlyAuthentication,
    required this.azureApiVersion,
    required this.id,
    required this.login,
    required this.name,
    required this.sid,
    this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorType': ?administratorType,
      'azureADOnlyAuthentication': azureADOnlyAuthentication,
      'azureApiVersion': azureApiVersion,
      'id': id,
      'login': login,
      'name': name,
      'sid': sid,
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory GetServerAzureADAdministratorResult.fromMap(Map<String, dynamic> map) {
    return GetServerAzureADAdministratorResult(
      administratorType: map['administratorType'] == null ? null : map['administratorType'] as String,
      azureADOnlyAuthentication: map['azureADOnlyAuthentication'] as bool,
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      login: map['login'] as String,
      name: map['name'] as String,
      sid: map['sid'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

