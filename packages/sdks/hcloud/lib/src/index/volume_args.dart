// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_volume_volume_args_doc}
/// The set of arguments for Volume.
/// {@endtemplate}
/// {@macro pulumi_index_volume_volume_args_doc}
class VolumeArgs {
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
  /// The location name of the volume to create, not allowed if server_id argument is passed. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  final pulumi.Input<String>? location;
  /// Name of the volume to create (must be unique per project).
  final pulumi.Input<String>? name;
  /// Server to attach the Volume to, not allowed if location argument is passed.
  final pulumi.Input<int>? serverId;
  /// Size of the volume (in GB).
  final pulumi.Input<int> size;

  /// Creates a new [VolumeArgs].
  /// [automount] Automount the volume upon attaching it (server_id must be provided).
  /// [deleteProtection] Enable or disable delete protection. See "Delete Protection" in the Provider Docs for details.
  /// [format] Format volume after creation. `xfs` or `ext4`
  /// [labels] User-defined labels (key-value pairs).
  /// [location] The location name of the volume to create, not allowed if server_id argument is passed. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  /// [name] Name of the volume to create (must be unique per project).
  /// [serverId] Server to attach the Volume to, not allowed if location argument is passed.
  /// [size] Size of the volume (in GB).
  VolumeArgs({
    this.automount,
    this.deleteProtection,
    this.format,
    this.labels,
    this.location,
    this.name,
    this.serverId,
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automount': ?automount,
      'deleteProtection': ?deleteProtection,
      'format': ?format,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'serverId': ?serverId,
      'size': size,
    };
  }

  factory VolumeArgs.fromMap(Map<String, dynamic> map) {
    return VolumeArgs(
      automount: map['automount'] == null ? null : (map['automount'] as bool).input(),
      deleteProtection: map['deleteProtection'] == null ? null : (map['deleteProtection'] as bool).input(),
      format: map['format'] == null ? null : (map['format'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      serverId: map['serverId'] == null ? null : (map['serverId'] as int).input(),
      size: (map['size'] as int).input(),
    );
  }
}

