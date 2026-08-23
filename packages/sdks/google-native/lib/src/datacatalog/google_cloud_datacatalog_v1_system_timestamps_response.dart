// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Timestamps associated with this resource in a particular system.
class GoogleCloudDatacatalogV1SystemTimestampsResponse {
  /// Creation timestamp of the resource within the given system.
  final pulumi.Input<String> createTime;
  /// Expiration timestamp of the resource within the given system. Currently only applicable to BigQuery resources.
  final pulumi.Input<String> expireTime;
  /// Timestamp of the last modification of the resource or its metadata within a given system. Note: Depending on the source system, not every modification updates this timestamp. For example, BigQuery timestamps every metadata modification but not data or permission changes.
  final pulumi.Input<String> updateTime;

  /// Creates a new [GoogleCloudDatacatalogV1SystemTimestampsResponse].
  /// [createTime] Creation timestamp of the resource within the given system.
  /// [expireTime] Expiration timestamp of the resource within the given system. Currently only applicable to BigQuery resources.
  /// [updateTime] Timestamp of the last modification of the resource or its metadata within a given system. Note: Depending on the source system, not every modification updates this timestamp. For example, BigQuery timestamps every metadata modification but not data or permission changes.
  const GoogleCloudDatacatalogV1SystemTimestampsResponse({
    required this.createTime,
    required this.expireTime,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'expireTime': expireTime,
      'updateTime': updateTime,
    };
  }

  factory GoogleCloudDatacatalogV1SystemTimestampsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1SystemTimestampsResponse(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      expireTime: pulumi.Input.fromValue(map['expireTime'] as String),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
    );
  }
}
