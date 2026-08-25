// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vertex_ai_model_garden_enable_model_ai_model_garden_enable_model_args_doc}
/// The set of arguments for AiModelGardenEnableModel.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_model_garden_enable_model_ai_model_garden_enable_model_args_doc}
class AiModelGardenEnableModelArgs {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The resource name of the Model Garden publisher model to enable.
  /// Format: `publishers/{publisher}/models/{publisher_model}`, optionally
  /// with a version suffix, for example
  /// `publishers/google/models/paligemma@paligemma-224-float32`.
  final pulumi.Input<String> publisherModelName;

  /// Creates a new [AiModelGardenEnableModelArgs].
  /// [project] The ID of the project in which the resource belongs.
  /// [publisherModelName] The resource name of the Model Garden publisher model to enable.
  const AiModelGardenEnableModelArgs({
    this.project,
    required this.publisherModelName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'publisherModelName': publisherModelName,
    };
  }

  factory AiModelGardenEnableModelArgs.fromMap(Map<String, dynamic> map) {
    return AiModelGardenEnableModelArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publisherModelName: pulumi.Input.fromValue(map['publisherModelName'] as String),
    );
  }
}
