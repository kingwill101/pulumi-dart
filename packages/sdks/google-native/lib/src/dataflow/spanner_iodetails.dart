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
  const SpannerIODetails({
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
      databaseId: (() { final guardedValue = map['databaseId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
