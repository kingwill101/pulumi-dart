// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kusto_database_database_args_doc}
/// The set of arguments for Database.
/// {@endtemplate}
/// {@macro pulumi_kusto_database_database_args_doc}
class DatabaseArgs {
  /// Specifies the name of the Kusto Cluster this database will be added to. Changing this forces a new resource to be created.
  final pulumi.Input<String> clusterName;
  /// The time the data that should be kept in cache for fast queries as ISO 8601 timespan. Default is unlimited. For more information see: [ISO 8601 Timespan](https://en.wikipedia.org/wiki/ISO_8601#Durations)
  final pulumi.Input<String>? hotCachePeriod;
  /// The location where the Kusto Database should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the Kusto Database to create. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the Resource Group where the Kusto Database should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The time the data should be kept before it stops being accessible to queries as ISO 8601 timespan. Default is unlimited. For more information see: [ISO 8601 Timespan](https://en.wikipedia.org/wiki/ISO_8601#Durations)
  final pulumi.Input<String>? softDeletePeriod;

  /// Creates a new [DatabaseArgs].
  /// [clusterName] Specifies the name of the Kusto Cluster this database will be added to. Changing this forces a new resource to be created.
  /// [hotCachePeriod] The time the data that should be kept in cache for fast queries as ISO 8601 timespan. Default is unlimited. For more information see: [ISO 8601 Timespan](https://en.wikipedia.org/wiki/ISO_8601#Durations)
  /// [location] The location where the Kusto Database should be created. Changing this forces a new resource to be created.
  /// [name] The name of the Kusto Database to create. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the Resource Group where the Kusto Database should exist. Changing this forces a new resource to be created.
  /// [softDeletePeriod] The time the data should be kept before it stops being accessible to queries as ISO 8601 timespan. Default is unlimited. For more information see: [ISO 8601 Timespan](https://en.wikipedia.org/wiki/ISO_8601#Durations)
  DatabaseArgs({
    required this.clusterName,
    this.hotCachePeriod,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.softDeletePeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'hotCachePeriod': ?hotCachePeriod,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'softDeletePeriod': ?softDeletePeriod,
    };
  }

  factory DatabaseArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseArgs(
      clusterName: (map['clusterName'] as String).input(),
      hotCachePeriod: map['hotCachePeriod'] == null ? null : (map['hotCachePeriod'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      softDeletePeriod: map['softDeletePeriod'] == null ? null : (map['softDeletePeriod'] as String).input(),
    );
  }
}

