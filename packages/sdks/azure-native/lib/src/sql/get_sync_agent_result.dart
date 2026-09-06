// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSyncAgent.
class GetSyncAgentResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Expiration time of the sync agent version.
  final String? expiryTime;
  /// Resource ID.
  final String? id;
  /// If the sync agent version is up to date.
  final bool? isUpToDate;
  /// Last alive time of the sync agent.
  final String? lastAliveTime;
  /// Resource name.
  final String? name;
  /// State of the sync agent.
  final String? state;
  /// ARM resource id of the sync database in the sync agent.
  final String? syncDatabaseId;
  /// Resource type.
  final String? type;
  /// Version of the sync agent.
  final String? version;

  /// Creates a new [GetSyncAgentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [expiryTime] Expiration time of the sync agent version.
  /// [id] Resource ID.
  /// [isUpToDate] If the sync agent version is up to date.
  /// [lastAliveTime] Last alive time of the sync agent.
  /// [name] Resource name.
  /// [state] State of the sync agent.
  /// [syncDatabaseId] ARM resource id of the sync database in the sync agent.
  /// [type] Resource type.
  /// [version] Version of the sync agent.
  const GetSyncAgentResult({
    this.azureApiVersion,
    this.expiryTime,
    this.id,
    this.isUpToDate,
    this.lastAliveTime,
    this.name,
    this.state,
    this.syncDatabaseId,
    this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'expiryTime': ?expiryTime,
      'id': ?id,
      'isUpToDate': ?isUpToDate,
      'lastAliveTime': ?lastAliveTime,
      'name': ?name,
      'state': ?state,
      'syncDatabaseId': ?syncDatabaseId,
      'type': ?type,
      'version': ?version,
    };
  }

  factory GetSyncAgentResult.fromMap(Map<String, dynamic> map) {
    return GetSyncAgentResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expiryTime: (() { final guardedValue = map['expiryTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isUpToDate: (() { final guardedValue = map['isUpToDate']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      lastAliveTime: (() { final guardedValue = map['lastAliveTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      syncDatabaseId: (() { final guardedValue = map['syncDatabaseId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
