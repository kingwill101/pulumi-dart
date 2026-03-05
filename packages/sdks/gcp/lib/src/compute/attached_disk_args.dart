// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_attached_disk_attached_disk_args_doc}
/// The set of arguments for AttachedDisk.
/// {@endtemplate}
/// {@macro pulumi_compute_attached_disk_attached_disk_args_doc}
class AttachedDiskArgs {
  /// Specifies a unique device name of your choice that is
  /// reflected into the /dev/disk/by-id/google-* tree of a Linux operating
  /// system running within the instance. This name can be used to
  /// reference the device for mounting, resizing, and so on, from within
  /// the instance.
  ///
  /// If not specified, the server chooses a default device name to apply
  /// to this disk, in the form persistent-disks-x, where x is a number
  /// assigned by Google Compute Engine.
  final pulumi.Input<String>? deviceName;
  /// `name` or `self_link` of the disk that will be attached.
  ///
  ///
  /// - - -
  final pulumi.Input<String> disk;
  /// `name` or `self_link` of the compute instance that the disk will be attached to.
  /// If the `self_link` is provided then `zone` and `project` are extracted from the
  /// self link. If only the name is used then `zone` and `project` must be defined
  /// as properties on the resource or provider.
  final pulumi.Input<String> instance;
  /// The disk interface used for attaching this disk.
  ///
  /// This field is only used for specific cases, please don't specify
  /// this field without advice from Google. Not specifying the field
  /// will allow the the server to assign the correct interface.
  ///
  /// Possible values:
  /// "SCSI"
  /// "NVME"
  final pulumi.Input<String>? interface;
  /// The mode in which to attach this disk, either READ_WRITE or
  /// READ_ONLY. If not specified, the default is to attach the disk in
  /// READ_WRITE mode.
  ///
  /// Possible values:
  /// "READ_ONLY"
  /// "READ_WRITE"
  final pulumi.Input<String>? mode;
  /// The project that the referenced compute instance is a part of. If `instance` is referenced by its
  /// `self_link` the project defined in the link will take precedence.
  final pulumi.Input<String>? project;
  /// The zone that the referenced compute instance is located within. If `instance` is referenced by its
  /// `self_link` the zone defined in the link will take precedence.
  final pulumi.Input<String>? zone;

  /// Creates a new [AttachedDiskArgs].
  /// [deviceName] Specifies a unique device name of your choice that is
  /// [disk] `name` or `self_link` of the disk that will be attached.
  /// [instance] `name` or `self_link` of the compute instance that the disk will be attached to.
  /// [interface] The disk interface used for attaching this disk.
  /// [mode] The mode in which to attach this disk, either READ_WRITE or
  /// [project] The project that the referenced compute instance is a part of. If `instance` is referenced by its
  /// [zone] The zone that the referenced compute instance is located within. If `instance` is referenced by its
  AttachedDiskArgs({
    this.deviceName,
    required this.disk,
    required this.instance,
    this.interface,
    this.mode,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': ?deviceName,
      'disk': disk,
      'instance': instance,
      'interface': ?interface,
      'mode': ?mode,
      'project': ?project,
      'zone': ?zone,
    };
  }

  factory AttachedDiskArgs.fromMap(Map<String, dynamic> map) {
    return AttachedDiskArgs(
      deviceName: (() { final guardedValue = map['deviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disk: pulumi.Input.fromValue(map['disk'] as String),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      interface: (() { final guardedValue = map['interface']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

