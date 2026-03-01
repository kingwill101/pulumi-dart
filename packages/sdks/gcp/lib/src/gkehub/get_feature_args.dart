// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_get_feature_get_feature_args_doc}
/// Arguments for getFeature.
/// {@endtemplate}
/// {@macro pulumi_gkehub_get_feature_get_feature_args_doc}
class GetFeatureArgs {
  /// The location for the GKE Hub Feature.
  final pulumi.Input<String> location;
  /// The name of the feature you want to know the status of.
  final pulumi.Input<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetFeatureArgs].
  /// [location] The location for the GKE Hub Feature.
  /// [name] The name of the feature you want to know the status of.
  /// [project] The ID of the project in which the resource belongs.
  GetFeatureArgs({
    required pulumi.Output<String> location,
    required pulumi.Output<String> name,
    pulumi.Output<String>? project,
  }) :
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'name': name,
      'project': ?project,
    };
  }

  factory GetFeatureArgs.fromMap(Map<String, dynamic> map) {
    return GetFeatureArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

