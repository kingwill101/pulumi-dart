// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_lke_cluster_get_lke_cluster_args_doc}
/// Arguments for getLkeCluster.
/// {@endtemplate}
/// {@macro pulumi_index_get_lke_cluster_get_lke_cluster_args_doc}
class GetLkeClusterArgs {
  /// The LKE Cluster's ID.
  final pulumi.Input<int> id;

  /// Creates a new [GetLkeClusterArgs].
  /// [id] The LKE Cluster's ID.
  GetLkeClusterArgs({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetLkeClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetLkeClusterArgs(
      id: (map['id'] as int).input(),
    );
  }
}

