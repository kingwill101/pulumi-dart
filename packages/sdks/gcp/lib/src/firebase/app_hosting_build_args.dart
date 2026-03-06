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
  const AppHostingBuildArgs({
    this.annotations,
    required this.backend,
    required this.buildId,
    this.displayName,
    this.labels,
    required this.location,
    this.project,
    required this.source,
  });

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
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      backend: pulumi.Input.fromValue(map['backend'] as String),
      buildId: pulumi.Input.fromValue(map['buildId'] as String),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: pulumi.Input.fromValue(AppHostingBuildSource.fromMap((map['source']! as Map).cast<String, dynamic>())),
    );
  }
}

