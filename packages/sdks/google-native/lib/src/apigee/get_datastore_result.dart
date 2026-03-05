// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_apigee_v1_datastore_config_response.dart';

/// Result data returned by getDatastore.
class GetDatastoreResult {
  /// Datastore create time, in milliseconds since the epoch of 1970-01-01T00:00:00Z
  final String createTime;
  /// Datastore Configurations.
  final GoogleCloudApigeeV1DatastoreConfigResponse datastoreConfig;
  /// Display name in UI
  final String displayName;
  /// Datastore last update time, in milliseconds since the epoch of 1970-01-01T00:00:00Z
  final String lastUpdateTime;
  /// Organization that the datastore belongs to
  final String org;
  /// Resource link of Datastore. Example: `/organizations/{org}/analytics/datastores/{uuid}`
  final String self;
  /// Destination storage type. Supported types `gcs` or `bigquery`.
  final String targetType;

  /// Creates a new [GetDatastoreResult].
  /// [createTime] Datastore create time, in milliseconds since the epoch of 1970-01-01T00:00:00Z
  /// [datastoreConfig] Datastore Configurations.
  /// [displayName] Display name in UI
  /// [lastUpdateTime] Datastore last update time, in milliseconds since the epoch of 1970-01-01T00:00:00Z
  /// [org] Organization that the datastore belongs to
  /// [self] Resource link of Datastore. Example: `/organizations/{org}/analytics/datastores/{uuid}`
  /// [targetType] Destination storage type. Supported types `gcs` or `bigquery`.
  GetDatastoreResult({
    required this.createTime,
    required this.datastoreConfig,
    required this.displayName,
    required this.lastUpdateTime,
    required this.org,
    required this.self,
    required this.targetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'datastoreConfig': datastoreConfig.toMap(),
      'displayName': displayName,
      'lastUpdateTime': lastUpdateTime,
      'org': org,
      'self': self,
      'targetType': targetType,
    };
  }

  factory GetDatastoreResult.fromMap(Map<String, dynamic> map) {
    return GetDatastoreResult(
      createTime: map['createTime'] as String,
      datastoreConfig: GoogleCloudApigeeV1DatastoreConfigResponse.fromMap((map['datastoreConfig']! as Map).cast<String, dynamic>()),
      displayName: map['displayName'] as String,
      lastUpdateTime: map['lastUpdateTime'] as String,
      org: map['org'] as String,
      self: map['self'] as String,
      targetType: map['targetType'] as String,
    );
  }
}

