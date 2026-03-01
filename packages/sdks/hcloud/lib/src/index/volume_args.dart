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
    pulumi.Output<bool>? automount,
    pulumi.Output<bool>? deleteProtection,
    pulumi.Output<String>? format,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<int>? serverId,
    required pulumi.Output<int> size,
  }) :
      automount = pulumi.Input.asOptionalInput<bool>(automount),
      deleteProtection = pulumi.Input.asOptionalInput<bool>(deleteProtection),
      format = pulumi.Input.asOptionalInput<String>(format),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      serverId = pulumi.Input.asOptionalInput<int>(serverId),
      size = pulumi.Input.asInput<int>(size);

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
      automount: map['automount'] == null ? null : pulumi.Output.create<bool>(map['automount'] as bool),
      deleteProtection: map['deleteProtection'] == null ? null : pulumi.Output.create<bool>(map['deleteProtection'] as bool),
      format: map['format'] == null ? null : pulumi.Output.create<String>(map['format'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      serverId: map['serverId'] == null ? null : pulumi.Output.create<int>(map['serverId'] as int),
      size: pulumi.Output.create<int>(map['size'] as int),
    );
  }
}

