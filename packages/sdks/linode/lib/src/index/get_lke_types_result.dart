// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_lke_types_filter.dart';
import 'get_lke_types_type.dart';

/// Result data returned by getLkeTypes.
class GetLkeTypesResult {
  final List<GetLkeTypesFilter>? filters;
  /// The ID representing the Kubernetes type.
  final String id;
  final String? order;
  final String? orderBy;
  final List<GetLkeTypesType> types;

  /// Creates a new [GetLkeTypesResult].
  /// [filters] Optional.
  /// [id] The ID representing the Kubernetes type.
  /// [order] Optional.
  /// [orderBy] Optional.
  /// [types] Required.
  GetLkeTypesResult({
    this.filters,
    required this.id,
    this.order,
    this.orderBy,
    required this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetLkeTypesFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'order': ?order,
      'orderBy': ?orderBy,
      'types': pulumi.Input.encodeList<GetLkeTypesType, Map<String, dynamic>>(types, (value) => value.toMap()),
    };
  }

  factory GetLkeTypesResult.fromMap(Map<String, dynamic> map) {
    return GetLkeTypesResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetLkeTypesFilter>(map['filters']!, (value) => GetLkeTypesFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      order: map['order'] == null ? null : map['order']! as String,
      orderBy: map['orderBy'] == null ? null : map['orderBy']! as String,
      types: pulumi.Input.decodeList<GetLkeTypesType>(map['types'], (value) => GetLkeTypesType.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

