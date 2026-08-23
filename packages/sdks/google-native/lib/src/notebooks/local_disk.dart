// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_disk_initialize_params.dart';

/// A Local attached disk resource.
class LocalDisk {
  /// Input only. Specifies the parameters for a new disk that will be created alongside the new instance. Use initialization parameters to create boot disks or local SSDs attached to the new instance. This property is mutually exclusive with the source property; you can only define one or the other, but not both.
  final pulumi.Input<LocalDiskInitializeParams>? initializeParams;
  /// Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI. Persistent disks must always use SCSI and the request will fail if you attempt to attach a persistent disk in any other format than SCSI. Local SSDs can use either NVME or SCSI. For performance characteristics of SCSI over NVMe, see Local SSD performance. Valid values: * `NVME` * `SCSI`
  final pulumi.Input<String>? interface;
  /// The mode in which to attach this disk, either `READ_WRITE` or `READ_ONLY`. If not specified, the default is to attach the disk in `READ_WRITE` mode. Valid values: * `READ_ONLY` * `READ_WRITE`
  final pulumi.Input<String>? mode;
  /// Specifies a valid partial or full URL to an existing Persistent Disk resource.
  final pulumi.Input<String>? source;
  /// Specifies the type of the disk, either `SCRATCH` or `PERSISTENT`. If not specified, the default is `PERSISTENT`. Valid values: * `PERSISTENT` * `SCRATCH`
  final pulumi.Input<String>? type;

  /// Creates a new [LocalDisk].
  /// [initializeParams] Input only. Specifies the parameters for a new disk that will be created alongside the new instance. Use initialization parameters to create boot disks or local SSDs attached to the new instance. This property is mutually exclusive with the source property; you can only define one or the other, but not both.
  /// [interface] Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI. Persistent disks must always use SCSI and the request will fail if you attempt to attach a persistent disk in any other format than SCSI. Local SSDs can use either NVME or SCSI. For performance characteristics of SCSI over NVMe, see Local SSD performance. Valid values: * `NVME` * `SCSI`
  /// [mode] The mode in which to attach this disk, either `READ_WRITE` or `READ_ONLY`. If not specified, the default is to attach the disk in `READ_WRITE` mode. Valid values: * `READ_ONLY` * `READ_WRITE`
  /// [source] Specifies a valid partial or full URL to an existing Persistent Disk resource.
  /// [type] Specifies the type of the disk, either `SCRATCH` or `PERSISTENT`. If not specified, the default is `PERSISTENT`. Valid values: * `PERSISTENT` * `SCRATCH`
  const LocalDisk({
    this.initializeParams,
    this.interface,
    this.mode,
    this.source,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initializeParams': ?pulumi.Input.mapOptionalInputValue<LocalDiskInitializeParams, Map<String, dynamic>>(initializeParams, (value) => value.toMap()),
      'interface': ?interface,
      'mode': ?mode,
      'source': ?source,
      'type': ?type,
    };
  }

  factory LocalDisk.fromMap(Map<String, dynamic> map) {
    return LocalDisk(
      initializeParams: (() { final guardedValue = map['initializeParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LocalDiskInitializeParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      interface: (() { final guardedValue = map['interface']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
