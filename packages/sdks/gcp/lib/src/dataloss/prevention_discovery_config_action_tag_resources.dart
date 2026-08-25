// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_action_tag_resources_tag_condition.dart';

class PreventionDiscoveryConfigActionTagResources {
  /// Whether applying a tag to a resource should lower the risk of the profile for that resource. For example, in conjunction with an [IAM deny policy](https://cloud.google.com/iam/docs/deny-overview), you can deny all principals a permission if a tag value is present, mitigating the risk of the resource. This also lowers the data risk of resources at the lower levels of the resource hierarchy. For example, reducing the data risk of a table data profile also reduces the data risk of the constituent column data profiles.
  final pulumi.Input<bool?>? lowerDataRiskToLow;
  /// The profile generations for which the tag should be attached to resources. If you attach a tag to only new profiles, then if the sensitivity score of a profile subsequently changes, its tag doesn't change. By default, this field includes only new profiles. To include both new and updated profiles for tagging, this field should explicitly include both `PROFILE_GENERATION_NEW` and `PROFILE_GENERATION_UPDATE`.
  /// Each value may be one of: `PROFILE_GENERATION_NEW`, `PROFILE_GENERATION_UPDATE`.
  final pulumi.Input<List<String>?>? profileGenerationsToTags;
  /// The tags to associate with different conditions.
  /// Structure is documented below.
  final pulumi.Input<List<PreventionDiscoveryConfigActionTagResourcesTagCondition>?>? tagConditions;

  /// Creates a new [PreventionDiscoveryConfigActionTagResources].
  /// [lowerDataRiskToLow] Whether applying a tag to a resource should lower the risk of the profile for that resource. For example, in conjunction with an [IAM deny policy](https://cloud.google.com/iam/docs/deny-overview), you can deny all principals a permission if a tag value is present, mitigating the risk of the resource. This also lowers the data risk of resources at the lower levels of the resource hierarchy. For example, reducing the data risk of a table data profile also reduces the data risk of the constituent column data profiles.
  /// [profileGenerationsToTags] The profile generations for which the tag should be attached to resources. If you attach a tag to only new profiles, then if the sensitivity score of a profile subsequently changes, its tag doesn't change. By default, this field includes only new profiles. To include both new and updated profiles for tagging, this field should explicitly include both `PROFILE_GENERATION_NEW` and `PROFILE_GENERATION_UPDATE`.
  /// [tagConditions] The tags to associate with different conditions.
  const PreventionDiscoveryConfigActionTagResources({
    this.lowerDataRiskToLow,
    this.profileGenerationsToTags,
    this.tagConditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lowerDataRiskToLow': ?lowerDataRiskToLow,
      'profileGenerationsToTags': ?profileGenerationsToTags,
      'tagConditions': ?pulumi.Input.mapOptionalInputValue<List<PreventionDiscoveryConfigActionTagResourcesTagCondition>, List<Map<String, dynamic>>>(tagConditions, (value) => pulumi.Input.encodeList<PreventionDiscoveryConfigActionTagResourcesTagCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PreventionDiscoveryConfigActionTagResources.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigActionTagResources(
      lowerDataRiskToLow: (() { final guardedValue = map['lowerDataRiskToLow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      profileGenerationsToTags: (() { final guardedValue = map['profileGenerationsToTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tagConditions: (() { final guardedValue = map['tagConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionDiscoveryConfigActionTagResourcesTagCondition>(guardedValue, (value) => PreventionDiscoveryConfigActionTagResourcesTagCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
