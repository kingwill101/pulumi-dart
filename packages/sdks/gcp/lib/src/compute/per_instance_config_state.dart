// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'per_instance_config_preserved_state.dart';

/// Input properties used for looking up and filtering PerInstanceConfig resources.
class PerInstanceConfigState {
  /// The instance group manager this instance config is part of.
  final pulumi.Input<String>? instanceGroupManager;
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
  final pulumi.Input<PerInstanceConfigPreservedState>? preservedState;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// When true, deleting this config will immediately remove the underlying instance.
  /// When false, deleting this config will use the behavior as determined by remove_instance_on_destroy.
  final pulumi.Input<bool>? removeInstanceOnDestroy;
  /// When true, deleting this config will immediately remove any specified state from the underlying instance.
  /// When false, deleting this config will *not* immediately remove any state from the underlying instance.
  /// State will be removed on the next instance recreation or update.
  final pulumi.Input<bool>? removeInstanceStateOnDestroy;
  /// Zone where the containing instance group manager is located
  final pulumi.Input<String>? zone;

  /// Creates a new [PerInstanceConfigState].
  /// [instanceGroupManager] The instance group manager this instance config is part of.
  /// [minimalAction] The minimal action to perform on the instance during an update.
  /// [mostDisruptiveAllowedAction] The most disruptive action to perform on the instance during an update.
  /// [name] The name for this per-instance config and its corresponding instance.
  /// [preservedState] The preserved state for this instance.
  /// [project] The ID of the project in which the resource belongs.
  /// [removeInstanceOnDestroy] When true, deleting this config will immediately remove the underlying instance.
  /// [removeInstanceStateOnDestroy] When true, deleting this config will immediately remove any specified state from the underlying instance.
  /// [zone] Zone where the containing instance group manager is located
  PerInstanceConfigState({
    this.instanceGroupManager,
    this.minimalAction,
    this.mostDisruptiveAllowedAction,
    this.name,
    this.preservedState,
    this.project,
    this.removeInstanceOnDestroy,
    this.removeInstanceStateOnDestroy,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceGroupManager': ?instanceGroupManager,
      'minimalAction': ?minimalAction,
      'mostDisruptiveAllowedAction': ?mostDisruptiveAllowedAction,
      'name': ?name,
      'preservedState': ?pulumi.Input.mapOptionalInputValue<PerInstanceConfigPreservedState, Map<String, dynamic>>(preservedState, (value) => value.toMap()),
      'project': ?project,
      'removeInstanceOnDestroy': ?removeInstanceOnDestroy,
      'removeInstanceStateOnDestroy': ?removeInstanceStateOnDestroy,
      'zone': ?zone,
    };
  }

  factory PerInstanceConfigState.fromMap(Map<String, dynamic> map) {
    return PerInstanceConfigState(
      instanceGroupManager: map['instanceGroupManager'] == null ? null : (map['instanceGroupManager'] as String).input(),
      minimalAction: map['minimalAction'] == null ? null : (map['minimalAction'] as String).input(),
      mostDisruptiveAllowedAction: map['mostDisruptiveAllowedAction'] == null ? null : (map['mostDisruptiveAllowedAction'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      preservedState: map['preservedState'] == null ? null : (PerInstanceConfigPreservedState.fromMap((map['preservedState'] as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      removeInstanceOnDestroy: map['removeInstanceOnDestroy'] == null ? null : (map['removeInstanceOnDestroy'] as bool).input(),
      removeInstanceStateOnDestroy: map['removeInstanceStateOnDestroy'] == null ? null : (map['removeInstanceStateOnDestroy'] as bool).input(),
      zone: map['zone'] == null ? null : (map['zone'] as String).input(),
    );
  }
}

