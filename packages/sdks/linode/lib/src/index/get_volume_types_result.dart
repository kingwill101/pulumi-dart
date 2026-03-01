// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_volume_types_filter.dart';
import 'get_volume_types_type.dart';

/// Result data returned by getVolumeTypes.
class GetVolumeTypesResult {
  final List<GetVolumeTypesFilter>? filters;
  /// The ID representing the Volume type.
  final String id;
  final String? order;
  final String? orderBy;
  final List<GetVolumeTypesType> types;

  /// Creates a new [GetVolumeTypesResult].
  /// [filters] Optional.
  /// [id] The ID representing the Volume type.
  /// [order] Optional.
  /// [orderBy] Optional.
  /// [types] Required.
  GetVolumeTypesResult({
    this.filters,
    required this.id,
    this.order,
    this.orderBy,
    required this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetVolumeTypesFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'order': ?order,
      'orderBy': ?orderBy,
      'types': pulumi.Input.encodeList<GetVolumeTypesType, Map<String, dynamic>>(types, (value) => value.toMap()),
    };
  }

  factory GetVolumeTypesResult.fromMap(Map<String, dynamic> map) {
    return GetVolumeTypesResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetVolumeTypesFilter>(map['filters'], (value) => GetVolumeTypesFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      order: map['order'] == null ? null : map['order'] as String,
      orderBy: map['orderBy'] == null ? null : map['orderBy'] as String,
      types: pulumi.Input.decodeList<GetVolumeTypesType>(map['types'], (value) => GetVolumeTypesType.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

