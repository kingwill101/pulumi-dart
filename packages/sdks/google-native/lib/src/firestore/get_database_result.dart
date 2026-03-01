// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDatabase.
class GetDatabaseResult {
  /// The App Engine integration mode to use for this database.
  final String appEngineIntegrationMode;
  /// The concurrency control mode to use for this database.
  final String concurrencyMode;
  /// The timestamp at which this database was created. Databases created before 2016 do not populate create_time.
  final String createTime;
  /// State of delete protection for the database.
  final String deleteProtectionState;
  /// The earliest timestamp at which older versions of the data can be read from the database. See [version_retention_period] above; this field is populated with `now - version_retention_period`. This value is continuously updated, and becomes stale the moment it is queried. If you are using this value to recover data, make sure to account for the time from the moment when the value is queried to the moment when you initiate the recovery.
  final String earliestVersionTime;
  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final String etag;
  /// The key_prefix for this database. This key_prefix is used, in combination with the project id ("~") to construct the application id that is returned from the Cloud Datastore APIs in Google App Engine first generation runtimes. This value may be empty in which case the appid to use for URL-encoded keys is the project_id (eg: foo instead of v~foo).
  final String keyPrefix;
  /// The location of the database. Available locations are listed at https://cloud.google.com/firestore/docs/locations.
  final String location;
  /// The resource name of the Database. Format: `projects/{project}/databases/{database}`
  final String name;
  /// Whether to enable the PITR feature on this database.
  final String pointInTimeRecoveryEnablement;
  /// The type of the database. See https://cloud.google.com/datastore/docs/firestore-or-datastore for information about how to choose.
  final String type;
  /// The system-generated UUID4 for this Database.
  final String uid;
  /// The timestamp at which this database was most recently updated. Note this only includes updates to the database resource and not data contained by the database.
  final String updateTime;
  /// The period during which past versions of data are retained in the database. Any read or query can specify a `read_time` within this window, and will read the state of the database at that time. If the PITR feature is enabled, the retention period is 7 days. Otherwise, the retention period is 1 hour.
  final String versionRetentionPeriod;

  /// Creates a new [GetDatabaseResult].
  /// [appEngineIntegrationMode] The App Engine integration mode to use for this database.
  /// [concurrencyMode] The concurrency control mode to use for this database.
  /// [createTime] The timestamp at which this database was created. Databases created before 2016 do not populate create_time.
  /// [deleteProtectionState] State of delete protection for the database.
  /// [earliestVersionTime] The earliest timestamp at which older versions of the data can be read from the database. See [version_retention_period] above; this field is populated with `now - version_retention_period`. This value is continuously updated, and becomes stale the moment it is queried. If you are using this value to recover data, make sure to account for the time from the moment when the value is queried to the moment when you initiate the recovery.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [keyPrefix] The key_prefix for this database. This key_prefix is used, in combination with the project id ("~") to construct the application id that is returned from the Cloud Datastore APIs in Google App Engine first generation runtimes. This value may be empty in which case the appid to use for URL-encoded keys is the project_id (eg: foo instead of v~foo).
  /// [location] The location of the database. Available locations are listed at https://cloud.google.com/firestore/docs/locations.
  /// [name] The resource name of the Database. Format: `projects/{project}/databases/{database}`
  /// [pointInTimeRecoveryEnablement] Whether to enable the PITR feature on this database.
  /// [type] The type of the database. See https://cloud.google.com/datastore/docs/firestore-or-datastore for information about how to choose.
  /// [uid] The system-generated UUID4 for this Database.
  /// [updateTime] The timestamp at which this database was most recently updated. Note this only includes updates to the database resource and not data contained by the database.
  /// [versionRetentionPeriod] The period during which past versions of data are retained in the database. Any read or query can specify a `read_time` within this window, and will read the state of the database at that time. If the PITR feature is enabled, the retention period is 7 days. Otherwise, the retention period is 1 hour.
  GetDatabaseResult({
    required this.appEngineIntegrationMode,
    required this.concurrencyMode,
    required this.createTime,
    required this.deleteProtectionState,
    required this.earliestVersionTime,
    required this.etag,
    required this.keyPrefix,
    required this.location,
    required this.name,
    required this.pointInTimeRecoveryEnablement,
    required this.type,
    required this.uid,
    required this.updateTime,
    required this.versionRetentionPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appEngineIntegrationMode': appEngineIntegrationMode,
      'concurrencyMode': concurrencyMode,
      'createTime': createTime,
      'deleteProtectionState': deleteProtectionState,
      'earliestVersionTime': earliestVersionTime,
      'etag': etag,
      'keyPrefix': keyPrefix,
      'location': location,
      'name': name,
      'pointInTimeRecoveryEnablement': pointInTimeRecoveryEnablement,
      'type': type,
      'uid': uid,
      'updateTime': updateTime,
      'versionRetentionPeriod': versionRetentionPeriod,
    };
  }

  factory GetDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseResult(
      appEngineIntegrationMode: map['appEngineIntegrationMode'] as String,
      concurrencyMode: map['concurrencyMode'] as String,
      createTime: map['createTime'] as String,
      deleteProtectionState: map['deleteProtectionState'] as String,
      earliestVersionTime: map['earliestVersionTime'] as String,
      etag: map['etag'] as String,
      keyPrefix: map['keyPrefix'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      pointInTimeRecoveryEnablement: map['pointInTimeRecoveryEnablement'] as String,
      type: map['type'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
      versionRetentionPeriod: map['versionRetentionPeriod'] as String,
    );
  }
}

