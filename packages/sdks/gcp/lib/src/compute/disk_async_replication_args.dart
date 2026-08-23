// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_async_replication_secondary_disk.dart';

/// {@template pulumi_compute_disk_async_replication_disk_async_replication_args_doc}
/// The set of arguments for DiskAsyncReplication.
/// {@endtemplate}
/// {@macro pulumi_compute_disk_async_replication_disk_async_replication_args_doc}
class DiskAsyncReplicationArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  ///
  /// The `secondaryDisk` block includes:
  final pulumi.Input<String>? deletionPolicy;
  /// The primary disk (source of replication).
  final pulumi.Input<String> primaryDisk;
  /// The secondary disk (target of replication). You can specify only one value. Structure is documented below.
  final pulumi.Input<DiskAsyncReplicationSecondaryDisk> secondaryDisk;

  /// Creates a new [DiskAsyncReplicationArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [primaryDisk] The primary disk (source of replication).
  /// [secondaryDisk] The secondary disk (target of replication). You can specify only one value. Structure is documented below.
  const DiskAsyncReplicationArgs({
    this.deletionPolicy,
    required this.primaryDisk,
    required this.secondaryDisk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'primaryDisk': primaryDisk,
      'secondaryDisk': pulumi.Input.mapInputValue<DiskAsyncReplicationSecondaryDisk, Map<String, dynamic>>(secondaryDisk, (value) => value.toMap()),
    };
  }

  factory DiskAsyncReplicationArgs.fromMap(Map<String, dynamic> map) {
    return DiskAsyncReplicationArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryDisk: pulumi.Input.fromValue(map['primaryDisk'] as String),
      secondaryDisk: pulumi.Input.fromValue(DiskAsyncReplicationSecondaryDisk.fromMap((map['secondaryDisk']! as Map).cast<String, dynamic>())),
    );
  }
}
