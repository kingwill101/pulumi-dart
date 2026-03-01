// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_instance_config_device_sda.dart';
import 'get_instances_instance_config_device_sdb.dart';
import 'get_instances_instance_config_device_sdc.dart';
import 'get_instances_instance_config_device_sdd.dart';
import 'get_instances_instance_config_device_sde.dart';
import 'get_instances_instance_config_device_sdf.dart';
import 'get_instances_instance_config_device_sdg.dart';
import 'get_instances_instance_config_device_sdh.dart';

class GetInstancesInstanceConfigDevice {
  /// ... `sdh` -  The SDA-SDH slots, represent the Linux block device nodes for the first 8 disks attached to the Linode.  Each device must be suplied sequentially.  The device can be either a Disk or a Volume identified by `disk_label` or `volume_id`. Only one disk identifier is permitted per slot. Devices mapped from `sde` through `sdh` are unavailable in `"fullvirt"` `virt_mode`.
  final List<GetInstancesInstanceConfigDeviceSda> sdas;
  /// Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  final List<GetInstancesInstanceConfigDeviceSdb> sdbs;
  /// Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  final List<GetInstancesInstanceConfigDeviceSdc> sdcs;
  /// Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  final List<GetInstancesInstanceConfigDeviceSdd> sdds;
  /// Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  final List<GetInstancesInstanceConfigDeviceSde> sdes;
  /// Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  final List<GetInstancesInstanceConfigDeviceSdf> sdfs;
  /// Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  final List<GetInstancesInstanceConfigDeviceSdg> sdgs;
  /// Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  final List<GetInstancesInstanceConfigDeviceSdh> sdhs;

  /// Creates a new [GetInstancesInstanceConfigDevice].
  /// [sdas] ... `sdh` -  The SDA-SDH slots, represent the Linux block device nodes for the first 8 disks attached to the Linode.  Each device must be suplied sequentially.  The device can be either a Disk or a Volume identified by `disk_label` or `volume_id`. Only one disk identifier is permitted per slot. Devices mapped from `sde` through `sdh` are unavailable in `"fullvirt"` `virt_mode`.
  /// [sdbs] Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  /// [sdcs] Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  /// [sdds] Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  /// [sdes] Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  /// [sdfs] Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  /// [sdgs] Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  /// [sdhs] Device can be either a Disk or Volume identified by disk_id or volume_id. Only one type per slot allowed.
  GetInstancesInstanceConfigDevice({
    required this.sdas,
    required this.sdbs,
    required this.sdcs,
    required this.sdds,
    required this.sdes,
    required this.sdfs,
    required this.sdgs,
    required this.sdhs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sdas': pulumi.Input.encodeList<GetInstancesInstanceConfigDeviceSda, Map<String, dynamic>>(sdas, (value) => value.toMap()),
      'sdbs': pulumi.Input.encodeList<GetInstancesInstanceConfigDeviceSdb, Map<String, dynamic>>(sdbs, (value) => value.toMap()),
      'sdcs': pulumi.Input.encodeList<GetInstancesInstanceConfigDeviceSdc, Map<String, dynamic>>(sdcs, (value) => value.toMap()),
      'sdds': pulumi.Input.encodeList<GetInstancesInstanceConfigDeviceSdd, Map<String, dynamic>>(sdds, (value) => value.toMap()),
      'sdes': pulumi.Input.encodeList<GetInstancesInstanceConfigDeviceSde, Map<String, dynamic>>(sdes, (value) => value.toMap()),
      'sdfs': pulumi.Input.encodeList<GetInstancesInstanceConfigDeviceSdf, Map<String, dynamic>>(sdfs, (value) => value.toMap()),
      'sdgs': pulumi.Input.encodeList<GetInstancesInstanceConfigDeviceSdg, Map<String, dynamic>>(sdgs, (value) => value.toMap()),
      'sdhs': pulumi.Input.encodeList<GetInstancesInstanceConfigDeviceSdh, Map<String, dynamic>>(sdhs, (value) => value.toMap()),
    };
  }

  factory GetInstancesInstanceConfigDevice.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstanceConfigDevice(
      sdas: pulumi.Input.decodeList<GetInstancesInstanceConfigDeviceSda>(map['sdas'], (value) => GetInstancesInstanceConfigDeviceSda.fromMap((value as Map).cast<String, dynamic>())),
      sdbs: pulumi.Input.decodeList<GetInstancesInstanceConfigDeviceSdb>(map['sdbs'], (value) => GetInstancesInstanceConfigDeviceSdb.fromMap((value as Map).cast<String, dynamic>())),
      sdcs: pulumi.Input.decodeList<GetInstancesInstanceConfigDeviceSdc>(map['sdcs'], (value) => GetInstancesInstanceConfigDeviceSdc.fromMap((value as Map).cast<String, dynamic>())),
      sdds: pulumi.Input.decodeList<GetInstancesInstanceConfigDeviceSdd>(map['sdds'], (value) => GetInstancesInstanceConfigDeviceSdd.fromMap((value as Map).cast<String, dynamic>())),
      sdes: pulumi.Input.decodeList<GetInstancesInstanceConfigDeviceSde>(map['sdes'], (value) => GetInstancesInstanceConfigDeviceSde.fromMap((value as Map).cast<String, dynamic>())),
      sdfs: pulumi.Input.decodeList<GetInstancesInstanceConfigDeviceSdf>(map['sdfs'], (value) => GetInstancesInstanceConfigDeviceSdf.fromMap((value as Map).cast<String, dynamic>())),
      sdgs: pulumi.Input.decodeList<GetInstancesInstanceConfigDeviceSdg>(map['sdgs'], (value) => GetInstancesInstanceConfigDeviceSdg.fromMap((value as Map).cast<String, dynamic>())),
      sdhs: pulumi.Input.decodeList<GetInstancesInstanceConfigDeviceSdh>(map['sdhs'], (value) => GetInstancesInstanceConfigDeviceSdh.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

