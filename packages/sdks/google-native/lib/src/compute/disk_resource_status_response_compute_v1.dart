// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_resource_status_async_replication_status_response_compute_v1.dart';

class DiskResourceStatusResponseComputeV1 {
  final pulumi.Input<DiskResourceStatusAsyncReplicationStatusResponseComputeV1>
  asyncPrimaryDisk;

  /// Key: disk, value: AsyncReplicationStatus message
  final pulumi.Input<Map<String, String>> asyncSecondaryDisks;

  /// Creates a new [DiskResourceStatusResponseComputeV1].
  /// [asyncPrimaryDisk] Required.
  /// [asyncSecondaryDisks] Key: disk, value: AsyncReplicationStatus message
  DiskResourceStatusResponseComputeV1({
    required this.asyncPrimaryDisk,
    required this.asyncSecondaryDisks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asyncPrimaryDisk':
          pulumi.Input.mapInputValue<
            DiskResourceStatusAsyncReplicationStatusResponseComputeV1,
            Map<String, dynamic>
          >(asyncPrimaryDisk, (value) => value.toMap()),
      'asyncSecondaryDisks': asyncSecondaryDisks,
    };
  }

  factory DiskResourceStatusResponseComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return DiskResourceStatusResponseComputeV1(
      asyncPrimaryDisk: pulumi.Input.fromValue(
        DiskResourceStatusAsyncReplicationStatusResponseComputeV1.fromMap(
          (map['asyncPrimaryDisk']! as Map).cast<String, dynamic>(),
        ),
      ),
      asyncSecondaryDisks: pulumi.Input.fromValue(
        (map['asyncSecondaryDisks'] as Map).cast<String, String>(),
      ),
    );
  }
}
