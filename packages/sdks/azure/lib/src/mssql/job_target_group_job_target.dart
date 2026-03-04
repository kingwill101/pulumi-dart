// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobTargetGroupJobTarget {
  /// The name of the MS SQL Database.
  ///
  /// &gt; **Note:** This cannot be set in combination with `elastic_pool_name`.
  final pulumi.Input<String>? databaseName;

  /// The name of the MS SQL Elastic Pool.
  ///
  /// &gt; **Note:** This cannot be set in combination with `database_name`.
  final pulumi.Input<String>? elasticPoolName;

  /// The ID of the job credential to use during execution of jobs.
  ///
  /// &gt; **Note:** This is required when `membership_type` is `Include`, unless `database_name` is set or the target resource is configured to use a managed identity for authentication.
  final pulumi.Input<String>? jobCredentialId;

  /// The membership type for this job target. Possible values are `Include` and `Exclude`. Defaults to `Include`.
  final pulumi.Input<String>? membershipType;

  /// The name of the MS SQL Server.
  final pulumi.Input<String> serverName;

  /// The job target type. This value is computed based on `server_name`, `database_name`, and `elastic_pool_name`.
  final pulumi.Input<String>? type;

  /// Creates a new [JobTargetGroupJobTarget].
  /// [databaseName] The name of the MS SQL Database.
  /// [elasticPoolName] The name of the MS SQL Elastic Pool.
  /// [jobCredentialId] The ID of the job credential to use during execution of jobs.
  /// [membershipType] The membership type for this job target. Possible values are `Include` and `Exclude`. Defaults to `Include`.
  /// [serverName] The name of the MS SQL Server.
  /// [type] The job target type. This value is computed based on `server_name`, `database_name`, and `elastic_pool_name`.
  JobTargetGroupJobTarget({
    this.databaseName,
    this.elasticPoolName,
    this.jobCredentialId,
    this.membershipType,
    required this.serverName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': ?databaseName,
      'elasticPoolName': ?elasticPoolName,
      'jobCredentialId': ?jobCredentialId,
      'membershipType': ?membershipType,
      'serverName': serverName,
      'type': ?type,
    };
  }

  factory JobTargetGroupJobTarget.fromMap(Map<String, dynamic> map) {
    return JobTargetGroupJobTarget(
      databaseName: (() {
        final guardedValue = map['databaseName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      elasticPoolName: (() {
        final guardedValue = map['elasticPoolName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      jobCredentialId: (() {
        final guardedValue = map['jobCredentialId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      membershipType: (() {
        final guardedValue = map['membershipType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
