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
    this.displayName,
    this.kustoClusterId,
    this.kustoClusterLocation,
    this.name,
    this.shareId,
  });

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
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      kustoClusterId: map['kustoClusterId'] == null ? null : (map['kustoClusterId']! as String).input(),
      kustoClusterLocation: map['kustoClusterLocation'] == null ? null : (map['kustoClusterLocation']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      shareId: map['shareId'] == null ? null : (map['shareId']! as String).input(),
    );
  }
}

