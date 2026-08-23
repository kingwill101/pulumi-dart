// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionDiscoveryConfigActionTagResourcesTagConditionTag {
  /// The namespaced name for the tag value to attach to resources. Must be in the format `{parent_id}/{tag_key_short_name}/{short_name}`, for example, "123456/environment/prod".
  final pulumi.Input<String>? namespacedValue;

  /// Creates a new [PreventionDiscoveryConfigActionTagResourcesTagConditionTag].
  /// [namespacedValue] The namespaced name for the tag value to attach to resources. Must be in the format `{parent_id}/{tag_key_short_name}/{short_name}`, for example, "123456/environment/prod".
  const PreventionDiscoveryConfigActionTagResourcesTagConditionTag({
    this.namespacedValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespacedValue': ?namespacedValue,
    };
  }

  factory PreventionDiscoveryConfigActionTagResourcesTagConditionTag.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigActionTagResourcesTagConditionTag(
      namespacedValue: (() { final guardedValue = map['namespacedValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
