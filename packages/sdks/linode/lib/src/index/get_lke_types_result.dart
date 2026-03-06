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
  const GetLkeTypesResult({
    this.filters,
    required this.id,
    this.order,
    this.orderBy,
    required this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLkeTypesFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'order': ?order,
      'orderBy': ?orderBy,
      'types': pulumi.Input.encodeList<GetLkeTypesType, Map<String, dynamic>>(types, (value) => value.toMap()),
    };
  }

  factory GetLkeTypesResult.fromMap(Map<String, dynamic> map) {
    return GetLkeTypesResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLkeTypesFilter>(guardedValue, (value) => GetLkeTypesFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      types: pulumi.Input.decodeList<GetLkeTypesType>(map['types']!, (value) => GetLkeTypesType.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

