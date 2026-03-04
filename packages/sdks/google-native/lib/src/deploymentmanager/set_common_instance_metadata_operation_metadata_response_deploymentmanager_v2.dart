// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SetCommonInstanceMetadataOperationMetadataResponseDeploymentmanagerV2 {
  /// The client operation id.
  final pulumi.Input<String> clientOperationId;

  /// Status information per location (location name is key). Example key: zones/us-central1-a
  final pulumi.Input<Map<String, String>> perLocationOperations;

  /// Creates a new [SetCommonInstanceMetadataOperationMetadataResponseDeploymentmanagerV2].
  /// [clientOperationId] The client operation id.
  /// [perLocationOperations] Status information per location (location name is key). Example key: zones/us-central1-a
  SetCommonInstanceMetadataOperationMetadataResponseDeploymentmanagerV2({
    required this.clientOperationId,
    required this.perLocationOperations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientOperationId': clientOperationId,
      'perLocationOperations': perLocationOperations,
    };
  }

  factory SetCommonInstanceMetadataOperationMetadataResponseDeploymentmanagerV2.fromMap(
    Map<String, dynamic> map,
  ) {
    return SetCommonInstanceMetadataOperationMetadataResponseDeploymentmanagerV2(
      clientOperationId: pulumi.Input.fromValue(
        map['clientOperationId'] as String,
      ),
      perLocationOperations: pulumi.Input.fromValue(
        (map['perLocationOperations'] as Map).cast<String, String>(),
      ),
    );
  }
}
