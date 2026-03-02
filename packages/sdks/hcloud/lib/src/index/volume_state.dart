// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Volume resources.
class VolumeState {
  /// Automount the volume upon attaching it (server_id must be provided).
  final pulumi.Input<bool>? automount;
  /// Enable or disable delete protection. See "Delete Protection" in the Provider Docs for details.
  ///
  /// **Note:** When you want to attach multiple volumes to a server, please use the `hcloud.VolumeAttachment` resource and the `location` argument instead of the `server_id` argument.
  final pulumi.Input<bool>? deleteProtection;
  /// Format volume after creation. `xfs` or `ext4`
  final pulumi.Input<String>? format;
  /// User-defined labels (key-value pairs).
  final pulumi.Input<Map<String, String>>? labels;
  /// (string) Device path on the file system for the Volume.
  final pulumi.Input<String>? linuxDevice;
  /// The location name of the volume to create, not allowed if server_id argument is passed. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  final pulumi.Input<String>? location;
  /// Name of the volume to create (must be unique per project).
  final pulumi.Input<String>? name;
  /// Server to attach the Volume to, not allowed if location argument is passed.
  final pulumi.Input<int>? serverId;
  /// Size of the volume (in GB).
  final pulumi.Input<int>? size;

  /// Creates a new [VolumeState].
  /// [automount] Automount the volume upon attaching it (server_id must be provided).
  /// [deleteProtection] Enable or disable delete protection. See "Delete Protection" in the Provider Docs for details.
  /// [format] Format volume after creation. `xfs` or `ext4`
  /// [labels] User-defined labels (key-value pairs).
  /// [linuxDevice] (string) Device path on the file system for the Volume.
  /// [location] The location name of the volume to create, not allowed if server_id argument is passed. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  /// [name] Name of the volume to create (must be unique per project).
  /// [serverId] Server to attach the Volume to, not allowed if location argument is passed.
  /// [size] Size of the volume (in GB).
  VolumeState({
    this.automount,
    this.deleteProtection,
    this.format,
    this.labels,
    this.linuxDevice,
    this.location,
    this.name,
    this.serverId,
    this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automount': ?automount,
      'deleteProtection': ?deleteProtection,
      'format': ?format,
      'labels': ?labels,
      'linuxDevice': ?linuxDevice,
      'location': ?location,
      'name': ?name,
      'serverId': ?serverId,
      'size': ?size,
    };
  }

  factory VolumeState.fromMap(Map<String, dynamic> map) {
    return VolumeState(
      automount: map['automount'] == null ? null : (map['automount'] as bool).input(),
      deleteProtection: map['deleteProtection'] == null ? null : (map['deleteProtection'] as bool).input(),
      format: map['format'] == null ? null : (map['format'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      linuxDevice: map['linuxDevice'] == null ? null : (map['linuxDevice'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      serverId: map['serverId'] == null ? null : (map['serverId'] as int).input(),
      size: map['size'] == null ? null : (map['size'] as int).input(),
    );
  }
}

