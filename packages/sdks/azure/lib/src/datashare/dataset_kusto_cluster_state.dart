// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DatasetKustoCluster resources.
class DatasetKustoClusterState {
  /// The name of the Data Share Dataset.
  final pulumi.Input<String>? displayName;
  /// The resource ID of the Kusto Cluster to be shared with the receiver. Changing this forces a new Data Share Kusto Cluster Dataset to be created.
  final pulumi.Input<String>? kustoClusterId;
  /// The location of the Kusto Cluster.
  final pulumi.Input<String>? kustoClusterLocation;
  /// The name which should be used for this Data Share Kusto Cluster Dataset. Changing this forces a new Data Share Kusto Cluster Dataset to be created.
  final pulumi.Input<String>? name;
  /// The resource ID of the Data Share where this Data Share Kusto Cluster Dataset should be created. Changing this forces a new Data Share Kusto Cluster Dataset to be created.
  final pulumi.Input<String>? shareId;

  /// Creates a new [DatasetKustoClusterState].
  /// [displayName] The name of the Data Share Dataset.
  /// [kustoClusterId] The resource ID of the Kusto Cluster to be shared with the receiver. Changing this forces a new Data Share Kusto Cluster Dataset to be created.
  /// [kustoClusterLocation] The location of the Kusto Cluster.
  /// [name] The name which should be used for this Data Share Kusto Cluster Dataset. Changing this forces a new Data Share Kusto Cluster Dataset to be created.
  /// [shareId] The resource ID of the Data Share where this Data Share Kusto Cluster Dataset should be created. Changing this forces a new Data Share Kusto Cluster Dataset to be created.
  DatasetKustoClusterState({
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? kustoClusterId,
    pulumi.Output<String>? kustoClusterLocation,
    pulumi.Output<String>? name,
    pulumi.Output<String>? shareId,
  }) :
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      kustoClusterId = pulumi.Input.asOptionalInput<String>(kustoClusterId),
      kustoClusterLocation = pulumi.Input.asOptionalInput<String>(kustoClusterLocation),
      name = pulumi.Input.asOptionalInput<String>(name),
      shareId = pulumi.Input.asOptionalInput<String>(shareId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'kustoClusterId': ?kustoClusterId,
      'kustoClusterLocation': ?kustoClusterLocation,
      'name': ?name,
      'shareId': ?shareId,
    };
  }

  factory DatasetKustoClusterState.fromMap(Map<String, dynamic> map) {
    return DatasetKustoClusterState(
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      kustoClusterId: map['kustoClusterId'] == null ? null : pulumi.Output.create<String>(map['kustoClusterId'] as String),
      kustoClusterLocation: map['kustoClusterLocation'] == null ? null : pulumi.Output.create<String>(map['kustoClusterLocation'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      shareId: map['shareId'] == null ? null : pulumi.Output.create<String>(map['shareId'] as String),
    );
  }
}

