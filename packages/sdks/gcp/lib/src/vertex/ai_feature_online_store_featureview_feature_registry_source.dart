// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_feature_online_store_featureview_feature_registry_source_feature_group.dart';

class AiFeatureOnlineStoreFeatureviewFeatureRegistrySource {
  /// List of features that need to be synced to Online Store.
  /// Structure is documented below.
  final pulumi.Input<List<AiFeatureOnlineStoreFeatureviewFeatureRegistrySourceFeatureGroup>> featureGroups;
  /// The project number of the parent project of the feature Groups.
  final pulumi.Input<String>? projectNumber;

  /// Creates a new [AiFeatureOnlineStoreFeatureviewFeatureRegistrySource].
  /// [featureGroups] List of features that need to be synced to Online Store.
  /// [projectNumber] The project number of the parent project of the feature Groups.
  AiFeatureOnlineStoreFeatureviewFeatureRegistrySource({
    required this.featureGroups,
    this.projectNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureGroups': pulumi.Input.mapInputValue<List<AiFeatureOnlineStoreFeatureviewFeatureRegistrySourceFeatureGroup>, List<Map<String, dynamic>>>(featureGroups, (value) => pulumi.Input.encodeList<AiFeatureOnlineStoreFeatureviewFeatureRegistrySourceFeatureGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'projectNumber': ?projectNumber,
    };
  }

  factory AiFeatureOnlineStoreFeatureviewFeatureRegistrySource.fromMap(Map<String, dynamic> map) {
    return AiFeatureOnlineStoreFeatureviewFeatureRegistrySource(
      featureGroups: pulumi.Input.fromValue(pulumi.Input.decodeList<AiFeatureOnlineStoreFeatureviewFeatureRegistrySourceFeatureGroup>(map['featureGroups']!, (value) => AiFeatureOnlineStoreFeatureviewFeatureRegistrySourceFeatureGroup.fromMap((value as Map).cast<String, dynamic>()))),
      projectNumber: (() { final guardedValue = map['projectNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

