// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeTagsTagFilter {
  /// The namespaced name for the tag key. Must be in the format
  /// `{parent_id}/{tag_key_short_name}`, for example, "123456/sensitive" for
  /// an organization parent, or "my-project/sensitive" for a project parent.
  final pulumi.Input<String?>? namespacedTagKey;
  /// The namespaced name for the tag value. Must be in the format
  /// `{parent_id}/{tag_key_short_name}/{short_name}`, for example,
  /// "123456/environment/prod" for an organization parent, or
  /// "my-project/environment/prod" for a project parent.
  final pulumi.Input<String?>? namespacedTagValue;

  /// Creates a new [PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeTagsTagFilter].
  /// [namespacedTagKey] The namespaced name for the tag key. Must be in the format
  /// [namespacedTagValue] The namespaced name for the tag value. Must be in the format
  const PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeTagsTagFilter({
    this.namespacedTagKey,
    this.namespacedTagValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespacedTagKey': ?namespacedTagKey,
      'namespacedTagValue': ?namespacedTagValue,
    };
  }

  factory PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeTagsTagFilter.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeTagsTagFilter(
      namespacedTagKey: (() { final guardedValue = map['namespacedTagKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespacedTagValue: (() { final guardedValue = map['namespacedTagValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
