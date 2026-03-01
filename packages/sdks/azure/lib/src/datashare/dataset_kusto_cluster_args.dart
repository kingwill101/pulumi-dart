// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_dataset_kusto_cluster_dataset_kusto_cluster_args_doc}
/// The set of arguments for DatasetKustoCluster.
/// {@endtemplate}
/// {@macro pulumi_datashare_dataset_kusto_cluster_dataset_kusto_cluster_args_doc}
class DatasetKustoClusterArgs {
  /// The resource ID of the Kusto Cluster to be shared with the receiver. Changing this forces a new Data Share Kusto Cluster Dataset to be created.
  final pulumi.Input<String> kustoClusterId;
  /// The name which should be used for this Data Share Kusto Cluster Dataset. Changing this forces a new Data Share Kusto Cluster Dataset to be created.
  final pulumi.Input<String>? name;
  /// The resource ID of the Data Share where this Data Share Kusto Cluster Dataset should be created. Changing this forces a new Data Share Kusto Cluster Dataset to be created.
  final pulumi.Input<String> shareId;

  /// Creates a new [DatasetKustoClusterArgs].
  /// [kustoClusterId] The resource ID of the Kusto Cluster to be shared with the receiver. Changing this forces a new Data Share Kusto Cluster Dataset to be created.
  /// [name] The name which should be used for this Data Share Kusto Cluster Dataset. Changing this forces a new Data Share Kusto Cluster Dataset to be created.
  /// [shareId] The resource ID of the Data Share where this Data Share Kusto Cluster Dataset should be created. Changing this forces a new Data Share Kusto Cluster Dataset to be created.
  DatasetKustoClusterArgs({
    required pulumi.Output<String> kustoClusterId,
    pulumi.Output<String>? name,
    required pulumi.Output<String> shareId,
  }) :
      kustoClusterId = pulumi.Input.asInput<String>(kustoClusterId),
      name = pulumi.Input.asOptionalInput<String>(name),
      shareId = pulumi.Input.asInput<String>(shareId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kustoClusterId': kustoClusterId,
      'name': ?name,
      'shareId': shareId,
    };
  }

  factory DatasetKustoClusterArgs.fromMap(Map<String, dynamic> map) {
    return DatasetKustoClusterArgs(
      kustoClusterId: pulumi.Output.create<String>(map['kustoClusterId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      shareId: pulumi.Output.create<String>(map['shareId'] as String),
    );
  }
}

