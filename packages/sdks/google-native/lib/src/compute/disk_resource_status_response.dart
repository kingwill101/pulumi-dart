// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_resource_status_async_replication_status_response.dart';

class DiskResourceStatusResponse {
  final pulumi.Input<DiskResourceStatusAsyncReplicationStatusResponse> asyncPrimaryDisk;
  /// Key: disk, value: AsyncReplicationStatus message
  final pulumi.Input<Map<String, String>> asyncSecondaryDisks;
  /// Space used by data stored in the disk (in bytes). Note that this field is set only when the disk is in a storage pool.
  final pulumi.Input<String> usedBytes;

  /// Creates a new [DiskResourceStatusResponse].
  /// [asyncPrimaryDisk] Required.
  /// [asyncSecondaryDisks] Key: disk, value: AsyncReplicationStatus message
  /// [usedBytes] Space used by data stored in the disk (in bytes). Note that this field is set only when the disk is in a storage pool.
  const DiskResourceStatusResponse({
    required this.asyncPrimaryDisk,
    required this.asyncSecondaryDisks,
    required this.usedBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asyncPrimaryDisk': pulumi.Input.mapInputValue<DiskResourceStatusAsyncReplicationStatusResponse, Map<String, dynamic>>(asyncPrimaryDisk, (value) => value.toMap()),
      'asyncSecondaryDisks': asyncSecondaryDisks,
      'usedBytes': usedBytes,
    };
  }

  factory DiskResourceStatusResponse.fromMap(Map<String, dynamic> map) {
    return DiskResourceStatusResponse(
      asyncPrimaryDisk: pulumi.Input.fromValue(DiskResourceStatusAsyncReplicationStatusResponse.fromMap((map['asyncPrimaryDisk']! as Map).cast<String, dynamic>())),
      asyncSecondaryDisks: pulumi.Input.fromValue((map['asyncSecondaryDisks'] as Map).cast<String, String>()),
      usedBytes: pulumi.Input.fromValue(map['usedBytes'] as String),
    );
  }
}

