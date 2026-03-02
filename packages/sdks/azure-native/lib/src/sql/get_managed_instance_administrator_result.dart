// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getManagedInstanceAdministrator.
class GetManagedInstanceAdministratorResult {
  /// Type of the managed instance administrator.
  final String administratorType;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource ID.
  final String id;
  /// Login name of the managed instance administrator.
  final String login;
  /// Resource name.
  final String name;
  /// SID (object ID) of the managed instance administrator.
  final String sid;
  /// Tenant ID of the managed instance administrator.
  final String? tenantId;
  /// Resource type.
  final String type;

  /// Creates a new [GetManagedInstanceAdministratorResult].
  /// [administratorType] Type of the managed instance administrator.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [login] Login name of the managed instance administrator.
  /// [name] Resource name.
  /// [sid] SID (object ID) of the managed instance administrator.
  /// [tenantId] Tenant ID of the managed instance administrator.
  /// [type] Resource type.
  GetManagedInstanceAdministratorResult({
    required this.administratorType,
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
      'administratorType': administratorType,
      'azureApiVersion': azureApiVersion,
      'id': id,
      'login': login,
      'name': name,
      'sid': sid,
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory GetManagedInstanceAdministratorResult.fromMap(Map<String, dynamic> map) {
    return GetManagedInstanceAdministratorResult(
      administratorType: map['administratorType'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      login: map['login'] as String,
      name: map['name'] as String,
      sid: map['sid'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId']! as String,
      type: map['type'] as String,
    );
  }
}

