// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents state information for a MetadataStore.
class GoogleCloudAiplatformV1MetadataStoreMetadataStoreStateResponse {
  /// The disk utilization of the MetadataStore in bytes.
  final pulumi.Input<String> diskUtilizationBytes;

  /// Creates a new [GoogleCloudAiplatformV1MetadataStoreMetadataStoreStateResponse].
  /// [diskUtilizationBytes] The disk utilization of the MetadataStore in bytes.
  GoogleCloudAiplatformV1MetadataStoreMetadataStoreStateResponse({
    required this.diskUtilizationBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskUtilizationBytes': diskUtilizationBytes,
    };
  }

  factory GoogleCloudAiplatformV1MetadataStoreMetadataStoreStateResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1MetadataStoreMetadataStoreStateResponse(
      diskUtilizationBytes: pulumi.Input.fromValue(map['diskUtilizationBytes'] as String),
    );
  }
}

