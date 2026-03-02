// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_async_replication_secondary_disk.dart';

/// {@template pulumi_compute_disk_async_replication_disk_async_replication_args_doc}
/// The set of arguments for DiskAsyncReplication.
/// {@endtemplate}
/// {@macro pulumi_compute_disk_async_replication_disk_async_replication_args_doc}
class DiskAsyncReplicationArgs {
  /// The primary disk (source of replication).
  final pulumi.Input<String> primaryDisk;
  /// The secondary disk (target of replication). You can specify only one value. Structure is documented below.
  ///
  /// The `secondary_disk` block includes:
  final pulumi.Input<DiskAsyncReplicationSecondaryDisk> secondaryDisk;

  /// Creates a new [DiskAsyncReplicationArgs].
  /// [primaryDisk] The primary disk (source of replication).
  /// [secondaryDisk] The secondary disk (target of replication). You can specify only one value. Structure is documented below.
  DiskAsyncReplicationArgs({
    required this.primaryDisk,
    required this.secondaryDisk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryDisk': primaryDisk,
      'secondaryDisk': pulumi.Input.mapInputValue<DiskAsyncReplicationSecondaryDisk, Map<String, dynamic>>(secondaryDisk, (value) => value.toMap()),
    };
  }

  factory DiskAsyncReplicationArgs.fromMap(Map<String, dynamic> map) {
    return DiskAsyncReplicationArgs(
      primaryDisk: (map['primaryDisk'] as String).input(),
      secondaryDisk: (DiskAsyncReplicationSecondaryDisk.fromMap((map['secondaryDisk'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

