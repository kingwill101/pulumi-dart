// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_action_tag_resources_tag_condition_sensitivity_score.dart';
import 'prevention_discovery_config_action_tag_resources_tag_condition_tag.dart';

class PreventionDiscoveryConfigActionTagResourcesTagCondition {
  /// Conditions attaching the tag to a resource on its profile having this sensitivity score.
  /// Structure is documented below.
  final pulumi.Input<
    PreventionDiscoveryConfigActionTagResourcesTagConditionSensitivityScore
  >?
  sensitivityScore;

  /// The tag value to attach to resources.
  /// Structure is documented below.
  final pulumi.Input<
    PreventionDiscoveryConfigActionTagResourcesTagConditionTag
  >?
  tag;

  /// Creates a new [PreventionDiscoveryConfigActionTagResourcesTagCondition].
  /// [sensitivityScore] Conditions attaching the tag to a resource on its profile having this sensitivity score.
  /// [tag] The tag value to attach to resources.
  PreventionDiscoveryConfigActionTagResourcesTagCondition({
    this.sensitivityScore,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sensitivityScore':
          ?pulumi.Input.mapOptionalInputValue<
            PreventionDiscoveryConfigActionTagResourcesTagConditionSensitivityScore,
            Map<String, dynamic>
          >(sensitivityScore, (value) => value.toMap()),
      'tag':
          ?pulumi.Input.mapOptionalInputValue<
            PreventionDiscoveryConfigActionTagResourcesTagConditionTag,
            Map<String, dynamic>
          >(tag, (value) => value.toMap()),
    };
  }

  factory PreventionDiscoveryConfigActionTagResourcesTagCondition.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDiscoveryConfigActionTagResourcesTagCondition(
      sensitivityScore: (() {
        final guardedValue = map['sensitivityScore'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PreventionDiscoveryConfigActionTagResourcesTagConditionSensitivityScore.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tag: (() {
        final guardedValue = map['tag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PreventionDiscoveryConfigActionTagResourcesTagConditionTag.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
