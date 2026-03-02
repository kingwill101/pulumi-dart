// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A container to reference an id for any resource type. A `resource` in Google Cloud Platform is a generic term for something you (a developer) may want to interact with through one of our API's. Some examples are an App Engine app, a Compute Engine instance, a Cloud SQL database, and so on.
class ResourceIdResponseCloudresourcemanagerV1beta1 {
  /// Required field representing the resource type this id is for. At present, the valid types are "project", "folder", and "organization".
  final pulumi.Input<String> type;

  /// Creates a new [ResourceIdResponseCloudresourcemanagerV1beta1].
  /// [type] Required field representing the resource type this id is for. At present, the valid types are "project", "folder", and "organization".
  ResourceIdResponseCloudresourcemanagerV1beta1({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory ResourceIdResponseCloudresourcemanagerV1beta1.fromMap(Map<String, dynamic> map) {
    return ResourceIdResponseCloudresourcemanagerV1beta1(
      type: (map['type'] as String).input(),
    );
  }
}

