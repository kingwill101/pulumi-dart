// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_hosting_build_source.dart';

/// {@template pulumi_firebase_app_hosting_build_app_hosting_build_args_doc}
/// The set of arguments for AppHostingBuild.
/// {@endtemplate}
/// {@macro pulumi_firebase_app_hosting_build_app_hosting_build_args_doc}
class AppHostingBuildArgs {
  /// Unstructured key value map that may be set by external tools to
  /// store and arbitrary metadata. They are not queryable and should be
  /// preserved when modifying objects.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// The ID of the Backend that this Build applies to
  final pulumi.Input<String> backend;
  /// The user-specified ID of the build being created.
  final pulumi.Input<String> buildId;
  /// Human-readable name. 63 character limit.
  final pulumi.Input<String>? displayName;
  /// Unstructured key value map that can be used to organize and categorize
  /// objects.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the Backend that this Build applies to
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The source for the build.
  /// Structure is documented below.
  final pulumi.Input<AppHostingBuildSource> source;

  /// Creates a new [AppHostingBuildArgs].
  /// [annotations] Unstructured key value map that may be set by external tools to
  /// [backend] The ID of the Backend that this Build applies to
  /// [buildId] The user-specified ID of the build being created.
  /// [displayName] Human-readable name. 63 character limit.
  /// [labels] Unstructured key value map that can be used to organize and categorize
  /// [location] The location of the Backend that this Build applies to
  /// [project] The ID of the project in which the resource belongs.
  /// [source] The source for the build.
  AppHostingBuildArgs({
    pulumi.Output<Map<String, String>>? annotations,
    required pulumi.Output<String> backend,
    required pulumi.Output<String> buildId,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<AppHostingBuildSource> source,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      backend = pulumi.Input.asInput<String>(backend),
      buildId = pulumi.Input.asInput<String>(buildId),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      source = pulumi.Input.asInput<AppHostingBuildSource>(source);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'backend': backend,
      'buildId': buildId,
      'displayName': ?displayName,
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'source': pulumi.Input.mapInputValue<AppHostingBuildSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory AppHostingBuildArgs.fromMap(Map<String, dynamic> map) {
    return AppHostingBuildArgs(
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      backend: pulumi.Output.create<String>(map['backend'] as String),
      buildId: pulumi.Output.create<String>(map['buildId'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      source: pulumi.Output.create<AppHostingBuildSource>(AppHostingBuildSource.fromMap((map['source'] as Map).cast<String, dynamic>())),
    );
  }
}

