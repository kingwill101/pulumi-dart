// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_resource_status_async_replication_status_response_compute_beta.dart';

class DiskResourceStatusResponseComputeBeta {
  final pulumi.Input<DiskResourceStatusAsyncReplicationStatusResponseComputeBeta> asyncPrimaryDisk;
  /// Key: disk, value: AsyncReplicationStatus message
  final pulumi.Input<Map<String, String>> asyncSecondaryDisks;

  /// Creates a new [DiskResourceStatusResponseComputeBeta].
  /// [asyncPrimaryDisk] Required.
  /// [asyncSecondaryDisks] Key: disk, value: AsyncReplicationStatus message
  const DiskResourceStatusResponseComputeBeta({
    required this.asyncPrimaryDisk,
    required this.asyncSecondaryDisks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asyncPrimaryDisk': pulumi.Input.mapInputValue<DiskResourceStatusAsyncReplicationStatusResponseComputeBeta, Map<String, dynamic>>(asyncPrimaryDisk, (value) => value.toMap()),
      'asyncSecondaryDisks': asyncSecondaryDisks,
    };
  }

  factory DiskResourceStatusResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return DiskResourceStatusResponseComputeBeta(
      asyncPrimaryDisk: pulumi.Input.fromValue(DiskResourceStatusAsyncReplicationStatusResponseComputeBeta.fromMap((map['asyncPrimaryDisk']! as Map).cast<String, dynamic>())),
      asyncSecondaryDisks: pulumi.Input.fromValue((map['asyncSecondaryDisks'] as Map).cast<String, String>()),
    );
  }
}

