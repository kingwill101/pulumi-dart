// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_cluster_config_gkehub_v1beta.dart';

/// {@template pulumi_gkehub_v1beta_fleet_gkehub_v1beta_args_doc}
/// The set of arguments for Fleet.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1beta_fleet_gkehub_v1beta_args_doc}
class FleetGkehubV1betaArgs {
  /// Optional. The default cluster configurations to apply across the fleet.
  final pulumi.Input<DefaultClusterConfigGkehubV1beta>? defaultClusterConfig;

  /// Optional. A user-assigned display name of the Fleet. When present, it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point. Example: `Production Fleet`
  final pulumi.Input<String>? displayName;

  /// Optional. Labels for this Fleet.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Creates a new [FleetGkehubV1betaArgs].
  /// [defaultClusterConfig] Optional. The default cluster configurations to apply across the fleet.
  /// [displayName] Optional. A user-assigned display name of the Fleet. When present, it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point. Example: `Production Fleet`
  /// [labels] Optional. Labels for this Fleet.
  /// [location] Optional.
  /// [project] Optional.
  FleetGkehubV1betaArgs({
    this.defaultClusterConfig,
    this.displayName,
    this.labels,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultClusterConfig':
          ?pulumi.Input.mapOptionalInputValue<
            DefaultClusterConfigGkehubV1beta,
            Map<String, dynamic>
          >(defaultClusterConfig, (value) => value.toMap()),
      'displayName': ?displayName,
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
    };
  }

  factory FleetGkehubV1betaArgs.fromMap(Map<String, dynamic> map) {
    return FleetGkehubV1betaArgs(
      defaultClusterConfig: (() {
        final guardedValue = map['defaultClusterConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DefaultClusterConfigGkehubV1beta.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
