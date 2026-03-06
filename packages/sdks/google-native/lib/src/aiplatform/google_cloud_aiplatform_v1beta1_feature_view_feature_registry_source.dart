// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_feature_view_feature_registry_source_feature_group.dart';

/// A Feature Registry source for features that need to be synced to Online Store.
class GoogleCloudAiplatformV1beta1FeatureViewFeatureRegistrySource {
  /// List of features that need to be synced to Online Store.
  final pulumi.Input<List<GoogleCloudAiplatformV1beta1FeatureViewFeatureRegistrySourceFeatureGroup>> featureGroups;

  /// Creates a new [GoogleCloudAiplatformV1beta1FeatureViewFeatureRegistrySource].
  /// [featureGroups] List of features that need to be synced to Online Store.
  const GoogleCloudAiplatformV1beta1FeatureViewFeatureRegistrySource({
    required this.featureGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureGroups': pulumi.Input.mapInputValue<List<GoogleCloudAiplatformV1beta1FeatureViewFeatureRegistrySourceFeatureGroup>, List<Map<String, dynamic>>>(featureGroups, (value) => pulumi.Input.encodeList<GoogleCloudAiplatformV1beta1FeatureViewFeatureRegistrySourceFeatureGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudAiplatformV1beta1FeatureViewFeatureRegistrySource.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1FeatureViewFeatureRegistrySource(
      featureGroups: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudAiplatformV1beta1FeatureViewFeatureRegistrySourceFeatureGroup>(map['featureGroups']!, (value) => GoogleCloudAiplatformV1beta1FeatureViewFeatureRegistrySourceFeatureGroup.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

