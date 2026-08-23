// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains settings for embedding management.
class GoogleCloudAiplatformV1beta1FeatureOnlineStoreEmbeddingManagementResponse {
  /// Optional. Immutable. Whether to enable embedding management in this FeatureOnlineStore. It's immutable after creation to ensure the FeatureOnlineStore availability.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GoogleCloudAiplatformV1beta1FeatureOnlineStoreEmbeddingManagementResponse].
  /// [enabled] Optional. Immutable. Whether to enable embedding management in this FeatureOnlineStore. It's immutable after creation to ensure the FeatureOnlineStore availability.
  const GoogleCloudAiplatformV1beta1FeatureOnlineStoreEmbeddingManagementResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GoogleCloudAiplatformV1beta1FeatureOnlineStoreEmbeddingManagementResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1FeatureOnlineStoreEmbeddingManagementResponse(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
