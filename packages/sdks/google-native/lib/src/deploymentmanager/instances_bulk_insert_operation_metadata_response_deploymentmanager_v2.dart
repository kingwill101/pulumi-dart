// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstancesBulkInsertOperationMetadataResponseDeploymentmanagerV2 {
  /// Status information per location (location name is key). Example key: zones/us-central1-a
  final pulumi.Input<Map<String, String>> perLocationStatus;

  /// Creates a new [InstancesBulkInsertOperationMetadataResponseDeploymentmanagerV2].
  /// [perLocationStatus] Status information per location (location name is key). Example key: zones/us-central1-a
  InstancesBulkInsertOperationMetadataResponseDeploymentmanagerV2({
    required this.perLocationStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'perLocationStatus': perLocationStatus,
    };
  }

  factory InstancesBulkInsertOperationMetadataResponseDeploymentmanagerV2.fromMap(Map<String, dynamic> map) {
    return InstancesBulkInsertOperationMetadataResponseDeploymentmanagerV2(
      perLocationStatus: pulumi.Input.fromValue((map['perLocationStatus'] as Map).cast<String, String>()),
    );
  }
}

