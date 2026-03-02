// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata for a Spanner connector used by the job.
class SpannerIODetailsResponse {
  /// DatabaseId accessed in the connection.
  final pulumi.Input<String> databaseId;
  /// InstanceId accessed in the connection.
  final pulumi.Input<String> instanceId;
  /// ProjectId accessed in the connection.
  final pulumi.Input<String> project;

  /// Creates a new [SpannerIODetailsResponse].
  /// [databaseId] DatabaseId accessed in the connection.
  /// [instanceId] InstanceId accessed in the connection.
  /// [project] ProjectId accessed in the connection.
  SpannerIODetailsResponse({
    required this.databaseId,
    required this.instanceId,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseId': databaseId,
      'instanceId': instanceId,
      'project': project,
    };
  }

  factory SpannerIODetailsResponse.fromMap(Map<String, dynamic> map) {
    return SpannerIODetailsResponse(
      databaseId: (map['databaseId'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      project: (map['project'] as String).input(),
    );
  }
}

