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
    pulumi.Output<String>? databaseName,
    pulumi.Output<String>? hotCachePeriod,
    required pulumi.Output<String> kind,
    required pulumi.Output<String> kustoPoolName,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      databaseName = pulumi.Input.asOptionalInput<String>(databaseName),
      hotCachePeriod = pulumi.Input.asOptionalInput<String>(hotCachePeriod),
      kind = pulumi.Input.asInput<String>(kind),
      kustoPoolName = pulumi.Input.asInput<String>(kustoPoolName),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      databaseName: map['databaseName'] == null ? null : pulumi.Output.create<String>(map['databaseName'] as String),
      hotCachePeriod: map['hotCachePeriod'] == null ? null : pulumi.Output.create<String>(map['hotCachePeriod'] as String),
      kind: pulumi.Output.create<String>(map['kind'] as String),
      kustoPoolName: pulumi.Output.create<String>(map['kustoPoolName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

