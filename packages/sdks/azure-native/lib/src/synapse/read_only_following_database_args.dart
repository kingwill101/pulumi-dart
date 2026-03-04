// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_read_only_following_database_args_doc}
/// The set of arguments for ReadOnlyFollowingDatabase.
/// {@endtemplate}
/// {@macro pulumi_synapse_read_only_following_database_args_doc}
class ReadOnlyFollowingDatabaseArgs {
  /// The name of the database in the Kusto pool.
  final pulumi.Input<String>? databaseName;

  /// The time the data should be kept in cache for fast queries in TimeSpan.
  final pulumi.Input<String>? hotCachePeriod;

  /// Kind of the database
  /// Expected value is 'ReadOnlyFollowing'.
  final pulumi.Input<String> kind;

  /// The name of the Kusto pool.
  final pulumi.Input<String> kustoPoolName;

  /// Resource location.
  final pulumi.Input<String>? location;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ReadOnlyFollowingDatabaseArgs].
  /// [databaseName] The name of the database in the Kusto pool.
  /// [hotCachePeriod] The time the data should be kept in cache for fast queries in TimeSpan.
  /// [kind] Kind of the database
  /// [kustoPoolName] The name of the Kusto pool.
  /// [location] Resource location.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  ReadOnlyFollowingDatabaseArgs({
    this.databaseName,
    this.hotCachePeriod,
    required this.kind,
    required this.kustoPoolName,
    this.location,
    required this.resourceGroupName,
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
      'workspaceName': workspaceName,
    };
  }

  factory ReadOnlyFollowingDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return ReadOnlyFollowingDatabaseArgs(
      databaseName: (() {
        final guardedValue = map['databaseName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hotCachePeriod: (() {
        final guardedValue = map['hotCachePeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      kustoPoolName: pulumi.Input.fromValue(map['kustoPoolName'] as String),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
