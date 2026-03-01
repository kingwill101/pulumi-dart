// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_cmek_config.dart';

/// Input properties used for looking up and filtering Database resources.
class DatabaseState {
  /// The App Engine integration mode to use for this database.
  /// Possible values are: `ENABLED`, `DISABLED`.
  final pulumi.Input<String>? appEngineIntegrationMode;
  /// The CMEK (Customer Managed Encryption Key) configuration for a Firestore
  /// database. If not present, the database is secured by the default Google
  /// encryption key.
  /// Structure is documented below.
  final pulumi.Input<DatabaseCmekConfig>? cmekConfig;
  /// The concurrency control mode to use for this database.
  /// Possible values are: `OPTIMISTIC`, `PESSIMISTIC`, `OPTIMISTIC_WITH_ENTITY_GROUPS`.
  final pulumi.Input<String>? concurrencyMode;
  /// Output only. The timestamp at which this database was created.
  final pulumi.Input<String>? createTime;
  /// The database edition.
  /// Possible values are: `STANDARD`, `ENTERPRISE`.
  final pulumi.Input<String>? databaseEdition;
  final pulumi.Input<String>? deleteProtectionState;
  final pulumi.Input<String>? deletionPolicy;
  /// Output only. The earliest timestamp at which older versions of the data can be read from the database. See versionRetentionPeriod above; this field is populated with now - versionRetentionPeriod.
  /// This value is continuously updated, and becomes stale the moment it is queried. If you are using this value to recover data, make sure to account for the time from the moment when the value is queried to the moment when you initiate the recovery.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? earliestVersionTime;
  /// Output only. This checksum is computed by the server based on the value of other fields,
  /// and may be sent on update and delete requests to ensure the client has an
  /// up-to-date value before proceeding.
  final pulumi.Input<String>? etag;
  /// Output only. The keyPrefix for this database.
  /// This keyPrefix is used, in combination with the project id ("~") to construct the application id
  /// that is returned from the Cloud Datastore APIs in Google App Engine first generation runtimes.
  /// This value may be empty in which case the appid to use for URL-encoded keys is the project_id (eg: foo instead of v~foo).
  final pulumi.Input<String>? keyPrefix;
  /// The location of the database. Available locations are listed at
  /// https://cloud.google.com/firestore/docs/locations.
  final pulumi.Input<String>? locationId;
  /// The ID to use for the database, which will become the final
  /// component of the database's resource name. This value should be 4-63
  /// characters. Valid characters are /[a-z][0-9]-/ with first character
  /// a letter and the last a letter or a number. Must not be
  /// UUID-like /[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}/.
  /// "(default)" database id is also valid.
  final pulumi.Input<String>? name;
  /// Whether to enable the PITR feature on this database.
  /// If `POINT_IN_TIME_RECOVERY_ENABLED` is selected, reads are supported on selected versions of the data from within the past 7 days.
  /// versionRetentionPeriod and earliestVersionTime can be used to determine the supported versions. These include reads against any timestamp within the past hour
  /// and reads against 1-minute snapshots beyond 1 hour and within 7 days.
  /// If `POINT_IN_TIME_RECOVERY_DISABLED` is selected, reads are supported on any version of the data from within the past 1 hour.
  /// Default value is `POINT_IN_TIME_RECOVERY_DISABLED`.
  /// Possible values are: `POINT_IN_TIME_RECOVERY_ENABLED`, `POINT_IN_TIME_RECOVERY_DISABLED`.
  final pulumi.Input<String>? pointInTimeRecoveryEnablement;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Input only. A map of resource manager tags. Resource manager tag keys
  /// and values have the same definition as resource manager tags.
  /// Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456.
  /// The field is ignored when empty. The field is immutable and causes
  /// resource replacement when mutated. To apply tags to an existing resource, see
  /// the `gcp.tags.TagValue` resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The type of the database.
  /// See https://cloud.google.com/datastore/docs/firestore-or-datastore
  /// for information about how to choose.
  /// Possible values are: `FIRESTORE_NATIVE`, `DATASTORE_MODE`.
  final pulumi.Input<String>? type;
  /// Output only. The system-generated UUID4 for this Database.
  final pulumi.Input<String>? uid;
  /// Output only. The timestamp at which this database was most recently updated.
  final pulumi.Input<String>? updateTime;
  /// Output only. The period during which past versions of data are retained in the database.
  /// Any read or query can specify a readTime within this window, and will read the state of the database at that time.
  /// If the PITR feature is enabled, the retention period is 7 days. Otherwise, the retention period is 1 hour.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final pulumi.Input<String>? versionRetentionPeriod;

