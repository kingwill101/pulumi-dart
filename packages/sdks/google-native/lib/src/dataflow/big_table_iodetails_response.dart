// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata for a Cloud Bigtable connector used by the job.
class BigTableIODetailsResponse {
  /// InstanceId accessed in the connection.
  final pulumi.Input<String> instanceId;
  /// ProjectId accessed in the connection.
  final pulumi.Input<String> project;
  /// TableId accessed in the connection.
  final pulumi.Input<String> tableId;

  /// Creates a new [BigTableIODetailsResponse].
  /// [instanceId] InstanceId accessed in the connection.
  /// [project] ProjectId accessed in the connection.
  /// [tableId] TableId accessed in the connection.
  const BigTableIODetailsResponse({
    required this.instanceId,
    required this.project,
    required this.tableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'project': project,
      'tableId': tableId,
    };
  }

  factory BigTableIODetailsResponse.fromMap(Map<String, dynamic> map) {
    return BigTableIODetailsResponse(
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
      tableId: pulumi.Input.fromValue(map['tableId'] as String),
    );
  }
}
