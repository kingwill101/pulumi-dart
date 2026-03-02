// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_nb_types_filter.dart';
import 'get_nb_types_type.dart';

/// Result data returned by getNbTypes.
class GetNbTypesResult {
  final List<GetNbTypesFilter>? filters;
  final String id;
  final String? order;
  final String? orderBy;
  final List<GetNbTypesType> types;

  /// Creates a new [GetNbTypesResult].
  /// [filters] Optional.
  /// [id] Required.
  /// [order] Optional.
  /// [orderBy] Optional.
  /// [types] Required.
  GetNbTypesResult({
    this.filters,
    required this.id,
    this.order,
    this.orderBy,
    required this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetNbTypesFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'order': ?order,
      'orderBy': ?orderBy,
      'types': pulumi.Input.encodeList<GetNbTypesType, Map<String, dynamic>>(types, (value) => value.toMap()),
    };
  }

  factory GetNbTypesResult.fromMap(Map<String, dynamic> map) {
    return GetNbTypesResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetNbTypesFilter>(map['filters']!, (value) => GetNbTypesFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      order: map['order'] == null ? null : map['order']! as String,
      orderBy: map['orderBy'] == null ? null : map['orderBy']! as String,
      types: pulumi.Input.decodeList<GetNbTypesType>(map['types'], (value) => GetNbTypesType.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

