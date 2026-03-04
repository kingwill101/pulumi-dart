// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hdinsight_get_cluster_get_cluster_args_doc}
/// Arguments for getCluster.
/// {@endtemplate}
/// {@macro pulumi_hdinsight_get_cluster_get_cluster_args_doc}
class GetClusterArgs {
  /// Specifies the name of this HDInsight Cluster.
  final pulumi.Input<String> name;

  /// Specifies the name of the Resource Group in which this HDInsight Cluster exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetClusterArgs].
  /// [name] Specifies the name of this HDInsight Cluster.
  /// [resourceGroupName] Specifies the name of the Resource Group in which this HDInsight Cluster exists.
  GetClusterArgs({required this.name, required this.resourceGroupName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