  /// Creates a new [DatabaseState].
  /// [appEngineIntegrationMode] The App Engine integration mode to use for this database.
  /// [cmekConfig] The CMEK (Customer Managed Encryption Key) configuration for a Firestore
  /// [concurrencyMode] The concurrency control mode to use for this database.
  /// [createTime] Output only. The timestamp at which this database was created.
  /// [databaseEdition] The database edition.
  /// [deleteProtectionState] Optional.
  /// [deletionPolicy] Optional.
  /// [earliestVersionTime] Output only. The earliest timestamp at which older versions of the data can be read from the database. See versionRetentionPeriod above; this field is populated with now - versionRetentionPeriod.
  /// [etag] Output only. This checksum is computed by the server based on the value of other fields,
  /// [keyPrefix] Output only. The keyPrefix for this database.
  /// [locationId] The location of the database. Available locations are listed at
  /// [name] The ID to use for the database, which will become the final
  /// [pointInTimeRecoveryEnablement] Whether to enable the PITR feature on this database.
  /// [project] The ID of the project in which the resource belongs.
  /// [tags] Input only. A map of resource manager tags. Resource manager tag keys
  /// [type] The type of the database.
  /// [uid] Output only. The system-generated UUID4 for this Database.
  /// [updateTime] Output only. The timestamp at which this database was most recently updated.
  /// [versionRetentionPeriod] Output only. The period during which past versions of data are retained in the database.
  DatabaseState({
    pulumi.Output<String>? appEngineIntegrationMode,
    pulumi.Output<DatabaseCmekConfig>? cmekConfig,
    pulumi.Output<String>? concurrencyMode,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? databaseEdition,
    pulumi.Output<String>? deleteProtectionState,
    pulumi.Output<String>? deletionPolicy,
    pulumi.Output<String>? earliestVersionTime,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? keyPrefix,
    pulumi.Output<String>? locationId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? pointInTimeRecoveryEnablement,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? type,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
    pulumi.Output<String>? versionRetentionPeriod,
  }) :
      appEngineIntegrationMode = pulumi.Input.asOptionalInput<String>(appEngineIntegrationMode),
      cmekConfig = pulumi.Input.asOptionalInput<DatabaseCmekConfig>(cmekConfig),
      concurrencyMode = pulumi.Input.asOptionalInput<String>(concurrencyMode),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      databaseEdition = pulumi.Input.asOptionalInput<String>(databaseEdition),
      deleteProtectionState = pulumi.Input.asOptionalInput<String>(deleteProtectionState),
      deletionPolicy = pulumi.Input.asOptionalInput<String>(deletionPolicy),
      earliestVersionTime = pulumi.Input.asOptionalInput<String>(earliestVersionTime),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      keyPrefix = pulumi.Input.asOptionalInput<String>(keyPrefix),
      locationId = pulumi.Input.asOptionalInput<String>(locationId),
      name = pulumi.Input.asOptionalInput<String>(name),
      pointInTimeRecoveryEnablement = pulumi.Input.asOptionalInput<String>(pointInTimeRecoveryEnablement),
      project = pulumi.Input.asOptionalInput<String>(project),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asOptionalInput<String>(type),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      versionRetentionPeriod = pulumi.Input.asOptionalInput<String>(versionRetentionPeriod);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appEngineIntegrationMode': ?appEngineIntegrationMode,
      'cmekConfig': ?pulumi.Input.mapOptionalInputValue<DatabaseCmekConfig, Map<String, dynamic>>(cmekConfig, (value) => value.toMap()),
      'concurrencyMode': ?concurrencyMode,
      'createTime': ?createTime,
      'databaseEdition': ?databaseEdition,
      'deleteProtectionState': ?deleteProtectionState,
      'deletionPolicy': ?deletionPolicy,
      'earliestVersionTime': ?earliestVersionTime,
      'etag': ?etag,
      'keyPrefix': ?keyPrefix,
      'locationId': ?locationId,
      'name': ?name,
      'pointInTimeRecoveryEnablement': ?pointInTimeRecoveryEnablement,
      'project': ?project,
      'tags': ?tags,
      'type': ?type,
      'uid': ?uid,
      'updateTime': ?updateTime,
      'versionRetentionPeriod': ?versionRetentionPeriod,
    };
  }

  factory DatabaseState.fromMap(Map<String, dynamic> map) {
    return DatabaseState(
      appEngineIntegrationMode: map['appEngineIntegrationMode'] == null ? null : pulumi.Output.create<String>(map['appEngineIntegrationMode'] as String),
      cmekConfig: map['cmekConfig'] == null ? null : pulumi.Output.create<DatabaseCmekConfig>(DatabaseCmekConfig.fromMap((map['cmekConfig'] as Map).cast<String, dynamic>())),
      concurrencyMode: map['concurrencyMode'] == null ? null : pulumi.Output.create<String>(map['concurrencyMode'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      databaseEdition: map['databaseEdition'] == null ? null : pulumi.Output.create<String>(map['databaseEdition'] as String),
      deleteProtectionState: map['deleteProtectionState'] == null ? null : pulumi.Output.create<String>(map['deleteProtectionState'] as String),
      deletionPolicy: map['deletionPolicy'] == null ? null : pulumi.Output.create<String>(map['deletionPolicy'] as String),
      earliestVersionTime: map['earliestVersionTime'] == null ? null : pulumi.Output.create<String>(map['earliestVersionTime'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      keyPrefix: map['keyPrefix'] == null ? null : pulumi.Output.create<String>(map['keyPrefix'] as String),
      locationId: map['locationId'] == null ? null : pulumi.Output.create<String>(map['locationId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      pointInTimeRecoveryEnablement: map['pointInTimeRecoveryEnablement'] == null ? null : pulumi.Output.create<String>(map['pointInTimeRecoveryEnablement'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      versionRetentionPeriod: map['versionRetentionPeriod'] == null ? null : pulumi.Output.create<String>(map['versionRetentionPeriod'] as String),
    );
  }
}

