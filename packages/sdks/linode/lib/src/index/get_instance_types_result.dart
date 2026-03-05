// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_types_filter.dart';
import 'get_instance_types_type.dart';

/// Result data returned by getInstanceTypes.
class GetInstanceTypesResult {
  final List<GetInstanceTypesFilter>? filters;
  /// The ID representing the Linode Type.
  final String id;
  final String? order;
  final String? orderBy;
  final List<GetInstanceTypesType> types;

  /// Creates a new [GetInstanceTypesResult].
  /// [filters] Optional.
  /// [id] The ID representing the Linode Type.
  /// [order] Optional.
  /// [orderBy] Optional.
  /// [types] Required.
  GetInstanceTypesResult({
    this.filters,
    required this.id,
    this.order,
    this.orderBy,
    required this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceTypesFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'order': ?order,
      'orderBy': ?orderBy,
      'types': pulumi.Input.encodeList<GetInstanceTypesType, Map<String, dynamic>>(types, (value) => value.toMap()),
    };
  }

  factory GetInstanceTypesResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypesResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceTypesFilter>(guardedValue, (value) => GetInstanceTypesFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      types: pulumi.Input.decodeList<GetInstanceTypesType>(map['types']!, (value) => GetInstanceTypesType.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

