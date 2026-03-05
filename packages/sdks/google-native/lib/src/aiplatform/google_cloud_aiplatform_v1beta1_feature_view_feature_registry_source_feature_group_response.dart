// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Features belonging to a single feature group that will be synced to Online Store.
class GoogleCloudAiplatformV1beta1FeatureViewFeatureRegistrySourceFeatureGroupResponse {
  /// Identifier of the feature group.
  final pulumi.Input<String> featureGroupId;
  /// Identifiers of features under the feature group.
  final pulumi.Input<List<String>> featureIds;

  /// Creates a new [GoogleCloudAiplatformV1beta1FeatureViewFeatureRegistrySourceFeatureGroupResponse].
  /// [featureGroupId] Identifier of the feature group.
  /// [featureIds] Identifiers of features under the feature group.
  GoogleCloudAiplatformV1beta1FeatureViewFeatureRegistrySourceFeatureGroupResponse({
    required this.featureGroupId,
    required this.featureIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureGroupId': featureGroupId,
      'featureIds': featureIds,
    };
  }

  factory GoogleCloudAiplatformV1beta1FeatureViewFeatureRegistrySourceFeatureGroupResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1FeatureViewFeatureRegistrySourceFeatureGroupResponse(
      featureGroupId: pulumi.Input.fromValue(map['featureGroupId'] as String),
      featureIds: pulumi.Input.fromValue((map['featureIds'] as List).cast<String>()),
    );
  }
}

