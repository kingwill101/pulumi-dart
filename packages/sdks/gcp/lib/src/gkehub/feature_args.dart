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
    pulumi.Output<FeatureFleetDefaultMemberConfig>? fleetDefaultMemberConfig,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<FeatureSpec>? spec,
  }) :
      fleetDefaultMemberConfig = pulumi.Input.asOptionalInput<FeatureFleetDefaultMemberConfig>(fleetDefaultMemberConfig),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      spec = pulumi.Input.asOptionalInput<FeatureSpec>(spec);

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
      fleetDefaultMemberConfig: map['fleetDefaultMemberConfig'] == null ? null : pulumi.Output.create<FeatureFleetDefaultMemberConfig>(FeatureFleetDefaultMemberConfig.fromMap((map['fleetDefaultMemberConfig'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      spec: map['spec'] == null ? null : pulumi.Output.create<FeatureSpec>(FeatureSpec.fromMap((map['spec'] as Map).cast<String, dynamic>())),
    );
  }
}

