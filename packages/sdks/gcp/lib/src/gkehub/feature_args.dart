// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_fleet_default_member_config.dart';
import 'feature_spec.dart';

/// {@template pulumi_gkehub_feature_feature_args_doc}
/// The set of arguments for Feature.
/// {@endtemplate}
/// {@macro pulumi_gkehub_feature_feature_args_doc}
class FeatureArgs {
  /// Optional. Fleet Default Membership Configuration.
  /// Structure is documented below.
  final pulumi.Input<FeatureFleetDefaultMemberConfig>? fleetDefaultMemberConfig;
  /// GCP labels for this Feature.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location for the resource
  final pulumi.Input<String> location;
  /// The full, unique name of this Feature resource
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Optional. Hub-wide Feature configuration. If this Feature does not support any Hub-wide configuration, this field may be unused.
  /// Structure is documented below.
  final pulumi.Input<FeatureSpec>? spec;

  /// Creates a new [FeatureArgs].
  /// [fleetDefaultMemberConfig] Optional. Fleet Default Membership Configuration.
  /// [labels] GCP labels for this Feature.
  /// [location] The location for the resource
  /// [name] The full, unique name of this Feature resource
  /// [project] The ID of the project in which the resource belongs.
  /// [spec] Optional. Hub-wide Feature configuration. If this Feature does not support any Hub-wide configuration, this field may be unused.
  FeatureArgs({
    this.fleetDefaultMemberConfig,
    this.labels,
    required this.location,
    this.name,
    this.project,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
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
      fleetDefaultMemberConfig: map['fleetDefaultMemberConfig'] == null ? null : (FeatureFleetDefaultMemberConfig.fromMap((map['fleetDefaultMemberConfig']! as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      spec: map['spec'] == null ? null : (FeatureSpec.fromMap((map['spec']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

