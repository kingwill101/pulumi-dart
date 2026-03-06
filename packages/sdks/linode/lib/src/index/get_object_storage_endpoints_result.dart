// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_object_storage_endpoints_endpoint.dart';
import 'get_object_storage_endpoints_filter.dart';

/// Result data returned by getObjectStorageEndpoints.
class GetObjectStorageEndpointsResult {
  final List<GetObjectStorageEndpointsEndpoint> endpoints;
  final List<GetObjectStorageEndpointsFilter>? filters;
  final String id;
  final String? order;
  final String? orderBy;

  /// Creates a new [GetObjectStorageEndpointsResult].
  /// [endpoints] Required.
  /// [filters] Optional.
  /// [id] Required.
  /// [order] Optional.
  /// [orderBy] Optional.
  const GetObjectStorageEndpointsResult({
    required this.endpoints,
    this.filters,
    required this.id,
    this.order,
    this.orderBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoints': pulumi.Input.encodeList<GetObjectStorageEndpointsEndpoint, Map<String, dynamic>>(endpoints, (value) => value.toMap()),
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetObjectStorageEndpointsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetObjectStorageEndpointsResult.fromMap(Map<String, dynamic> map) {
    return GetObjectStorageEndpointsResult(
      endpoints: pulumi.Input.decodeList<GetObjectStorageEndpointsEndpoint>(map['endpoints']!, (value) => GetObjectStorageEndpointsEndpoint.fromMap((value as Map).cast<String, dynamic>())),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetObjectStorageEndpointsFilter>(guardedValue, (value) => GetObjectStorageEndpointsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

