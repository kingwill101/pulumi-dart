// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v2beta1_version_dialogflow_v2beta1_args_doc}
/// The set of arguments for Version.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2beta1_version_dialogflow_v2beta1_args_doc}
class VersionDialogflowV2beta1Args {
  /// Optional. The developer-provided description of this version.
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Creates a new [VersionDialogflowV2beta1Args].
  /// [description] Optional. The developer-provided description of this version.
  /// [location] Optional.
  /// [project] Optional.
  VersionDialogflowV2beta1Args({
    this.description,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'location': ?location,
      'project': ?project,
    };
  }

  factory VersionDialogflowV2beta1Args.fromMap(Map<String, dynamic> map) {
    return VersionDialogflowV2beta1Args(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

