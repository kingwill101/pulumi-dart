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
  GetTemplateArgs({
    required pulumi.Output<String> gcsPath,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    pulumi.Output<String>? view,
  }) :
      gcsPath = pulumi.Input.asInput<String>(gcsPath),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      view = pulumi.Input.asOptionalInput<String>(view);

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
      gcsPath: pulumi.Output.create<String>(map['gcsPath'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      view: map['view'] == null ? null : pulumi.Output.create<String>(map['view'] as String),
    );
  }
}

