// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DatasetKustoDatabase resources.
class DatasetKustoDatabaseState {
  /// The name of the Data Share Dataset.
  final pulumi.Input<String>? displayName;
  /// The location of the Kusto Cluster.
  final pulumi.Input<String>? kustoClusterLocation;
  /// The resource ID of the Kusto Cluster Database to be shared with the receiver. Changing this forces a new Data Share Kusto Database Dataset to be created.
  final pulumi.Input<String>? kustoDatabaseId;
  /// The name which should be used for this Data Share Kusto Database Dataset. Changing this forces a new Data Share Kusto Database Dataset to be created.
  final pulumi.Input<String>? name;
  /// The resource ID of the Data Share where this Data Share Kusto Database Dataset should be created. Changing this forces a new Data Share Kusto Database Dataset to be created.
  final pulumi.Input<String>? shareId;

  /// Creates a new [DatasetKustoDatabaseState].
  /// [displayName] The name of the Data Share Dataset.
  /// [kustoClusterLocation] The location of the Kusto Cluster.
  /// [kustoDatabaseId] The resource ID of the Kusto Cluster Database to be shared with the receiver. Changing this forces a new Data Share Kusto Database Dataset to be created.
  /// [name] The name which should be used for this Data Share Kusto Database Dataset. Changing this forces a new Data Share Kusto Database Dataset to be created.
  /// [shareId] The resource ID of the Data Share where this Data Share Kusto Database Dataset should be created. Changing this forces a new Data Share Kusto Database Dataset to be created.
  DatasetKustoDatabaseState({
    this.displayName,
    this.kustoClusterLocation,
    this.kustoDatabaseId,
    this.name,
    this.shareId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'kustoClusterLocation': ?kustoClusterLocation,
      'kustoDatabaseId': ?kustoDatabaseId,
      'name': ?name,
      'shareId': ?shareId,
    };
  }

  factory DatasetKustoDatabaseState.fromMap(Map<String, dynamic> map) {
    return DatasetKustoDatabaseState(
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      kustoClusterLocation: map['kustoClusterLocation'] == null ? null : (map['kustoClusterLocation']! as String).input(),
      kustoDatabaseId: map['kustoDatabaseId'] == null ? null : (map['kustoDatabaseId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      shareId: map['shareId'] == null ? null : (map['shareId']! as String).input(),
    );
  }
}

