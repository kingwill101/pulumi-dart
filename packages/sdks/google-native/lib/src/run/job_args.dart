// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_run_v2_binary_authorization.dart';
import 'google_cloud_run_v2_execution_template.dart';
import 'job_launch_stage.dart';

/// {@template pulumi_run_v2_job_args_doc}
/// The set of arguments for Job.
/// {@endtemplate}
/// {@macro pulumi_run_v2_job_args_doc}
class JobArgs {
  /// Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected on new resources. All system annotations in v1 now have a corresponding field in v2 Job. This field follows Kubernetes annotations' namespacing, limits, and rules.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Settings for the Binary Authorization feature.
  final pulumi.Input<GoogleCloudRunV2BinaryAuthorization>? binaryAuthorization;

  /// Arbitrary identifier for the API client.
  final pulumi.Input<String>? client;

  /// Arbitrary version identifier for the API client.
  final pulumi.Input<String>? clientVersion;

  /// Required. The unique identifier for the Job. The name of the job becomes {parent}/jobs/{job_id}.
  final pulumi.Input<String> jobId;

  /// Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels. Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 Job.
  final pulumi.Input<Map<String, String>>? labels;

  /// The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/terms/launch-stages). Cloud Run supports `ALPHA`, `BETA`, and `GA`. If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features. For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
  final pulumi.Input<JobLaunchStage>? launchStage;
  final pulumi.Input<String>? location;

  /// The fully qualified name of this Job. Format: projects/{project}/locations/{location}/jobs/{job}
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// The template used to create executions for this Job.
  final pulumi.Input<GoogleCloudRunV2ExecutionTemplate> template;

  /// Creates a new [JobArgs].
  /// [annotations] Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected on new resources. All system annotations in v1 now have a corresponding field in v2 Job. This field follows Kubernetes annotations' namespacing, limits, and rules.
  /// [binaryAuthorization] Settings for the Binary Authorization feature.
  /// [client] Arbitrary identifier for the API client.
  /// [clientVersion] Arbitrary version identifier for the API client.
  /// [jobId] Required. The unique identifier for the Job. The name of the job becomes {parent}/jobs/{job_id}.
  /// [labels] Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels. Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 Job.
  /// [launchStage] The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/terms/launch-stages). Cloud Run supports `ALPHA`, `BETA`, and `GA`. If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features. For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
  /// [location] Optional.
  /// [name] The fully qualified name of this Job. Format: projects/{project}/locations/{location}/jobs/{job}
  /// [project] Optional.
  /// [template] The template used to create executions for this Job.
  JobArgs({
    this.annotations,
    this.binaryAuthorization,
    this.client,
    this.clientVersion,
    required this.jobId,
    this.labels,
    this.launchStage,
    this.location,
    this.name,
    this.project,
    required this.template,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'binaryAuthorization':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudRunV2BinaryAuthorization,
            Map<String, dynamic>
          >(binaryAuthorization, (value) => value.toMap()),
      'client': ?client,
      'clientVersion': ?clientVersion,
      'jobId': jobId,
      'labels': ?labels,
      'launchStage':
          ?pulumi.Input.mapOptionalInputValue<JobLaunchStage, String>(
            launchStage,
            (value) => value.wireValue,
          ),
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'template':
          pulumi.Input.mapInputValue<
            GoogleCloudRunV2ExecutionTemplate,
            Map<String, dynamic>
          >(template, (value) => value.toMap()),
    };
  }

  factory JobArgs.fromMap(Map<String, dynamic> map) {
    return JobArgs(
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      binaryAuthorization: (() {
        final guardedValue = map['binaryAuthorization'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudRunV2BinaryAuthorization.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      client: (() {
        final guardedValue = map['client'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientVersion: (() {
        final guardedValue = map['clientVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      jobId: pulumi.Input.fromValue(map['jobId'] as String),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      launchStage: (() {
        final guardedValue = map['launchStage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JobLaunchStage.fromValue(guardedValue as String),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      template: pulumi.Input.fromValue(
        GoogleCloudRunV2ExecutionTemplate.fromMap(
          (map['template']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
