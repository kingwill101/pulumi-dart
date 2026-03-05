// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiFeatureOnlineStoreFeatureviewFeatureRegistrySourceFeatureGroup {
  /// Identifier of the feature group.
  final pulumi.Input<String> featureGroupId;
  /// Identifiers of features under the feature group.
  final pulumi.Input<List<String>> featureIds;

  /// Creates a new [AiFeatureOnlineStoreFeatureviewFeatureRegistrySourceFeatureGroup].
  /// [featureGroupId] Identifier of the feature group.
  /// [featureIds] Identifiers of features under the feature group.
  AiFeatureOnlineStoreFeatureviewFeatureRegistrySourceFeatureGroup({
    required this.featureGroupId,
    required this.featureIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureGroupId': featureGroupId,
      'featureIds': featureIds,
    };
  }

  factory AiFeatureOnlineStoreFeatureviewFeatureRegistrySourceFeatureGroup.fromMap(Map<String, dynamic> map) {
    return AiFeatureOnlineStoreFeatureviewFeatureRegistrySourceFeatureGroup(
      featureGroupId: pulumi.Input.fromValue(map['featureGroupId'] as String),
      featureIds: pulumi.Input.fromValue((map['featureIds'] as List).cast<String>()),
    );
  }
}

