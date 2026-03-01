// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_get_dataset_kusto_cluster_get_dataset_kusto_cluster_args_doc}
/// Arguments for getDatasetKustoCluster.
/// {@endtemplate}
/// {@macro pulumi_datashare_get_dataset_kusto_cluster_get_dataset_kusto_cluster_args_doc}
class GetDatasetKustoClusterArgs {
  /// The name of this Data Share Kusto Cluster Dataset.
  final pulumi.Input<String> name;
  /// The resource ID of the Data Share where this Data Share Kusto Cluster Dataset should be created.
  final pulumi.Input<String> shareId;

  /// Creates a new [GetDatasetKustoClusterArgs].
  /// [name] The name of this Data Share Kusto Cluster Dataset.
  /// [shareId] The resource ID of the Data Share where this Data Share Kusto Cluster Dataset should be created.
  GetDatasetKustoClusterArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> shareId,
  }) :
      name = pulumi.Input.asInput<String>(name),
      shareId = pulumi.Input.asInput<String>(shareId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'shareId': shareId,
    };
  }

  factory GetDatasetKustoClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetDatasetKustoClusterArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      shareId: pulumi.Output.create<String>(map['shareId'] as String),
    );
  }
}

