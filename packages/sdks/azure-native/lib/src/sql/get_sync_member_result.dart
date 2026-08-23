// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSyncMember.
class GetSyncMemberResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Database name of the member database in the sync member.
  final String? databaseName;
  /// Database type of the sync member.
  final String? databaseType;
  /// Resource ID.
  final String id;
  /// Resource name.
  final String name;
  /// Private endpoint name of the sync member if use private link connection is enabled, for sync members in Azure.
  final String privateEndpointName;
  /// Server name of the member database in the sync member
  final String? serverName;
  /// SQL Server database id of the sync member.
  final String? sqlServerDatabaseId;
  /// ARM resource id of the sync agent in the sync member.
  final String? syncAgentId;
  /// Sync direction of the sync member.
  final String? syncDirection;
  /// ARM resource id of the sync member logical database, for sync members in Azure.
  final String? syncMemberAzureDatabaseResourceId;
  /// Sync state of the sync member.
  final String syncState;
  /// Resource type.
  final String type;
  /// Whether to use private link connection.
  final bool? usePrivateLinkConnection;
  /// User name of the member database in the sync member.
  final String? userName;

  /// Creates a new [GetSyncMemberResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [databaseName] Database name of the member database in the sync member.
  /// [databaseType] Database type of the sync member.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [privateEndpointName] Private endpoint name of the sync member if use private link connection is enabled, for sync members in Azure.
  /// [serverName] Server name of the member database in the sync member
  /// [sqlServerDatabaseId] SQL Server database id of the sync member.
  /// [syncAgentId] ARM resource id of the sync agent in the sync member.
  /// [syncDirection] Sync direction of the sync member.
  /// [syncMemberAzureDatabaseResourceId] ARM resource id of the sync member logical database, for sync members in Azure.
  /// [syncState] Sync state of the sync member.
  /// [type] Resource type.
  /// [usePrivateLinkConnection] Whether to use private link connection.
  /// [userName] User name of the member database in the sync member.
  const GetSyncMemberResult({
    required this.azureApiVersion,
    this.databaseName,
    this.databaseType,
    required this.id,
    required this.name,
    required this.privateEndpointName,
    this.serverName,
    this.sqlServerDatabaseId,
    this.syncAgentId,
    this.syncDirection,
    this.syncMemberAzureDatabaseResourceId,
    required this.syncState,
    required this.type,
    this.usePrivateLinkConnection,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'databaseName': ?databaseName,
      'databaseType': ?databaseType,
      'id': id,
      'name': name,
      'privateEndpointName': privateEndpointName,
      'serverName': ?serverName,
      'sqlServerDatabaseId': ?sqlServerDatabaseId,
      'syncAgentId': ?syncAgentId,
      'syncDirection': ?syncDirection,
      'syncMemberAzureDatabaseResourceId': ?syncMemberAzureDatabaseResourceId,
      'syncState': syncState,
      'type': type,
      'usePrivateLinkConnection': ?usePrivateLinkConnection,
      'userName': ?userName,
    };
  }

  factory GetSyncMemberResult.fromMap(Map<String, dynamic> map) {
    return GetSyncMemberResult(
      azureApiVersion: map['azureApiVersion'] as String,
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      databaseType: (() { final guardedValue = map['databaseType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      name: map['name'] as String,
      privateEndpointName: map['privateEndpointName'] as String,
      serverName: (() { final guardedValue = map['serverName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sqlServerDatabaseId: (() { final guardedValue = map['sqlServerDatabaseId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      syncAgentId: (() { final guardedValue = map['syncAgentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      syncDirection: (() { final guardedValue = map['syncDirection']; if (guardedValue == null) return null; return guardedValue as String; })(),
      syncMemberAzureDatabaseResourceId: (() { final guardedValue = map['syncMemberAzureDatabaseResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      syncState: map['syncState'] as String,
      type: map['type'] as String,
      usePrivateLinkConnection: (() { final guardedValue = map['usePrivateLinkConnection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
