// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_per_instance_config_preserved_state.dart';

/// Input properties used for looking up and filtering RegionPerInstanceConfig resources.
class RegionPerInstanceConfigState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The minimal action to perform on the instance during an update.
  /// Default is `NONE`. Possible values are:
  /// * REPLACE
  /// * RESTART
  /// * REFRESH
  /// * NONE
  final pulumi.Input<String>? minimalAction;
  /// The most disruptive action to perform on the instance during an update.
  /// Default is `REPLACE`. Possible values are:
  /// * REPLACE
  /// * RESTART
  /// * REFRESH
  /// * NONE
  final pulumi.Input<String>? mostDisruptiveAllowedAction;
  /// The name for this per-instance config and its corresponding instance.
  final pulumi.Input<String>? name;
  /// The preserved state for this instance.
  /// Structure is documented below.
  final pulumi.Input<RegionPerInstanceConfigPreservedState>? preservedState;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Region where the containing instance group manager is located
  final pulumi.Input<String>? region;
  /// The region instance group manager this instance config is part of.
  final pulumi.Input<String>? regionInstanceGroupManager;
  /// When true, deleting this config will immediately remove the underlying instance.
  /// When false, deleting this config will use the behavior as determined by remove_instance_on_destroy.
  final pulumi.Input<bool>? removeInstanceOnDestroy;
  /// When true, deleting this config will immediately remove any specified state from the underlying instance.
  /// When false, deleting this config will *not* immediately remove any state from the underlying instance.
  /// State will be removed on the next instance recreation or update.
  final pulumi.Input<bool>? removeInstanceStateOnDestroy;

  /// Creates a new [RegionPerInstanceConfigState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [minimalAction] The minimal action to perform on the instance during an update.
  /// [mostDisruptiveAllowedAction] The most disruptive action to perform on the instance during an update.
  /// [name] The name for this per-instance config and its corresponding instance.
  /// [preservedState] The preserved state for this instance.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] Region where the containing instance group manager is located
  /// [regionInstanceGroupManager] The region instance group manager this instance config is part of.
  /// [removeInstanceOnDestroy] When true, deleting this config will immediately remove the underlying instance.
  /// [removeInstanceStateOnDestroy] When true, deleting this config will immediately remove any specified state from the underlying instance.
  const RegionPerInstanceConfigState({
    this.deletionPolicy,
    this.minimalAction,
    this.mostDisruptiveAllowedAction,
    this.name,
    this.preservedState,
    this.project,
    this.region,
    this.regionInstanceGroupManager,
    this.removeInstanceOnDestroy,
    this.removeInstanceStateOnDestroy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'minimalAction': ?minimalAction,
      'mostDisruptiveAllowedAction': ?mostDisruptiveAllowedAction,
      'name': ?name,
      'preservedState': ?pulumi.Input.mapOptionalInputValue<RegionPerInstanceConfigPreservedState, Map<String, dynamic>>(preservedState, (value) => value.toMap()),
      'project': ?project,
      'region': ?region,
      'regionInstanceGroupManager': ?regionInstanceGroupManager,
      'removeInstanceOnDestroy': ?removeInstanceOnDestroy,
      'removeInstanceStateOnDestroy': ?removeInstanceStateOnDestroy,
    };
  }

  factory RegionPerInstanceConfigState.fromMap(Map<String, dynamic> map) {
    return RegionPerInstanceConfigState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minimalAction: (() { final guardedValue = map['minimalAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mostDisruptiveAllowedAction: (() { final guardedValue = map['mostDisruptiveAllowedAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preservedState: (() { final guardedValue = map['preservedState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionPerInstanceConfigPreservedState.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionInstanceGroupManager: (() { final guardedValue = map['regionInstanceGroupManager']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      removeInstanceOnDestroy: (() { final guardedValue = map['removeInstanceOnDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      removeInstanceStateOnDestroy: (() { final guardedValue = map['removeInstanceStateOnDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
