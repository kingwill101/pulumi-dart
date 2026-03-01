// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_config_devices.dart';
import 'instance_config_helpers.dart';
import 'instance_config_interface.dart';

class InstanceConfig {
  /// Optional field for arbitrary User comments on this Config.
  final String? comments;
  /// Device sda-sdh can be either a Disk or Volume identified by disk_label or volume_id. Only one type per slot allowed.
  final InstanceConfigDevices? devices;
  /// Helpers enabled when booting to this Linode Config.
  final InstanceConfigHelpers? helpers;
  /// The ID of the Placement Group.
  final int? id;
  /// An array of Network Interfaces for this Linode’s Configuration Profile.
  final List<InstanceConfigInterface>? interfaces;
  /// A Kernel ID to boot a Linode with. Default is based on image choice. (examples: linode/latest-64bit, linode/grub2, linode/direct-disk)
  final String? kernel;
  /// The Linode's label is for display purposes only. If no label is provided for a Linode, a default will be assigned.
  final String label;
  /// Defaults to the total RAM of the Linode
  final int? memoryLimit;
  /// The root device to boot. The corresponding disk must be attached.
  final String? rootDevice;
  /// Defines the state of your Linode after booting. Defaults to default.
  final String? runLevel;
  /// Controls the virtualization mode. Defaults to paravirt.
  final String? virtMode;

  /// Creates a new [InstanceConfig].
  /// [comments] Optional field for arbitrary User comments on this Config.
  /// [devices] Device sda-sdh can be either a Disk or Volume identified by disk_label or volume_id. Only one type per slot allowed.
  /// [helpers] Helpers enabled when booting to this Linode Config.
  /// [id] The ID of the Placement Group.
  /// [interfaces] An array of Network Interfaces for this Linode’s Configuration Profile.
  /// [kernel] A Kernel ID to boot a Linode with. Default is based on image choice. (examples: linode/latest-64bit, linode/grub2, linode/direct-disk)
  /// [label] The Linode's label is for display purposes only. If no label is provided for a Linode, a default will be assigned.
  /// [memoryLimit] Defaults to the total RAM of the Linode
  /// [rootDevice] The root device to boot. The corresponding disk must be attached.
  /// [runLevel] Defines the state of your Linode after booting. Defaults to default.
  /// [virtMode] Controls the virtualization mode. Defaults to paravirt.
  InstanceConfig({
    this.comments,
    this.devices,
    this.helpers,
    this.id,
    this.interfaces,
    this.kernel,
    required this.label,
    this.memoryLimit,
    this.rootDevice,
    this.runLevel,
    this.virtMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comments': ?comments,
      'devices': ?devices == null ? null : devices!.toMap(),
      'helpers': ?helpers == null ? null : helpers!.toMap(),
      'id': ?id,
      'interfaces': ?interfaces == null ? null : pulumi.Input.encodeList<InstanceConfigInterface, Map<String, dynamic>>(interfaces!, (value) => value.toMap()),
      'kernel': ?kernel,
      'label': label,
      'memoryLimit': ?memoryLimit,
      'rootDevice': ?rootDevice,
      'runLevel': ?runLevel,
      'virtMode': ?virtMode,
    };
  }

  factory InstanceConfig.fromMap(Map<String, dynamic> map) {
    return InstanceConfig(
      comments: map['comments'] == null ? null : map['comments'] as String,
      devices: map['devices'] == null ? null : InstanceConfigDevices.fromMap((map['devices'] as Map).cast<String, dynamic>()),
      helpers: map['helpers'] == null ? null : InstanceConfigHelpers.fromMap((map['helpers'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as int,
      interfaces: map['interfaces'] == null ? null : pulumi.Input.decodeList<InstanceConfigInterface>(map['interfaces'], (value) => InstanceConfigInterface.fromMap((value as Map).cast<String, dynamic>())),
      kernel: map['kernel'] == null ? null : map['kernel'] as String,
      label: map['label'] as String,
      memoryLimit: map['memoryLimit'] == null ? null : map['memoryLimit'] as int,
      rootDevice: map['rootDevice'] == null ? null : map['rootDevice'] as String,
      runLevel: map['runLevel'] == null ? null : map['runLevel'] as String,
      virtMode: map['virtMode'] == null ? null : map['virtMode'] as String,
    );
  }
}

