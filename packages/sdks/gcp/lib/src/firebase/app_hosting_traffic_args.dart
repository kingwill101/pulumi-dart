// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_hosting_traffic_rollout_policy.dart';
import 'app_hosting_traffic_target.dart';

/// {@template pulumi_firebase_app_hosting_traffic_app_hosting_traffic_args_doc}
/// The set of arguments for AppHostingTraffic.
/// {@endtemplate}
/// {@macro pulumi_firebase_app_hosting_traffic_app_hosting_traffic_args_doc}
class AppHostingTrafficArgs {
  /// Id of the backend that this Traffic config applies to
  final pulumi.Input<String> backend;
  /// The location the Backend that this Traffic config applies to
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The policy for how builds and rollouts are triggered and rolled out.
  /// Structure is documented below.
  final pulumi.Input<AppHostingTrafficRolloutPolicy>? rolloutPolicy;
  /// Set to manually control the desired traffic for the backend. This will
  /// cause current to eventually match this value. The percentages must add
  /// up to 100.
  /// Structure is documented below.
  final pulumi.Input<AppHostingTrafficTarget>? target;

  /// Creates a new [AppHostingTrafficArgs].
  /// [backend] Id of the backend that this Traffic config applies to
  /// [location] The location the Backend that this Traffic config applies to
  /// [project] The ID of the project in which the resource belongs.
  /// [rolloutPolicy] The policy for how builds and rollouts are triggered and rolled out.
  /// [target] Set to manually control the desired traffic for the backend. This will
  const AppHostingTrafficArgs({
    required this.backend,
    required this.location,
    this.project,
    this.rolloutPolicy,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backend': backend,
      'location': location,
      'project': ?project,
      'rolloutPolicy': ?pulumi.Input.mapOptionalInputValue<AppHostingTrafficRolloutPolicy, Map<String, dynamic>>(rolloutPolicy, (value) => value.toMap()),
      'target': ?pulumi.Input.mapOptionalInputValue<AppHostingTrafficTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory AppHostingTrafficArgs.fromMap(Map<String, dynamic> map) {
    return AppHostingTrafficArgs(
      backend: pulumi.Input.fromValue(map['backend'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rolloutPolicy: (() { final guardedValue = map['rolloutPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppHostingTrafficRolloutPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppHostingTrafficTarget.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

