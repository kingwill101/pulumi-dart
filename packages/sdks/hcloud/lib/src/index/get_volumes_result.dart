// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_volumes_volume.dart';

/// Result data returned by getVolumes.
class GetVolumesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// (list) List of all matching volumes. See `data.hcloud_volume` for schema.
  final List<GetVolumesVolume> volumes;
  final String? withSelector;
  final List<String>? withStatuses;

  /// Creates a new [GetVolumesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [volumes] (list) List of all matching volumes. See `data.hcloud_volume` for schema.
  /// [withSelector] Optional.
  /// [withStatuses] Optional.
  const GetVolumesResult({
    required this.id,
    required this.volumes,
    this.withSelector,
    this.withStatuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'volumes': pulumi.Input.encodeList<GetVolumesVolume, Map<String, dynamic>>(volumes, (value) => value.toMap()),
      'withSelector': ?withSelector,
      'withStatuses': ?withStatuses,
    };
  }

  factory GetVolumesResult.fromMap(Map<String, dynamic> map) {
    return GetVolumesResult(
      id: map['id'] as String,
      volumes: pulumi.Input.decodeList<GetVolumesVolume>(map['volumes']!, (value) => GetVolumesVolume.fromMap((value as Map).cast<String, dynamic>())),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
      withStatuses: (() { final guardedValue = map['withStatuses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
