// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstancesBulkInsertOperationMetadataResponse {
  /// Status information per location (location name is key). Example key: zones/us-central1-a
  final pulumi.Input<Map<String, String>> perLocationStatus;

  /// Creates a new [InstancesBulkInsertOperationMetadataResponse].
  /// [perLocationStatus] Status information per location (location name is key). Example key: zones/us-central1-a
  InstancesBulkInsertOperationMetadataResponse({
    required this.perLocationStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'perLocationStatus': perLocationStatus,
    };
  }

  factory InstancesBulkInsertOperationMetadataResponse.fromMap(Map<String, dynamic> map) {
    return InstancesBulkInsertOperationMetadataResponse(
      perLocationStatus: pulumi.Input.fromValue((map['perLocationStatus'] as Map).cast<String, String>()),
    );
  }
}

