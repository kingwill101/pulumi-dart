// ignore_for_file: unused_element, unnecessary_cast

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
  final InstanceConfigDevicesSda? sda;
  /// Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  final InstanceConfigDevicesSdb? sdb;
  /// Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  final InstanceConfigDevicesSdc? sdc;
  /// Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  final InstanceConfigDevicesSdd? sdd;
  /// Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  final InstanceConfigDevicesSde? sde;
  /// Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  final InstanceConfigDevicesSdf? sdf;
  /// Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  final InstanceConfigDevicesSdg? sdg;
  /// Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  final InstanceConfigDevicesSdh? sdh;

  /// Creates a new [InstanceConfigDevices].
  /// [sda] ... `sdh` - (Optional) The SDA-SDH slots, represent the Linux block device nodes for the first 8 disks attached to the Linode.  Each device must be suplied sequentially.  The device can be either a Disk or a Volume identified by `disk_id` or `volume_id`. Only one disk identifier is permitted per slot. Devices mapped from `sde` through `sdh` are unavailable in `"fullvirt"` `virt_mode`.
  /// [sdb] Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  /// [sdc] Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  /// [sdd] Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  /// [sde] Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  /// [sdf] Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  /// [sdg] Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  /// [sdh] Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  InstanceConfigDevices({
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
      'sda': ?sda == null ? null : sda!.toMap(),
      'sdb': ?sdb == null ? null : sdb!.toMap(),
      'sdc': ?sdc == null ? null : sdc!.toMap(),
      'sdd': ?sdd == null ? null : sdd!.toMap(),
      'sde': ?sde == null ? null : sde!.toMap(),
      'sdf': ?sdf == null ? null : sdf!.toMap(),
      'sdg': ?sdg == null ? null : sdg!.toMap(),
      'sdh': ?sdh == null ? null : sdh!.toMap(),
    };
  }

  factory InstanceConfigDevices.fromMap(Map<String, dynamic> map) {
    return InstanceConfigDevices(
      sda: map['sda'] == null ? null : InstanceConfigDevicesSda.fromMap((map['sda'] as Map).cast<String, dynamic>()),
      sdb: map['sdb'] == null ? null : InstanceConfigDevicesSdb.fromMap((map['sdb'] as Map).cast<String, dynamic>()),
      sdc: map['sdc'] == null ? null : InstanceConfigDevicesSdc.fromMap((map['sdc'] as Map).cast<String, dynamic>()),
      sdd: map['sdd'] == null ? null : InstanceConfigDevicesSdd.fromMap((map['sdd'] as Map).cast<String, dynamic>()),
      sde: map['sde'] == null ? null : InstanceConfigDevicesSde.fromMap((map['sde'] as Map).cast<String, dynamic>()),
      sdf: map['sdf'] == null ? null : InstanceConfigDevicesSdf.fromMap((map['sdf'] as Map).cast<String, dynamic>()),
      sdg: map['sdg'] == null ? null : InstanceConfigDevicesSdg.fromMap((map['sdg'] as Map).cast<String, dynamic>()),
      sdh: map['sdh'] == null ? null : InstanceConfigDevicesSdh.fromMap((map['sdh'] as Map).cast<String, dynamic>()),
    );
  }
}

