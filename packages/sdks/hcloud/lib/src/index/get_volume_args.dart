// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_volume_get_volume_args_doc}
/// Arguments for getVolume.
/// {@endtemplate}
/// {@macro pulumi_index_get_volume_get_volume_args_doc}
class GetVolumeArgs {
  /// ID of the volume.
  final pulumi.Input<int>? id;
  /// (string) The location name. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  final pulumi.Input<String>? location;
  /// Name of the volume.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? selector;
  /// (Optional, int) Server ID the volume is attached to
  final pulumi.Input<int>? serverId;
  /// Label Selector. For more information about possible values, visit the [Hetzner Cloud Documentation](https://docs.hetzner.cloud/reference/cloud#label-selector).
  final pulumi.Input<String>? withSelector;
  /// List only volumes with the specified status, could contain `creating` or `available`.
  final pulumi.Input<List<String>>? withStatuses;

  /// Creates a new [GetVolumeArgs].
  /// [id] ID of the volume.
  /// [location] (string) The location name. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  /// [name] Name of the volume.
  /// [selector] Optional.
  /// [serverId] (Optional, int) Server ID the volume is attached to
  /// [withSelector] Label Selector. For more information about possible values, visit the [Hetzner Cloud Documentation](https://docs.hetzner.cloud/reference/cloud#label-selector).
  /// [withStatuses] List only volumes with the specified status, could contain `creating` or `available`.
  GetVolumeArgs({
    this.id,
    this.location,
    this.name,
    this.selector,
    this.serverId,
    this.withSelector,
    this.withStatuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'selector': ?selector,
      'serverId': ?serverId,
      'withSelector': ?withSelector,
      'withStatuses': ?withStatuses,
    };
  }

  factory GetVolumeArgs.fromMap(Map<String, dynamic> map) {
    return GetVolumeArgs(
      id: map['id'] == null ? null : (map['id']! as int).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      selector: map['selector'] == null ? null : (map['selector']! as String).input(),
      serverId: map['serverId'] == null ? null : (map['serverId']! as int).input(),
      withSelector: map['withSelector'] == null ? null : (map['withSelector']! as String).input(),
      withStatuses: map['withStatuses'] == null ? null : ((map['withStatuses']! as List).cast<String>()).input(),
    );
  }
}

