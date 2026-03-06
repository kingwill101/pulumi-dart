// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataflow_v1b3_get_template_args_doc}
/// Arguments for getTemplate.
/// {@endtemplate}
/// {@macro pulumi_dataflow_v1b3_get_template_args_doc}
class GetTemplateArgs {
  final pulumi.Input<String> gcsPath;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;

  /// Creates a new [GetTemplateArgs].
  /// [gcsPath] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [view] Optional.
  const GetTemplateArgs({
    required this.gcsPath,
    required this.location,
    this.project,
    this.view,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcsPath': gcsPath,
      'location': location,
      'project': ?project,
      'view': ?view,
    };
  }

  factory GetTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetTemplateArgs(
      gcsPath: pulumi.Input.fromValue(map['gcsPath'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      view: (() { final guardedValue = map['view']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

