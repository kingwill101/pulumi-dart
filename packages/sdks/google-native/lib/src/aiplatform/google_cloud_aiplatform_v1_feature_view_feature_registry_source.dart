// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_feature_view_feature_registry_source_feature_group.dart';

/// A Feature Registry source for features that need to be synced to Online Store.
class GoogleCloudAiplatformV1FeatureViewFeatureRegistrySource {
  /// List of features that need to be synced to Online Store.
  final pulumi.Input<
    List<GoogleCloudAiplatformV1FeatureViewFeatureRegistrySourceFeatureGroup>
  >
  featureGroups;

  /// Creates a new [GoogleCloudAiplatformV1FeatureViewFeatureRegistrySource].
  /// [featureGroups] List of features that need to be synced to Online Store.
  GoogleCloudAiplatformV1FeatureViewFeatureRegistrySource({
    required this.featureGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureGroups':
          pulumi.Input.mapInputValue<
            List<
              GoogleCloudAiplatformV1FeatureViewFeatureRegistrySourceFeatureGroup
            >,
            List<Map<String, dynamic>>
          >(
            featureGroups,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudAiplatformV1FeatureViewFeatureRegistrySourceFeatureGroup,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GoogleCloudAiplatformV1FeatureViewFeatureRegistrySource.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1FeatureViewFeatureRegistrySource(
      featureGroups: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GoogleCloudAiplatformV1FeatureViewFeatureRegistrySourceFeatureGroup
        >(
          map['featureGroups']!,
          (value) =>
              GoogleCloudAiplatformV1FeatureViewFeatureRegistrySourceFeatureGroup.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
