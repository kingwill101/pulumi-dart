// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_apigee_v1_datastore_config_response.dart';

/// Result data returned by getDatastore.
class GetDatastoreResult {
  /// Datastore create time, in milliseconds since the epoch of 1970-01-01T00:00:00Z
  final String? createTime;
  /// Datastore Configurations.
  final GoogleCloudApigeeV1DatastoreConfigResponse? datastoreConfig;
  /// Display name in UI
  final String? displayName;
  /// Datastore last update time, in milliseconds since the epoch of 1970-01-01T00:00:00Z
  final String? lastUpdateTime;
  /// Organization that the datastore belongs to
  final String? org;
  /// Resource link of Datastore. Example: `/organizations/{org}/analytics/datastores/{uuid}`
  final String? self;
  /// Destination storage type. Supported types `gcs` or `bigquery`.
  final String? targetType;

  /// Creates a new [GetDatastoreResult].
  /// [createTime] Datastore create time, in milliseconds since the epoch of 1970-01-01T00:00:00Z
  /// [datastoreConfig] Datastore Configurations.
  /// [displayName] Display name in UI
  /// [lastUpdateTime] Datastore last update time, in milliseconds since the epoch of 1970-01-01T00:00:00Z
  /// [org] Organization that the datastore belongs to
  /// [self] Resource link of Datastore. Example: `/organizations/{org}/analytics/datastores/{uuid}`
  /// [targetType] Destination storage type. Supported types `gcs` or `bigquery`.
  const GetDatastoreResult({
    this.createTime,
    this.datastoreConfig,
    this.displayName,
    this.lastUpdateTime,
    this.org,
    this.self,
    this.targetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'datastoreConfig': ?datastoreConfig?.toMap(),
      'displayName': ?displayName,
      'lastUpdateTime': ?lastUpdateTime,
      'org': ?org,
      'self': ?self,
      'targetType': ?targetType,
    };
  }

  factory GetDatastoreResult.fromMap(Map<String, dynamic> map) {
    return GetDatastoreResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      datastoreConfig: (() { final guardedValue = map['datastoreConfig']; if (guardedValue == null) return null; return GoogleCloudApigeeV1DatastoreConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastUpdateTime: (() { final guardedValue = map['lastUpdateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      org: (() { final guardedValue = map['org']; if (guardedValue == null) return null; return guardedValue as String; })(),
      self: (() { final guardedValue = map['self']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targetType: (() { final guardedValue = map['targetType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
