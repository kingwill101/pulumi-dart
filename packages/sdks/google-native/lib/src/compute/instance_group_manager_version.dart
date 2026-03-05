// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fixed_or_percent.dart';

class InstanceGroupManagerVersion {
  /// The URL of the instance template that is specified for this managed instance group. The group uses this template to create new instances in the managed instance group until the `targetSize` for this version is reached. The templates for existing instances in the group do not change unless you run recreateInstances, run applyUpdatesToInstances, or set the group's updatePolicy.type to PROACTIVE; in those cases, existing instances are updated until the `targetSize` for this version is reached.
  final pulumi.Input<String>? instanceTemplate;
  /// Name of the version. Unique among all versions in the scope of this managed instance group.
  final pulumi.Input<String>? name;
  /// Tag describing the version. Used to trigger rollout of a target version even if instance_template remains unchanged. Deprecated in favor of 'name'.
  final pulumi.Input<String>? tag;
  /// Specifies the intended number of instances to be created from the instanceTemplate. The final number of instances created from the template will be equal to: - If expressed as a fixed number, the minimum of either targetSize.fixed or instanceGroupManager.targetSize is used. - if expressed as a percent, the targetSize would be (targetSize.percent/100 * InstanceGroupManager.targetSize) If there is a remainder, the number is rounded. If unset, this version will update any remaining instances not updated by another version. Read Starting a canary update for more information.
  final pulumi.Input<FixedOrPercent>? targetSize;

  /// Creates a new [InstanceGroupManagerVersion].
  /// [instanceTemplate] The URL of the instance template that is specified for this managed instance group. The group uses this template to create new instances in the managed instance group until the `targetSize` for this version is reached. The templates for existing instances in the group do not change unless you run recreateInstances, run applyUpdatesToInstances, or set the group's updatePolicy.type to PROACTIVE; in those cases, existing instances are updated until the `targetSize` for this version is reached.
  /// [name] Name of the version. Unique among all versions in the scope of this managed instance group.
  /// [tag] Tag describing the version. Used to trigger rollout of a target version even if instance_template remains unchanged. Deprecated in favor of 'name'.
  /// [targetSize] Specifies the intended number of instances to be created from the instanceTemplate. The final number of instances created from the template will be equal to: - If expressed as a fixed number, the minimum of either targetSize.fixed or instanceGroupManager.targetSize is used. - if expressed as a percent, the targetSize would be (targetSize.percent/100 * InstanceGroupManager.targetSize) If there is a remainder, the number is rounded. If unset, this version will update any remaining instances not updated by another version. Read Starting a canary update for more information.
  InstanceGroupManagerVersion({
    this.instanceTemplate,
    this.name,
    this.tag,
    this.targetSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceTemplate': ?instanceTemplate,
      'name': ?name,
      'tag': ?tag,
      'targetSize': ?pulumi.Input.mapOptionalInputValue<FixedOrPercent, Map<String, dynamic>>(targetSize, (value) => value.toMap()),
    };
  }

  factory InstanceGroupManagerVersion.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerVersion(
      instanceTemplate: (() { final guardedValue = map['instanceTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetSize: (() { final guardedValue = map['targetSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FixedOrPercent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

