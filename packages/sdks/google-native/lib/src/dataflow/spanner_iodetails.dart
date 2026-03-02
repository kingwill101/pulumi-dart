// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata for a Spanner connector used by the job.
class SpannerIODetails {
  /// DatabaseId accessed in the connection.
  final pulumi.Input<String>? databaseId;
  /// InstanceId accessed in the connection.
  final pulumi.Input<String>? instanceId;
  /// ProjectId accessed in the connection.
  final pulumi.Input<String>? project;

  /// Creates a new [SpannerIODetails].
  /// [databaseId] DatabaseId accessed in the connection.
  /// [instanceId] InstanceId accessed in the connection.
  /// [project] ProjectId accessed in the connection.
  SpannerIODetails({
    this.databaseId,
    this.instanceId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseId': ?databaseId,
      'instanceId': ?instanceId,
      'project': ?project,
    };
  }

  factory SpannerIODetails.fromMap(Map<String, dynamic> map) {
    return SpannerIODetails(
      databaseId: map['databaseId'] == null ? null : (map['databaseId']! as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

