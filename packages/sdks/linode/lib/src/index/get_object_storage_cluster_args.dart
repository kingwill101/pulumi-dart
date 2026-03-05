// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_object_storage_cluster_get_object_storage_cluster_args_doc}
/// Arguments for getObjectStorageCluster.
/// {@endtemplate}
/// {@macro pulumi_index_get_object_storage_cluster_get_object_storage_cluster_args_doc}
class GetObjectStorageClusterArgs {
  /// The unique ID of this cluster.
  final pulumi.Input<String> id;

  /// Creates a new [GetObjectStorageClusterArgs].
  /// [id] The unique ID of this cluster.
  GetObjectStorageClusterArgs({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetObjectStorageClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetObjectStorageClusterArgs(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

