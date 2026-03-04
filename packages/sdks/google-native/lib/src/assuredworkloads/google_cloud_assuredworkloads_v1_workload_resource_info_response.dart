// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represent the resources that are children of this Workload.
class GoogleCloudAssuredworkloadsV1WorkloadResourceInfoResponse {
  /// Resource identifier. For a project this represents project_number.
  final pulumi.Input<String> resourceId;

  /// Indicates the type of resource.
  final pulumi.Input<String> resourceType;

  /// Creates a new [GoogleCloudAssuredworkloadsV1WorkloadResourceInfoResponse].
  /// [resourceId] Resource identifier. For a project this represents project_number.
  /// [resourceType] Indicates the type of resource.
  GoogleCloudAssuredworkloadsV1WorkloadResourceInfoResponse({
    required this.resourceId,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': resourceId,
      'resourceType': resourceType,
    };
  }

  factory GoogleCloudAssuredworkloadsV1WorkloadResourceInfoResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAssuredworkloadsV1WorkloadResourceInfoResponse(
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
    );
  }
}
