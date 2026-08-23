// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SparkLoggingInfoResponse {
  /// Project ID used for logging
  final pulumi.Input<String> project;
  /// Resource type used for logging
  final pulumi.Input<String> resourceType;

  /// Creates a new [SparkLoggingInfoResponse].
  /// [project] Project ID used for logging
  /// [resourceType] Resource type used for logging
  const SparkLoggingInfoResponse({
    required this.project,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': project,
      'resourceType': resourceType,
    };
  }

  factory SparkLoggingInfoResponse.fromMap(Map<String, dynamic> map) {
    return SparkLoggingInfoResponse(
      project: pulumi.Input.fromValue(map['project'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
    );
  }
}
