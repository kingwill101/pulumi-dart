// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_object_storage_endpoints_filter.dart';

/// {@template pulumi_index_get_object_storage_endpoints_get_object_storage_endpoints_args_doc}
/// Arguments for getObjectStorageEndpoints.
/// {@endtemplate}
/// {@macro pulumi_index_get_object_storage_endpoints_get_object_storage_endpoints_args_doc}
class GetObjectStorageEndpointsArgs {
  final pulumi.Input<List<GetObjectStorageEndpointsFilter>>? filters;
  /// The order in which results should be returned. (`asc`, `desc`; default `asc`)
  final pulumi.Input<String>? order;
  /// The attribute to order the results by. See the Filterable Fields section for a list of valid fields.
  final pulumi.Input<String>? orderBy;

  /// Creates a new [GetObjectStorageEndpointsArgs].
  /// [filters] Optional.
  /// [order] The order in which results should be returned. (`asc`, `desc`; default `asc`)
  /// [orderBy] The attribute to order the results by. See the Filterable Fields section for a list of valid fields.
  GetObjectStorageEndpointsArgs({
    this.filters,
    this.order,
    this.orderBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetObjectStorageEndpointsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetObjectStorageEndpointsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetObjectStorageEndpointsArgs.fromMap(Map<String, dynamic> map) {
    return GetObjectStorageEndpointsArgs(
      filters: map['filters'] == null ? null : (pulumi.Input.decodeList<GetObjectStorageEndpointsFilter>(map['filters'], (value) => GetObjectStorageEndpointsFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      order: map['order'] == null ? null : (map['order'] as String).input(),
      orderBy: map['orderBy'] == null ? null : (map['orderBy'] as String).input(),
    );
  }
}

