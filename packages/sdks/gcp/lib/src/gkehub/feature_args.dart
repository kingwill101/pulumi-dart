// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_fleet_default_member_config.dart';
import 'feature_spec.dart';

/// {@template pulumi_gkehub_feature_feature_args_doc}
/// The set of arguments for Feature.
/// {@endtemplate}
/// {@macro pulumi_gkehub_feature_feature_args_doc}
class FeatureArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Optional. Fleet Default Membership Configuration.
  /// Structure is documented below.
  final pulumi.Input<FeatureFleetDefaultMemberConfig?>? fleetDefaultMemberConfig;
  /// GCP labels for this Feature.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The location for the resource
  final pulumi.Input<String> location;
  /// The full, unique name of this Feature resource
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Optional. Hub-wide Feature configuration. If this Feature does not support any Hub-wide configuration, this field may be unused.
  /// Structure is documented below.
  final pulumi.Input<FeatureSpec?>? spec;

  /// Creates a new [FeatureArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [fleetDefaultMemberConfig] Optional. Fleet Default Membership Configuration.
  /// [labels] GCP labels for this Feature.
  /// [location] The location for the resource
  /// [name] The full, unique name of this Feature resource
  /// [project] The ID of the project in which the resource belongs.
  /// [spec] Optional. Hub-wide Feature configuration. If this Feature does not support any Hub-wide configuration, this field may be unused.
  const FeatureArgs({
    this.deletionPolicy,
    this.fleetDefaultMemberConfig,
    this.labels,
    required this.location,
    this.name,
    this.project,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'fleetDefaultMemberConfig': ?pulumi.Input.mapOptionalInputValue<FeatureFleetDefaultMemberConfig, Map<String, dynamic>>(fleetDefaultMemberConfig, (value) => value.toMap()),
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'project': ?project,
      'spec': ?pulumi.Input.mapOptionalInputValue<FeatureSpec, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory FeatureArgs.fromMap(Map<String, dynamic> map) {
    return FeatureArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fleetDefaultMemberConfig: (() { final guardedValue = map['fleetDefaultMemberConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeatureFleetDefaultMemberConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spec: (() { final guardedValue = map['spec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeatureSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
