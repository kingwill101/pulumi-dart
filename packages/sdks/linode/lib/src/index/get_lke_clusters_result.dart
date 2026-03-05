// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_lke_clusters_filter.dart';
import 'get_lke_clusters_lke_cluster.dart';

/// Result data returned by getLkeClusters.
class GetLkeClustersResult {
  final List<GetLkeClustersFilter>? filters;
  /// The LKE Cluster's ID.
  final String id;
  final List<GetLkeClustersLkeCluster> lkeClusters;
  final String? order;
  final String? orderBy;

  /// Creates a new [GetLkeClustersResult].
  /// [filters] Optional.
  /// [id] The LKE Cluster's ID.
  /// [lkeClusters] Required.
  /// [order] Optional.
  /// [orderBy] Optional.
  GetLkeClustersResult({
    this.filters,
    required this.id,
    required this.lkeClusters,
    this.order,
    this.orderBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLkeClustersFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'lkeClusters': pulumi.Input.encodeList<GetLkeClustersLkeCluster, Map<String, dynamic>>(lkeClusters, (value) => value.toMap()),
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetLkeClustersResult.fromMap(Map<String, dynamic> map) {
    return GetLkeClustersResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLkeClustersFilter>(guardedValue, (value) => GetLkeClustersFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      lkeClusters: pulumi.Input.decodeList<GetLkeClustersLkeCluster>(map['lkeClusters']!, (value) => GetLkeClustersLkeCluster.fromMap((value as Map).cast<String, dynamic>())),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

