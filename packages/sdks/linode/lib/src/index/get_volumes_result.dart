// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_volumes_filter.dart';
import 'get_volumes_volume.dart';

/// Result data returned by getVolumes.
class GetVolumesResult {
  final List<GetVolumesFilter>? filters;
  /// The unique ID of this Volume.
  final String id;
  final String? order;
  final String? orderBy;
  final List<GetVolumesVolume> volumes;

  /// Creates a new [GetVolumesResult].
  /// [filters] Optional.
  /// [id] The unique ID of this Volume.
  /// [order] Optional.
  /// [orderBy] Optional.
  /// [volumes] Required.
  GetVolumesResult({
    this.filters,
    required this.id,
    this.order,
    this.orderBy,
    required this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetVolumesFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'order': ?order,
      'orderBy': ?orderBy,
      'volumes': pulumi.Input.encodeList<GetVolumesVolume, Map<String, dynamic>>(volumes, (value) => value.toMap()),
    };
  }

  factory GetVolumesResult.fromMap(Map<String, dynamic> map) {
    return GetVolumesResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetVolumesFilter>(map['filters']!, (value) => GetVolumesFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      order: map['order'] == null ? null : map['order']! as String,
      orderBy: map['orderBy'] == null ? null : map['orderBy']! as String,
      volumes: pulumi.Input.decodeList<GetVolumesVolume>(map['volumes'], (value) => GetVolumesVolume.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

