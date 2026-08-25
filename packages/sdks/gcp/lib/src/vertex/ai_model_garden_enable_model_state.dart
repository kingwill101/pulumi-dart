// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AiModelGardenEnableModel resources.
class AiModelGardenEnableModelState {
  /// Output only. The result of the model enablement.
  final pulumi.Input<String?>? enablementState;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Output only. The publisher endpoint that the project is enabled for.
  /// Format:
  /// `projects/{project}/locations/{location}/publishers/{publisher}/models/{publisher_model}`.
  final pulumi.Input<String?>? publisherEndpoint;
  /// The resource name of the Model Garden publisher model to enable.
  /// Format: `publishers/{publisher}/models/{publisher_model}`, optionally
  /// with a version suffix, for example
  /// `publishers/google/models/paligemma@paligemma-224-float32`.
  final pulumi.Input<String?>? publisherModelName;

  /// Creates a new [AiModelGardenEnableModelState].
  /// [enablementState] Output only. The result of the model enablement.
  /// [project] The ID of the project in which the resource belongs.
  /// [publisherEndpoint] Output only. The publisher endpoint that the project is enabled for.
  /// [publisherModelName] The resource name of the Model Garden publisher model to enable.
  const AiModelGardenEnableModelState({
    this.enablementState,
    this.project,
    this.publisherEndpoint,
    this.publisherModelName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablementState': ?enablementState,
      'project': ?project,
      'publisherEndpoint': ?publisherEndpoint,
      'publisherModelName': ?publisherModelName,
    };
  }

  factory AiModelGardenEnableModelState.fromMap(Map<String, dynamic> map) {
    return AiModelGardenEnableModelState(
      enablementState: (() { final guardedValue = map['enablementState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publisherEndpoint: (() { final guardedValue = map['publisherEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publisherModelName: (() { final guardedValue = map['publisherModelName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
