// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_target_group_membership_type.dart';

/// A job target, for example a specific database or a container of databases that is evaluated during job execution.
class JobTarget {
  /// The target database name.
  final pulumi.Input<String?>? databaseName;
  /// The target elastic pool name.
  final pulumi.Input<String?>? elasticPoolName;
  /// Whether the target is included or excluded from the group.
  final pulumi.Input<JobTargetGroupMembershipType?>? membershipType;
  /// The resource ID of the credential that is used during job execution to connect to the target and determine the list of databases inside the target.
  final pulumi.Input<String?>? refreshCredential;
  /// The target server name.
  final pulumi.Input<String?>? serverName;
  /// The target shard map.
  final pulumi.Input<String?>? shardMapName;
  /// The target type.
  final pulumi.Input<dynamic> type;

  /// Creates a new [JobTarget].
  /// [databaseName] The target database name.
  /// [elasticPoolName] The target elastic pool name.
  /// [membershipType] Whether the target is included or excluded from the group.
  /// [refreshCredential] The resource ID of the credential that is used during job execution to connect to the target and determine the list of databases inside the target.
  /// [serverName] The target server name.
  /// [shardMapName] The target shard map.
  /// [type] The target type.
  JobTarget({
    this.databaseName,
    this.elasticPoolName,
    pulumi.Input<JobTargetGroupMembershipType?>? membershipType,
    this.refreshCredential,
    this.serverName,
    this.shardMapName,
    required this.type,
  }) : membershipType = membershipType ?? pulumi.Input.fromValue(JobTargetGroupMembershipType.fromValue('Include'));

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': ?databaseName,
      'elasticPoolName': ?elasticPoolName,
      'membershipType': ?pulumi.Input.mapOptionalInputValue<JobTargetGroupMembershipType, String>(membershipType, (value) => value.wireValue),
      'refreshCredential': ?refreshCredential,
      'serverName': ?serverName,
      'shardMapName': ?shardMapName,
      'type': type,
    };
  }

  factory JobTarget.fromMap(Map<String, dynamic> map) {
    return JobTarget(
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      elasticPoolName: (() { final guardedValue = map['elasticPoolName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      membershipType: (() { final guardedValue = map['membershipType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobTargetGroupMembershipType.fromValue(guardedValue as String)); })(),
      refreshCredential: (() { final guardedValue = map['refreshCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverName: (() { final guardedValue = map['serverName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shardMapName: (() { final guardedValue = map['shardMapName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type']),
    );
  }
}
