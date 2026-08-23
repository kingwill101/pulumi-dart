// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_type.dart';

/// A Google Compute Engine disk resource specification.
class Disk {
  /// Deprecated. Disks created by the Pipelines API will be deleted at the end of the pipeline run, regardless of what this field is set to.
  final pulumi.Input<bool>? autoDelete;
  /// Required at create time and cannot be overridden at run time. Specifies the path in the docker container where files on this disk should be located. For example, if `mountPoint` is `/mnt/disk`, and the parameter has `localPath` `inputs/file.txt`, the docker container can access the data at `/mnt/disk/inputs/file.txt`.
  final pulumi.Input<String>? mountPoint;
  /// The name of the disk that can be used in the pipeline parameters. Must be 1 - 63 characters. The name "boot" is reserved for system use.
  final pulumi.Input<String> name;
  /// Specifies how a sourced-base persistent disk will be mounted. See https://cloud.google.com/compute/docs/disks/persistent-disks#use_multi_instances for more details. Can only be set at create time.
  final pulumi.Input<bool>? readOnly;
  /// The size of the disk. Defaults to 500 (GB). This field is not applicable for local SSD.
  final pulumi.Input<int>? sizeGb;
  /// The full or partial URL of the persistent disk to attach. See https://cloud.google.com/compute/docs/reference/latest/instances#resource and https://cloud.google.com/compute/docs/disks/persistent-disks#snapshots for more details.
  final pulumi.Input<String>? source;
  /// The type of the disk to create.
  final pulumi.Input<DiskType> type;

  /// Creates a new [Disk].
  /// [autoDelete] Deprecated. Disks created by the Pipelines API will be deleted at the end of the pipeline run, regardless of what this field is set to.
  /// [mountPoint] Required at create time and cannot be overridden at run time. Specifies the path in the docker container where files on this disk should be located. For example, if `mountPoint` is `/mnt/disk`, and the parameter has `localPath` `inputs/file.txt`, the docker container can access the data at `/mnt/disk/inputs/file.txt`.
  /// [name] The name of the disk that can be used in the pipeline parameters. Must be 1 - 63 characters. The name "boot" is reserved for system use.
  /// [readOnly] Specifies how a sourced-base persistent disk will be mounted. See https://cloud.google.com/compute/docs/disks/persistent-disks#use_multi_instances for more details. Can only be set at create time.
  /// [sizeGb] The size of the disk. Defaults to 500 (GB). This field is not applicable for local SSD.
  /// [source] The full or partial URL of the persistent disk to attach. See https://cloud.google.com/compute/docs/reference/latest/instances#resource and https://cloud.google.com/compute/docs/disks/persistent-disks#snapshots for more details.
  /// [type] The type of the disk to create.
  const Disk({
    this.autoDelete,
    this.mountPoint,
    required this.name,
    this.readOnly,
    this.sizeGb,
    this.source,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDelete': ?autoDelete,
      'mountPoint': ?mountPoint,
      'name': name,
      'readOnly': ?readOnly,
      'sizeGb': ?sizeGb,
      'source': ?source,
      'type': pulumi.Input.mapInputValue<DiskType, String>(type, (value) => value.wireValue),
    };
  }

  factory Disk.fromMap(Map<String, dynamic> map) {
    return Disk(
      autoDelete: (() { final guardedValue = map['autoDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mountPoint: (() { final guardedValue = map['mountPoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sizeGb: (() { final guardedValue = map['sizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(DiskType.fromValue(map['type']! as String)),
    );
  }
}
