// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'engine_model_default_version.dart';

/// Input properties used for looking up and filtering EngineModel resources.
class EngineModelState {
  /// The default version of the model. This version will be used to handle
  /// prediction requests that do not specify a version.
  /// Structure is documented below.
  final pulumi.Input<EngineModelDefaultVersion>? defaultVersion;
  /// The description specified for the model when it was created.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// One or more labels that you can add, to organize your models.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The name specified for the model.
  final pulumi.Input<String>? name;
  /// If true, online prediction nodes send stderr and stdout streams to Stackdriver Logging
  final pulumi.Input<bool>? onlinePredictionConsoleLogging;
  /// If true, online prediction access logs are sent to StackDriver Logging.
  final pulumi.Input<bool>? onlinePredictionLogging;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The list of regions where the model is going to be deployed.
  /// Currently only one region per model is supported
  final pulumi.Input<String>? regions;

  /// Creates a new [EngineModelState].
  /// [defaultVersion] The default version of the model. This version will be used to handle
  /// [description] The description specified for the model when it was created.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] One or more labels that you can add, to organize your models.
  /// [name] The name specified for the model.
  /// [onlinePredictionConsoleLogging] If true, online prediction nodes send stderr and stdout streams to Stackdriver Logging
  /// [onlinePredictionLogging] If true, online prediction access logs are sent to StackDriver Logging.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [regions] The list of regions where the model is going to be deployed.
  EngineModelState({
    pulumi.Output<EngineModelDefaultVersion>? defaultVersion,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? onlinePredictionConsoleLogging,
    pulumi.Output<bool>? onlinePredictionLogging,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? regions,
  }) :
      defaultVersion = pulumi.Input.asOptionalInput<EngineModelDefaultVersion>(defaultVersion),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      onlinePredictionConsoleLogging = pulumi.Input.asOptionalInput<bool>(onlinePredictionConsoleLogging),
      onlinePredictionLogging = pulumi.Input.asOptionalInput<bool>(onlinePredictionLogging),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      regions = pulumi.Input.asOptionalInput<String>(regions);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultVersion': ?pulumi.Input.mapOptionalInputValue<EngineModelDefaultVersion, Map<String, dynamic>>(defaultVersion, (value) => value.toMap()),
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'name': ?name,
      'onlinePredictionConsoleLogging': ?onlinePredictionConsoleLogging,
      'onlinePredictionLogging': ?onlinePredictionLogging,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'regions': ?regions,
    };
  }

  factory EngineModelState.fromMap(Map<String, dynamic> map) {
    return EngineModelState(
      defaultVersion: map['defaultVersion'] == null ? null : pulumi.Output.create<EngineModelDefaultVersion>(EngineModelDefaultVersion.fromMap((map['defaultVersion'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      onlinePredictionConsoleLogging: map['onlinePredictionConsoleLogging'] == null ? null : pulumi.Output.create<bool>(map['onlinePredictionConsoleLogging'] as bool),
      onlinePredictionLogging: map['onlinePredictionLogging'] == null ? null : pulumi.Output.create<bool>(map['onlinePredictionLogging'] as bool),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      regions: map['regions'] == null ? null : pulumi.Output.create<String>(map['regions'] as String),
    );
  }
}

