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
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? kustoClusterLocation,
    pulumi.Output<String>? kustoDatabaseId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? shareId,
  }) :
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      kustoClusterLocation = pulumi.Input.asOptionalInput<String>(kustoClusterLocation),
      kustoDatabaseId = pulumi.Input.asOptionalInput<String>(kustoDatabaseId),
      name = pulumi.Input.asOptionalInput<String>(name),
      shareId = pulumi.Input.asOptionalInput<String>(shareId);

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
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      kustoClusterLocation: map['kustoClusterLocation'] == null ? null : pulumi.Output.create<String>(map['kustoClusterLocation'] as String),
      kustoDatabaseId: map['kustoDatabaseId'] == null ? null : pulumi.Output.create<String>(map['kustoDatabaseId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      shareId: map['shareId'] == null ? null : pulumi.Output.create<String>(map['shareId'] as String),
    );
  }
}

