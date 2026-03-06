// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_config_devices_sda.dart';
import 'instance_config_devices_sdb.dart';
import 'instance_config_devices_sdc.dart';
import 'instance_config_devices_sdd.dart';
import 'instance_config_devices_sde.dart';
import 'instance_config_devices_sdf.dart';
import 'instance_config_devices_sdg.dart';
import 'instance_config_devices_sdh.dart';

class InstanceConfigDevices {
  /// ... `sdh` - (Optional) The SDA-SDH slots, represent the Linux block device nodes for the first 8 disks attached to the Linode.  Each device must be suplied sequentially.  The device can be either a Disk or a Volume identified by `disk_id` or `volume_id`. Only one disk identifier is permitted per slot. Devices mapped from `sde` through `sdh` are unavailable in `"fullvirt"` `virt_mode`.
  final pulumi.Input<InstanceConfigDevicesSda>? sda;
  /// Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  final pulumi.Input<InstanceConfigDevicesSdb>? sdb;
  /// Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  final pulumi.Input<InstanceConfigDevicesSdc>? sdc;
  /// Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  final pulumi.Input<InstanceConfigDevicesSdd>? sdd;
  /// Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  final pulumi.Input<InstanceConfigDevicesSde>? sde;
  /// Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  final pulumi.Input<InstanceConfigDevicesSdf>? sdf;
  /// Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  final pulumi.Input<InstanceConfigDevicesSdg>? sdg;
  /// Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  final pulumi.Input<InstanceConfigDevicesSdh>? sdh;

  /// Creates a new [InstanceConfigDevices].
  /// [sda] ... `sdh` - (Optional) The SDA-SDH slots, represent the Linux block device nodes for the first 8 disks attached to the Linode.  Each device must be suplied sequentially.  The device can be either a Disk or a Volume identified by `disk_id` or `volume_id`. Only one disk identifier is permitted per slot. Devices mapped from `sde` through `sdh` are unavailable in `"fullvirt"` `virt_mode`.
  /// [sdb] Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  /// [sdc] Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  /// [sdd] Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  /// [sde] Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  /// [sdf] Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  /// [sdg] Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  /// [sdh] Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  const InstanceConfigDevices({
    this.sda,
    this.sdb,
    this.sdc,
    this.sdd,
    this.sde,
    this.sdf,
    this.sdg,
    this.sdh,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sda': ?pulumi.Input.mapOptionalInputValue<InstanceConfigDevicesSda, Map<String, dynamic>>(sda, (value) => value.toMap()),
      'sdb': ?pulumi.Input.mapOptionalInputValue<InstanceConfigDevicesSdb, Map<String, dynamic>>(sdb, (value) => value.toMap()),
      'sdc': ?pulumi.Input.mapOptionalInputValue<InstanceConfigDevicesSdc, Map<String, dynamic>>(sdc, (value) => value.toMap()),
      'sdd': ?pulumi.Input.mapOptionalInputValue<InstanceConfigDevicesSdd, Map<String, dynamic>>(sdd, (value) => value.toMap()),
      'sde': ?pulumi.Input.mapOptionalInputValue<InstanceConfigDevicesSde, Map<String, dynamic>>(sde, (value) => value.toMap()),
      'sdf': ?pulumi.Input.mapOptionalInputValue<InstanceConfigDevicesSdf, Map<String, dynamic>>(sdf, (value) => value.toMap()),
      'sdg': ?pulumi.Input.mapOptionalInputValue<InstanceConfigDevicesSdg, Map<String, dynamic>>(sdg, (value) => value.toMap()),
      'sdh': ?pulumi.Input.mapOptionalInputValue<InstanceConfigDevicesSdh, Map<String, dynamic>>(sdh, (value) => value.toMap()),
    };
  }

  factory InstanceConfigDevices.fromMap(Map<String, dynamic> map) {
    return InstanceConfigDevices(
      sda: (() { final guardedValue = map['sda']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceConfigDevicesSda.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sdb: (() { final guardedValue = map['sdb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceConfigDevicesSdb.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sdc: (() { final guardedValue = map['sdc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceConfigDevicesSdc.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sdd: (() { final guardedValue = map['sdd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceConfigDevicesSdd.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sde: (() { final guardedValue = map['sde']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceConfigDevicesSde.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sdf: (() { final guardedValue = map['sdf']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceConfigDevicesSdf.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sdg: (() { final guardedValue = map['sdg']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceConfigDevicesSdg.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sdh: (() { final guardedValue = map['sdh']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceConfigDevicesSdh.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

