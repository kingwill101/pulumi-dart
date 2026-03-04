// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_ml_v1_version_response.dart';

/// Result data returned by getModel.
class GetModelResult {
  /// The default version of the model. This version will be used to handle prediction requests that do not specify a version. You can change the default version by calling projects.models.versions.setDefault.
  final GoogleCloudMlV1VersionResponse defaultVersion;

  /// Optional. The description specified for the model when it was created.
  final String description;

  /// `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a model from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform model updates in order to avoid race conditions: An `etag` is returned in the response to `GetModel`, and systems are expected to put that etag in the request to `UpdateModel` to ensure that their change will be applied to the model as intended.
  final String etag;

  /// Optional. One or more labels that you can add, to organize your models. Each label is a key-value pair, where both the key and the value are arbitrary strings that you supply. For more information, see the documentation on using labels. Note that this field is not updatable for mls1* models.
  final Map<String, String> labels;

  /// The name specified for the model when it was created. The model name must be unique within the project it is created in.
  final String name;

  /// Optional. If true, online prediction nodes send `stderr` and `stdout` streams to Cloud Logging. These can be more verbose than the standard access logs (see `onlinePredictionLogging`) and can incur higher cost. However, they are helpful for debugging. Note that [logs may incur a cost](/stackdriver/pricing), especially if your project receives prediction requests at a high QPS. Estimate your costs before enabling this option. Default is false.
  final bool onlinePredictionConsoleLogging;

  /// Optional. If true, online prediction access logs are sent to Cloud Logging. These logs are like standard server access logs, containing information like timestamp and latency for each request. Note that [logs may incur a cost](/stackdriver/pricing), especially if your project receives prediction requests at a high queries per second rate (QPS). Estimate your costs before enabling this option. Default is false.
  final bool onlinePredictionLogging;

  /// Optional. The list of regions where the model is going to be deployed. Only one region per model is supported. Defaults to 'us-central1' if nothing is set. See the available regions for AI Platform services. Note: * No matter where a model is deployed, it can always be accessed by users from anywhere, both for online and batch prediction. * The region for a batch prediction job is set by the region field when submitting the batch prediction job and does not take its value from this field.
  final List<String> regions;

  /// Creates a new [GetModelResult].
  /// [defaultVersion] The default version of the model. This version will be used to handle prediction requests that do not specify a version. You can change the default version by calling projects.models.versions.setDefault.
  /// [description] Optional. The description specified for the model when it was created.
  /// [etag] `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a model from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform model updates in order to avoid race conditions: An `etag` is returned in the response to `GetModel`, and systems are expected to put that etag in the request to `UpdateModel` to ensure that their change will be applied to the model as intended.
  /// [labels] Optional. One or more labels that you can add, to organize your models. Each label is a key-value pair, where both the key and the value are arbitrary strings that you supply. For more information, see the documentation on using labels. Note that this field is not updatable for mls1* models.
  /// [name] The name specified for the model when it was created. The model name must be unique within the project it is created in.
  /// [onlinePredictionConsoleLogging] Optional. If true, online prediction nodes send `stderr` and `stdout` streams to Cloud Logging. These can be more verbose than the standard access logs (see `onlinePredictionLogging`) and can incur higher cost. However, they are helpful for debugging. Note that [logs may incur a cost](/stackdriver/pricing), especially if your project receives prediction requests at a high QPS. Estimate your costs before enabling this option. Default is false.
  /// [onlinePredictionLogging] Optional. If true, online prediction access logs are sent to Cloud Logging. These logs are like standard server access logs, containing information like timestamp and latency for each request. Note that [logs may incur a cost](/stackdriver/pricing), especially if your project receives prediction requests at a high queries per second rate (QPS). Estimate your costs before enabling this option. Default is false.
  /// [regions] Optional. The list of regions where the model is going to be deployed. Only one region per model is supported. Defaults to 'us-central1' if nothing is set. See the available regions for AI Platform services. Note: * No matter where a model is deployed, it can always be accessed by users from anywhere, both for online and batch prediction. * The region for a batch prediction job is set by the region field when submitting the batch prediction job and does not take its value from this field.
  GetModelResult({
    required this.defaultVersion,
    required this.description,
    required this.etag,
    required this.labels,
    required this.name,
    required this.onlinePredictionConsoleLogging,
    required this.onlinePredictionLogging,
    required this.regions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultVersion': defaultVersion.toMap(),
      'description': description,
      'etag': etag,
      'labels': labels,
      'name': name,
      'onlinePredictionConsoleLogging': onlinePredictionConsoleLogging,
      'onlinePredictionLogging': onlinePredictionLogging,
      'regions': regions,
    };
  }

  factory GetModelResult.fromMap(Map<String, dynamic> map) {
    return GetModelResult(
      defaultVersion: GoogleCloudMlV1VersionResponse.fromMap(
        (map['defaultVersion']! as Map).cast<String, dynamic>(),
      ),
      description: map['description'] as String,
      etag: map['etag'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      onlinePredictionConsoleLogging:
          map['onlinePredictionConsoleLogging'] as bool,
      onlinePredictionLogging: map['onlinePredictionLogging'] as bool,
      regions: (map['regions'] as List).cast<String>(),
    );
  }
}
