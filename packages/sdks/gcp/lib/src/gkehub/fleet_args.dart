// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_default_cluster_config.dart';

/// {@template pulumi_gkehub_fleet_fleet_args_doc}
/// The set of arguments for Fleet.
/// {@endtemplate}
/// {@macro pulumi_gkehub_fleet_fleet_args_doc}
class FleetArgs {
  /// The default cluster configurations to apply across the fleet.
  /// Structure is documented below.
  final pulumi.Input<FleetDefaultClusterConfig>? defaultClusterConfig;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// A user-assigned display name of the Fleet. When present, it must be between 4 to 30 characters.
  /// Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point.
  final pulumi.Input<String>? displayName;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [FleetArgs].
  /// [defaultClusterConfig] The default cluster configurations to apply across the fleet.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] A user-assigned display name of the Fleet. When present, it must be between 4 to 30 characters.
  /// [project] The ID of the project in which the resource belongs.
  const FleetArgs({
    this.defaultClusterConfig,
    this.deletionPolicy,
    this.displayName,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultClusterConfig': ?pulumi.Input.mapOptionalInputValue<FleetDefaultClusterConfig, Map<String, dynamic>>(defaultClusterConfig, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'project': ?project,
    };
  }

  factory FleetArgs.fromMap(Map<String, dynamic> map) {
    return FleetArgs(
      defaultClusterConfig: (() { final guardedValue = map['defaultClusterConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FleetDefaultClusterConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
