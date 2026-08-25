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
  final pulumi.Input<String?>? project;

  /// Creates a new [GetFeatureArgs].
  /// [location] The location for the GKE Hub Feature.
  /// [name] The name of the feature you want to know the status of.
  /// [project] The ID of the project in which the resource belongs.
  const GetFeatureArgs({
    required this.location,
    required this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'name': name,
      'project': ?project,
    };
  }

  factory GetFeatureArgs.fromMap(Map<String, dynamic> map) {
    return GetFeatureArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
