// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'per_instance_config_preserved_state.dart';

/// {@template pulumi_compute_per_instance_config_per_instance_config_args_doc}
/// The set of arguments for PerInstanceConfig.
/// {@endtemplate}
/// {@macro pulumi_compute_per_instance_config_per_instance_config_args_doc}
class PerInstanceConfigArgs {
  /// The instance group manager this instance config is part of.
  final pulumi.Input<String> instanceGroupManager;
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

  /// Creates a new [PerInstanceConfigArgs].
  /// [instanceGroupManager] The instance group manager this instance config is part of.
  /// [minimalAction] The minimal action to perform on the instance during an update.
  /// [mostDisruptiveAllowedAction] The most disruptive action to perform on the instance during an update.
  /// [name] The name for this per-instance config and its corresponding instance.
  /// [preservedState] The preserved state for this instance.
  /// [project] The ID of the project in which the resource belongs.
  /// [removeInstanceOnDestroy] When true, deleting this config will immediately remove the underlying instance.
  /// [removeInstanceStateOnDestroy] When true, deleting this config will immediately remove any specified state from the underlying instance.
  /// [zone] Zone where the containing instance group manager is located
  const PerInstanceConfigArgs({
    required this.instanceGroupManager,
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
      'instanceGroupManager': instanceGroupManager,
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

  factory PerInstanceConfigArgs.fromMap(Map<String, dynamic> map) {
    return PerInstanceConfigArgs(
      instanceGroupManager: pulumi.Input.fromValue(map['instanceGroupManager'] as String),
      minimalAction: (() { final guardedValue = map['minimalAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mostDisruptiveAllowedAction: (() { final guardedValue = map['mostDisruptiveAllowedAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preservedState: (() { final guardedValue = map['preservedState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PerInstanceConfigPreservedState.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      removeInstanceOnDestroy: (() { final guardedValue = map['removeInstanceOnDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      removeInstanceStateOnDestroy: (() { final guardedValue = map['removeInstanceStateOnDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

