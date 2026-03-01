// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ml_v1_model_args_doc}
/// The set of arguments for Model.
/// {@endtemplate}
/// {@macro pulumi_ml_v1_model_args_doc}
class ModelArgs {
  /// Optional. The description specified for the model when it was created.
  final pulumi.Input<String>? description;
  /// `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a model from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform model updates in order to avoid race conditions: An `etag` is returned in the response to `GetModel`, and systems are expected to put that etag in the request to `UpdateModel` to ensure that their change will be applied to the model as intended.
  final pulumi.Input<String>? etag;
  /// Optional. One or more labels that you can add, to organize your models. Each label is a key-value pair, where both the key and the value are arbitrary strings that you supply. For more information, see the documentation on using labels. Note that this field is not updatable for mls1* models.
  final pulumi.Input<Map<String, String>>? labels;
  /// The name specified for the model when it was created. The model name must be unique within the project it is created in.
  final pulumi.Input<String>? name;
  /// Optional. If true, online prediction nodes send `stderr` and `stdout` streams to Cloud Logging. These can be more verbose than the standard access logs (see `onlinePredictionLogging`) and can incur higher cost. However, they are helpful for debugging. Note that [logs may incur a cost](/stackdriver/pricing), especially if your project receives prediction requests at a high QPS. Estimate your costs before enabling this option. Default is false.
  final pulumi.Input<bool>? onlinePredictionConsoleLogging;
  /// Optional. If true, online prediction access logs are sent to Cloud Logging. These logs are like standard server access logs, containing information like timestamp and latency for each request. Note that [logs may incur a cost](/stackdriver/pricing), especially if your project receives prediction requests at a high queries per second rate (QPS). Estimate your costs before enabling this option. Default is false.
  final pulumi.Input<bool>? onlinePredictionLogging;
  final pulumi.Input<String>? project;
  /// Optional. The list of regions where the model is going to be deployed. Only one region per model is supported. Defaults to 'us-central1' if nothing is set. See the available regions for AI Platform services. Note: * No matter where a model is deployed, it can always be accessed by users from anywhere, both for online and batch prediction. * The region for a batch prediction job is set by the region field when submitting the batch prediction job and does not take its value from this field.
  final pulumi.Input<List<String>>? regions;

  /// Creates a new [ModelArgs].
  /// [description] Optional. The description specified for the model when it was created.
  /// [etag] `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a model from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform model updates in order to avoid race conditions: An `etag` is returned in the response to `GetModel`, and systems are expected to put that etag in the request to `UpdateModel` to ensure that their change will be applied to the model as intended.
  /// [labels] Optional. One or more labels that you can add, to organize your models. Each label is a key-value pair, where both the key and the value are arbitrary strings that you supply. For more information, see the documentation on using labels. Note that this field is not updatable for mls1* models.
  /// [name] The name specified for the model when it was created. The model name must be unique within the project it is created in.
  /// [onlinePredictionConsoleLogging] Optional. If true, online prediction nodes send `stderr` and `stdout` streams to Cloud Logging. These can be more verbose than the standard access logs (see `onlinePredictionLogging`) and can incur higher cost. However, they are helpful for debugging. Note that [logs may incur a cost](/stackdriver/pricing), especially if your project receives prediction requests at a high QPS. Estimate your costs before enabling this option. Default is false.
  /// [onlinePredictionLogging] Optional. If true, online prediction access logs are sent to Cloud Logging. These logs are like standard server access logs, containing information like timestamp and latency for each request. Note that [logs may incur a cost](/stackdriver/pricing), especially if your project receives prediction requests at a high queries per second rate (QPS). Estimate your costs before enabling this option. Default is false.
  /// [project] Optional.
  /// [regions] Optional. The list of regions where the model is going to be deployed. Only one region per model is supported. Defaults to 'us-central1' if nothing is set. See the available regions for AI Platform services. Note: * No matter where a model is deployed, it can always be accessed by users from anywhere, both for online and batch prediction. * The region for a batch prediction job is set by the region field when submitting the batch prediction job and does not take its value from this field.
  ModelArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? etag,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? onlinePredictionConsoleLogging,
    pulumi.Output<bool>? onlinePredictionLogging,
    pulumi.Output<String>? project,
    pulumi.Output<List<String>>? regions,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      onlinePredictionConsoleLogging = pulumi.Input.asOptionalInput<bool>(onlinePredictionConsoleLogging),
      onlinePredictionLogging = pulumi.Input.asOptionalInput<bool>(onlinePredictionLogging),
      project = pulumi.Input.asOptionalInput<String>(project),
      regions = pulumi.Input.asOptionalInput<List<String>>(regions);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'etag': ?etag,
      'labels': ?labels,
      'name': ?name,
      'onlinePredictionConsoleLogging': ?onlinePredictionConsoleLogging,
      'onlinePredictionLogging': ?onlinePredictionLogging,
      'project': ?project,
      'regions': ?regions,
    };
  }

  factory ModelArgs.fromMap(Map<String, dynamic> map) {
    return ModelArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      onlinePredictionConsoleLogging: map['onlinePredictionConsoleLogging'] == null ? null : pulumi.Output.create<bool>(map['onlinePredictionConsoleLogging'] as bool),
      onlinePredictionLogging: map['onlinePredictionLogging'] == null ? null : pulumi.Output.create<bool>(map['onlinePredictionLogging'] as bool),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      regions: map['regions'] == null ? null : pulumi.Output.create<List<String>>((map['regions'] as List).cast<String>()),
    );
  }
}

