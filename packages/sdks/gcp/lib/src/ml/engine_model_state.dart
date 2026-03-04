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
    this.defaultVersion,
    this.description,
    this.effectiveLabels,
    this.labels,
    this.name,
    this.onlinePredictionConsoleLogging,
    this.onlinePredictionLogging,
    this.project,
    this.pulumiLabels,
    this.regions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultVersion':
          ?pulumi.Input.mapOptionalInputValue<
            EngineModelDefaultVersion,
            Map<String, dynamic>
          >(defaultVersion, (value) => value.toMap()),
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
      defaultVersion: (() {
        final guardedValue = map['defaultVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EngineModelDefaultVersion.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      effectiveLabels: (() {
        final guardedValue = map['effectiveLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      onlinePredictionConsoleLogging: (() {
        final guardedValue = map['onlinePredictionConsoleLogging'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      onlinePredictionLogging: (() {
        final guardedValue = map['onlinePredictionLogging'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pulumiLabels: (() {
        final guardedValue = map['pulumiLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      regions: (() {
        final guardedValue = map['regions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
