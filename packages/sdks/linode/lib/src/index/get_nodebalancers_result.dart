// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_nodebalancers_filter.dart';
import 'get_nodebalancers_nodebalancer.dart';

/// Result data returned by getNodebalancers.
class GetNodebalancersResult {
  final List<GetNodebalancersFilter>? filters;
  /// The Linode NodeBalancer's unique ID
  final String id;
  final List<GetNodebalancersNodebalancer> nodebalancers;
  final String? order;
  final String? orderBy;

  /// Creates a new [GetNodebalancersResult].
  /// [filters] Optional.
  /// [id] The Linode NodeBalancer's unique ID
  /// [nodebalancers] Required.
  /// [order] Optional.
  /// [orderBy] Optional.
  const GetNodebalancersResult({
    this.filters,
    required this.id,
    required this.nodebalancers,
    this.order,
    this.orderBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNodebalancersFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'nodebalancers': pulumi.Input.encodeList<GetNodebalancersNodebalancer, Map<String, dynamic>>(nodebalancers, (value) => value.toMap()),
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetNodebalancersResult.fromMap(Map<String, dynamic> map) {
    return GetNodebalancersResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNodebalancersFilter>(guardedValue, (value) => GetNodebalancersFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      nodebalancers: pulumi.Input.decodeList<GetNodebalancersNodebalancer>(map['nodebalancers']!, (value) => GetNodebalancersNodebalancer.fromMap((value as Map).cast<String, dynamic>())),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

