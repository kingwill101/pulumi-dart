// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_filter.dart';
import 'get_instances_instance.dart';

/// Result data returned by getInstances.
class GetInstancesResult {
  final List<GetInstancesFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetInstancesInstance> instances;
  final String? order;
  final String? orderBy;

  /// Creates a new [GetInstancesResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instances] Required.
  /// [order] Optional.
  /// [orderBy] Optional.
  GetInstancesResult({
    this.filters,
    required this.id,
    required this.instances,
    this.order,
    this.orderBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetInstancesFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'instances': pulumi.Input.encodeList<GetInstancesInstance, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetInstancesResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetInstancesFilter>(map['filters']!, (value) => GetInstancesFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      instances: pulumi.Input.decodeList<GetInstancesInstance>(map['instances'], (value) => GetInstancesInstance.fromMap((value as Map).cast<String, dynamic>())),
      order: map['order'] == null ? null : map['order']! as String,
      orderBy: map['orderBy'] == null ? null : map['orderBy']! as String,
    );
  }
}

