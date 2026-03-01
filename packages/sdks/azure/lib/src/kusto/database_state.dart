// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Database resources.
class DatabaseState {
  /// Specifies the name of the Kusto Cluster this database will be added to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? clusterName;
  /// The time the data that should be kept in cache for fast queries as ISO 8601 timespan. Default is unlimited. For more information see: [ISO 8601 Timespan](https://en.wikipedia.org/wiki/ISO_8601#Durations)
  final pulumi.Input<String>? hotCachePeriod;
  /// The location where the Kusto Database should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the Kusto Database to create. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the Resource Group where the Kusto Database should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The size of the database in bytes.
  final pulumi.Input<double>? size;
  /// The time the data should be kept before it stops being accessible to queries as ISO 8601 timespan. Default is unlimited. For more information see: [ISO 8601 Timespan](https://en.wikipedia.org/wiki/ISO_8601#Durations)
  final pulumi.Input<String>? softDeletePeriod;

  /// Creates a new [DatabaseState].
  /// [clusterName] Specifies the name of the Kusto Cluster this database will be added to. Changing this forces a new resource to be created.
  /// [hotCachePeriod] The time the data that should be kept in cache for fast queries as ISO 8601 timespan. Default is unlimited. For more information see: [ISO 8601 Timespan](https://en.wikipedia.org/wiki/ISO_8601#Durations)
  /// [location] The location where the Kusto Database should be created. Changing this forces a new resource to be created.
  /// [name] The name of the Kusto Database to create. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the Resource Group where the Kusto Database should exist. Changing this forces a new resource to be created.
  /// [size] The size of the database in bytes.
  /// [softDeletePeriod] The time the data should be kept before it stops being accessible to queries as ISO 8601 timespan. Default is unlimited. For more information see: [ISO 8601 Timespan](https://en.wikipedia.org/wiki/ISO_8601#Durations)
  DatabaseState({
    pulumi.Output<String>? clusterName,
    pulumi.Output<String>? hotCachePeriod,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<double>? size,
    pulumi.Output<String>? softDeletePeriod,
  }) :
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      hotCachePeriod = pulumi.Input.asOptionalInput<String>(hotCachePeriod),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      size = pulumi.Input.asOptionalInput<double>(size),
      softDeletePeriod = pulumi.Input.asOptionalInput<String>(softDeletePeriod);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': ?clusterName,
      'hotCachePeriod': ?hotCachePeriod,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'size': ?size,
      'softDeletePeriod': ?softDeletePeriod,
    };
  }

  factory DatabaseState.fromMap(Map<String, dynamic> map) {
    return DatabaseState(
      clusterName: map['clusterName'] == null ? null : pulumi.Output.create<String>(map['clusterName'] as String),
      hotCachePeriod: map['hotCachePeriod'] == null ? null : pulumi.Output.create<String>(map['hotCachePeriod'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      size: map['size'] == null ? null : pulumi.Output.create<double>(map['size'] as double),
      softDeletePeriod: map['softDeletePeriod'] == null ? null : pulumi.Output.create<String>(map['softDeletePeriod'] as String),
    );
  }
}

