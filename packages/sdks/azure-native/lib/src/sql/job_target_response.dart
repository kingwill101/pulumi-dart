// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A job target, for example a specific database or a container of databases that is evaluated during job execution.
class JobTargetResponse {
  /// The target database name.
  final pulumi.Input<String>? databaseName;
  /// The target elastic pool name.
  final pulumi.Input<String>? elasticPoolName;
  /// Whether the target is included or excluded from the group.
  final pulumi.Input<String>? membershipType;
  /// The resource ID of the credential that is used during job execution to connect to the target and determine the list of databases inside the target.
  final pulumi.Input<String>? refreshCredential;
  /// The target server name.
  final pulumi.Input<String>? serverName;
  /// The target shard map.
  final pulumi.Input<String>? shardMapName;
  /// The target type.
  final pulumi.Input<String> type;

  /// Creates a new [JobTargetResponse].
  /// [databaseName] The target database name.
  /// [elasticPoolName] The target elastic pool name.
  /// [membershipType] Whether the target is included or excluded from the group.
  /// [refreshCredential] The resource ID of the credential that is used during job execution to connect to the target and determine the list of databases inside the target.
  /// [serverName] The target server name.
  /// [shardMapName] The target shard map.
  /// [type] The target type.
  JobTargetResponse({
    this.databaseName,
    this.elasticPoolName,
    this.membershipType,
    this.refreshCredential,
    this.serverName,
    this.shardMapName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': ?databaseName,
      'elasticPoolName': ?elasticPoolName,
      'membershipType': ?membershipType,
      'refreshCredential': ?refreshCredential,
      'serverName': ?serverName,
      'shardMapName': ?shardMapName,
      'type': type,
    };
  }

  factory JobTargetResponse.fromMap(Map<String, dynamic> map) {
    return JobTargetResponse(
      databaseName: map['databaseName'] == null ? null : (map['databaseName'] as String).input(),
      elasticPoolName: map['elasticPoolName'] == null ? null : (map['elasticPoolName'] as String).input(),
      membershipType: map['membershipType'] == null ? null : (map['membershipType'] as String).input(),
      refreshCredential: map['refreshCredential'] == null ? null : (map['refreshCredential'] as String).input(),
      serverName: map['serverName'] == null ? null : (map['serverName'] as String).input(),
      shardMapName: map['shardMapName'] == null ? null : (map['shardMapName'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

