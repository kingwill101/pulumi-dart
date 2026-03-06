// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata for a Cloud Bigtable connector used by the job.
class BigTableIODetails {
  /// InstanceId accessed in the connection.
  final pulumi.Input<String>? instanceId;
  /// ProjectId accessed in the connection.
  final pulumi.Input<String>? project;
  /// TableId accessed in the connection.
  final pulumi.Input<String>? tableId;

  /// Creates a new [BigTableIODetails].
  /// [instanceId] InstanceId accessed in the connection.
  /// [project] ProjectId accessed in the connection.
  /// [tableId] TableId accessed in the connection.
  const BigTableIODetails({
    this.instanceId,
    this.project,
    this.tableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': ?instanceId,
      'project': ?project,
      'tableId': ?tableId,
    };
  }

  factory BigTableIODetails.fromMap(Map<String, dynamic> map) {
    return BigTableIODetails(
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableId: (() { final guardedValue = map['tableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

