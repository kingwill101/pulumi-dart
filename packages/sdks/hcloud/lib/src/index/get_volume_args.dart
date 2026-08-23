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
  const GetVolumeArgs({
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
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverId: (() { final guardedValue = map['serverId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      withStatuses: (() { final guardedValue = map['withStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
