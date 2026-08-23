// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rollout_plan_wave_selector_location_selector.dart';
import 'rollout_plan_wave_selector_resource_hierarchy_selector.dart';

class RolloutPlanWaveSelector {
  /// Roll out to resources by location.
  /// Structure is documented below.
  final pulumi.Input<RolloutPlanWaveSelectorLocationSelector>? locationSelector;
  /// Roll out to resources by Cloud Resource Manager resource hierarchy nodes such as projects, folders, orgs.
  /// Structure is documented below.
  final pulumi.Input<RolloutPlanWaveSelectorResourceHierarchySelector>? resourceHierarchySelector;

  /// Creates a new [RolloutPlanWaveSelector].
  /// [locationSelector] Roll out to resources by location.
  /// [resourceHierarchySelector] Roll out to resources by Cloud Resource Manager resource hierarchy nodes such as projects, folders, orgs.
  const RolloutPlanWaveSelector({
    this.locationSelector,
    this.resourceHierarchySelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locationSelector': ?pulumi.Input.mapOptionalInputValue<RolloutPlanWaveSelectorLocationSelector, Map<String, dynamic>>(locationSelector, (value) => value.toMap()),
      'resourceHierarchySelector': ?pulumi.Input.mapOptionalInputValue<RolloutPlanWaveSelectorResourceHierarchySelector, Map<String, dynamic>>(resourceHierarchySelector, (value) => value.toMap()),
    };
  }

  factory RolloutPlanWaveSelector.fromMap(Map<String, dynamic> map) {
    return RolloutPlanWaveSelector(
      locationSelector: (() { final guardedValue = map['locationSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RolloutPlanWaveSelectorLocationSelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceHierarchySelector: (() { final guardedValue = map['resourceHierarchySelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RolloutPlanWaveSelectorResourceHierarchySelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
