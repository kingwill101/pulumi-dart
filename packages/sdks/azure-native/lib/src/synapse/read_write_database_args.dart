// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_read_write_database_args_doc}
/// The set of arguments for ReadWriteDatabase.
/// {@endtemplate}
/// {@macro pulumi_synapse_read_write_database_args_doc}
class ReadWriteDatabaseArgs {
  /// The name of the database in the Kusto pool.
  final pulumi.Input<String>? databaseName;
  /// The time the data should be kept in cache for fast queries in TimeSpan.
  final pulumi.Input<String>? hotCachePeriod;
  /// Kind of the database
  /// Expected value is 'ReadWrite'.
  final pulumi.Input<String> kind;
  /// The name of the Kusto pool.
  final pulumi.Input<String> kustoPoolName;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The time the data should be kept before it stops being accessible to queries in TimeSpan.
  final pulumi.Input<String>? softDeletePeriod;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ReadWriteDatabaseArgs].
  /// [databaseName] The name of the database in the Kusto pool.
  /// [hotCachePeriod] The time the data should be kept in cache for fast queries in TimeSpan.
  /// [kind] Kind of the database
  /// [kustoPoolName] The name of the Kusto pool.
  /// [location] Resource location.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [softDeletePeriod] The time the data should be kept before it stops being accessible to queries in TimeSpan.
  /// [workspaceName] The name of the workspace.
  ReadWriteDatabaseArgs({
    this.databaseName,
    this.hotCachePeriod,
    required this.kind,
    required this.kustoPoolName,
    this.location,
    required this.resourceGroupName,
    this.softDeletePeriod,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': ?databaseName,
      'hotCachePeriod': ?hotCachePeriod,
      'kind': kind,
      'kustoPoolName': kustoPoolName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'softDeletePeriod': ?softDeletePeriod,
      'workspaceName': workspaceName,
    };
  }

  factory ReadWriteDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return ReadWriteDatabaseArgs(
      databaseName: map['databaseName'] == null ? null : (map['databaseName'] as String).input(),
      hotCachePeriod: map['hotCachePeriod'] == null ? null : (map['hotCachePeriod'] as String).input(),
      kind: (map['kind'] as String).input(),
      kustoPoolName: (map['kustoPoolName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      softDeletePeriod: map['softDeletePeriod'] == null ? null : (map['softDeletePeriod'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

