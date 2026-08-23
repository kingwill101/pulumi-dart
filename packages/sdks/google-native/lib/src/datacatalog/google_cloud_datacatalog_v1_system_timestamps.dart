// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Timestamps associated with this resource in a particular system.
class GoogleCloudDatacatalogV1SystemTimestamps {
  /// Creation timestamp of the resource within the given system.
  final pulumi.Input<String>? createTime;
  /// Timestamp of the last modification of the resource or its metadata within a given system. Note: Depending on the source system, not every modification updates this timestamp. For example, BigQuery timestamps every metadata modification but not data or permission changes.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [GoogleCloudDatacatalogV1SystemTimestamps].
  /// [createTime] Creation timestamp of the resource within the given system.
  /// [updateTime] Timestamp of the last modification of the resource or its metadata within a given system. Note: Depending on the source system, not every modification updates this timestamp. For example, BigQuery timestamps every metadata modification but not data or permission changes.
  const GoogleCloudDatacatalogV1SystemTimestamps({
    this.createTime,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'updateTime': ?updateTime,
    };
  }

  factory GoogleCloudDatacatalogV1SystemTimestamps.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1SystemTimestamps(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
