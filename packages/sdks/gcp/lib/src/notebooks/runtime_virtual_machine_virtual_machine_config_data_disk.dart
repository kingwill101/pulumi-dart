// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_virtual_machine_virtual_machine_config_data_disk_initialize_params.dart';

class RuntimeVirtualMachineVirtualMachineConfigDataDisk {
  /// (Output)
  /// Optional. Specifies whether the disk will be auto-deleted
  /// when the instance is deleted (but not when the disk is
  /// detached from the instance).
  final pulumi.Input<bool>? autoDelete;
  /// (Output)
  /// Optional. Indicates that this is a boot disk. The virtual
  /// machine will use the first partition of the disk for its
  /// root filesystem.
  final pulumi.Input<bool>? boot;
  /// (Output)
  /// Optional. Specifies a unique device name of your choice
  /// that is reflected into the /dev/disk/by-id/google-* tree
  /// of a Linux operating system running within the instance.
  /// This name can be used to reference the device for mounting,
  /// resizing, and so on, from within the instance.
  /// If not specified, the server chooses a default device name
  /// to apply to this disk, in the form persistent-disk-x, where
  /// x is a number assigned by Google Compute Engine. This field
  /// is only applicable for persistent disks.
  final pulumi.Input<String>? deviceName;
  /// (Output)
  /// Indicates a list of features to enable on the guest operating
  /// system. Applicable only for bootable images. To see a list of
  /// available features, read `https://cloud.google.com/compute/docs/
  /// images/create-delete-deprecate-private-images#guest-os-features`
  /// options. ``
  final pulumi.Input<List<String>>? guestOsFeatures;
  /// (Output)
  /// Output only. A zero-based index to this disk, where 0 is
  /// reserved for the boot disk. If you have many disks attached
  /// to an instance, each disk would have a unique index number.
  final pulumi.Input<int>? index;
  /// Input only. Specifies the parameters for a new disk that will
  /// be created alongside the new instance. Use initialization
  /// parameters to create boot disks or local SSDs attached to the
  /// new instance. This property is mutually exclusive with the
  /// source property; you can only define one or the other, but not
  /// both.
  /// Structure is documented below.
  final pulumi.Input<RuntimeVirtualMachineVirtualMachineConfigDataDiskInitializeParams>? initializeParams;
  /// "Specifies the disk interface to use for attaching this disk,
  /// which is either SCSI or NVME. The default is SCSI. Persistent
  /// disks must always use SCSI and the request will fail if you attempt
  /// to attach a persistent disk in any other format than SCSI. Local SSDs
  /// can use either NVME or SCSI. For performance characteristics of SCSI
  /// over NVMe, see Local SSD performance. Valid values: * NVME * SCSI".
  final pulumi.Input<String>? interface;
  /// (Output)
  /// Type of the resource. Always compute#attachedDisk for attached
  /// disks.
  final pulumi.Input<String>? kind;
  /// (Output)
  /// Output only. Any valid publicly visible licenses.
  final pulumi.Input<List<String>>? licenses;
  /// The mode in which to attach this disk, either READ_WRITE
  /// or READ_ONLY. If not specified, the default is to attach
  /// the disk in READ_WRITE mode.
  final pulumi.Input<String>? mode;
  /// Specifies a valid partial or full URL to an existing
  /// Persistent Disk resource.
  final pulumi.Input<String>? source;
  /// Specifies the type of the disk, either SCRATCH or PERSISTENT.
  /// If not specified, the default is PERSISTENT.
  final pulumi.Input<String>? type;

  /// Creates a new [RuntimeVirtualMachineVirtualMachineConfigDataDisk].
  /// [autoDelete] (Output)
  /// [boot] (Output)
  /// [deviceName] (Output)
  /// [guestOsFeatures] (Output)
  /// [index] (Output)
  /// [initializeParams] Input only. Specifies the parameters for a new disk that will
  /// [interface] "Specifies the disk interface to use for attaching this disk,
  /// [kind] (Output)
  /// [licenses] (Output)
  /// [mode] The mode in which to attach this disk, either READ_WRITE
  /// [source] Specifies a valid partial or full URL to an existing
  /// [type] Specifies the type of the disk, either SCRATCH or PERSISTENT.
  RuntimeVirtualMachineVirtualMachineConfigDataDisk({
    this.autoDelete,
    this.boot,
    this.deviceName,
    this.guestOsFeatures,
    this.index,
    this.initializeParams,
    this.interface,
    this.kind,
    this.licenses,
    this.mode,
    this.source,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDelete': ?autoDelete,
      'boot': ?boot,
      'deviceName': ?deviceName,
      'guestOsFeatures': ?guestOsFeatures,
      'index': ?index,
      'initializeParams': ?pulumi.Input.mapOptionalInputValue<RuntimeVirtualMachineVirtualMachineConfigDataDiskInitializeParams, Map<String, dynamic>>(initializeParams, (value) => value.toMap()),
      'interface': ?interface,
      'kind': ?kind,
      'licenses': ?licenses,
      'mode': ?mode,
      'source': ?source,
      'type': ?type,
    };
  }

  factory RuntimeVirtualMachineVirtualMachineConfigDataDisk.fromMap(Map<String, dynamic> map) {
    return RuntimeVirtualMachineVirtualMachineConfigDataDisk(
      autoDelete: map['autoDelete'] == null ? null : (map['autoDelete']! as bool).input(),
      boot: map['boot'] == null ? null : (map['boot']! as bool).input(),
      deviceName: map['deviceName'] == null ? null : (map['deviceName']! as String).input(),
      guestOsFeatures: map['guestOsFeatures'] == null ? null : ((map['guestOsFeatures']! as List).cast<String>()).input(),
      index: map['index'] == null ? null : (map['index']! as int).input(),
      initializeParams: map['initializeParams'] == null ? null : (RuntimeVirtualMachineVirtualMachineConfigDataDiskInitializeParams.fromMap((map['initializeParams']! as Map).cast<String, dynamic>())).input(),
      interface: map['interface'] == null ? null : (map['interface']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      licenses: map['licenses'] == null ? null : ((map['licenses']! as List).cast<String>()).input(),
      mode: map['mode'] == null ? null : (map['mode']! as String).input(),
      source: map['source'] == null ? null : (map['source']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

