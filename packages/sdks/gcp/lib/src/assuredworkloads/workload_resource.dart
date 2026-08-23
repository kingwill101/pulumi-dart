// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkloadResource {
  /// Resource identifier. For a project this represents project_number.
  final pulumi.Input<int>? resourceId;
  /// Indicates the type of resource. Possible values: RESOURCE_TYPE_UNSPECIFIED, CONSUMER_PROJECT, ENCRYPTION_KEYS_PROJECT, KEYRING, CONSUMER_FOLDER
  final pulumi.Input<String>? resourceType;

  /// Creates a new [WorkloadResource].
  /// [resourceId] Resource identifier. For a project this represents project_number.
  /// [resourceType] Indicates the type of resource. Possible values: RESOURCE_TYPE_UNSPECIFIED, CONSUMER_PROJECT, ENCRYPTION_KEYS_PROJECT, KEYRING, CONSUMER_FOLDER
  const WorkloadResource({
    this.resourceId,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
      'resourceType': ?resourceType,
    };
  }

  factory WorkloadResource.fromMap(Map<String, dynamic> map) {
    return WorkloadResource(
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
