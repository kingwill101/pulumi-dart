// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AttachedDisk resources.
class AttachedDiskState {
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
  final pulumi.Input<String>? disk;
  /// `name` or `self_link` of the compute instance that the disk will be attached to.
  /// If the `self_link` is provided then `zone` and `project` are extracted from the
  /// self link. If only the name is used then `zone` and `project` must be defined
  /// as properties on the resource or provider.
  final pulumi.Input<String>? instance;
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

  /// Creates a new [AttachedDiskState].
  /// [deviceName] Specifies a unique device name of your choice that is
  /// [disk] `name` or `self_link` of the disk that will be attached.
  /// [instance] `name` or `self_link` of the compute instance that the disk will be attached to.
  /// [interface] The disk interface used for attaching this disk.
  /// [mode] The mode in which to attach this disk, either READ_WRITE or
  /// [project] The project that the referenced compute instance is a part of. If `instance` is referenced by its
  /// [zone] The zone that the referenced compute instance is located within. If `instance` is referenced by its
  AttachedDiskState({
    this.deviceName,
    this.disk,
    this.instance,
    this.interface,
    this.mode,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': ?deviceName,
      'disk': ?disk,
      'instance': ?instance,
      'interface': ?interface,
      'mode': ?mode,
      'project': ?project,
      'zone': ?zone,
    };
  }

  factory AttachedDiskState.fromMap(Map<String, dynamic> map) {
    return AttachedDiskState(
      deviceName: map['deviceName'] == null ? null : (map['deviceName']! as String).input(),
      disk: map['disk'] == null ? null : (map['disk']! as String).input(),
      instance: map['instance'] == null ? null : (map['instance']! as String).input(),
      interface: map['interface'] == null ? null : (map['interface']! as String).input(),
      mode: map['mode'] == null ? null : (map['mode']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      zone: map['zone'] == null ? null : (map['zone']! as String).input(),
    );
  }
}

