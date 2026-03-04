// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_pool_binary_authorization.dart';
import 'worker_pool_instance_split.dart';
import 'worker_pool_scaling.dart';
import 'worker_pool_template.dart';

/// {@template pulumi_cloudrunv2_worker_pool_worker_pool_args_doc}
/// The set of arguments for WorkerPool.
/// {@endtemplate}
/// {@macro pulumi_cloudrunv2_worker_pool_worker_pool_args_doc}
class WorkerPoolArgs {
  /// Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  /// Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected in new resources.
  /// All system annotations in v1 now have a corresponding field in v2 WorkerPool.
  /// This field follows Kubernetes annotations' namespacing, limits, and rules.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Settings for the Binary Authorization feature.
  /// Structure is documented below.
  final pulumi.Input<WorkerPoolBinaryAuthorization>? binaryAuthorization;

  /// Arbitrary identifier for the API client.
  final pulumi.Input<String>? client;

  /// Arbitrary version identifier for the API client.
  final pulumi.Input<String>? clientVersion;

  /// (Optional, Deprecated)
  /// One or more custom audiences that you want this worker pool to support. Specify each custom audience as the full URL in a string. The custom audiences are encoded in the token and used to authenticate requests.
  /// For more information, see https://cloud.google.com/run/docs/configuring/custom-audiences.
  ///
  /// &gt; **Warning:** `custom_audiences` is deprecated since it is not applicable to WorkerPool resource and will be removed in a future major release.
  final pulumi.Input<List<String>>? customAudiences;
  final pulumi.Input<bool>? deletionProtection;

  /// User-provided description of the WorkerPool. This field currently has a 512-character limit.
  final pulumi.Input<String>? description;

  /// Specifies how to distribute instances over a collection of Revisions belonging to the WorkerPool. If instance split is empty or not provided, defaults to 100% instances assigned to the latest Ready Revision.
  /// Structure is documented below.
  final pulumi.Input<List<WorkerPoolInstanceSplit>>? instanceSplits;

  /// Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component,
  /// environment, state, etc. For more information, visit https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels.
  /// Cloud Run API v2 does not support labels with  `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected.
  /// All system labels in v1 now have a corresponding field in v2 WorkerPool.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/products#product-launch-stages). Cloud Run supports ALPHA, BETA, and GA.
  /// If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features.
  /// For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
  /// Possible values are: `UNIMPLEMENTED`, `PRELAUNCH`, `EARLY_ACCESS`, `ALPHA`, `BETA`, `GA`, `DEPRECATED`.
  final pulumi.Input<String>? launchStage;

  /// The location of the cloud run worker pool
  final pulumi.Input<String> location;

  /// Name of the WorkerPool.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Scaling settings that apply to the worker pool.
  /// Structure is documented below.
  final pulumi.Input<WorkerPoolScaling>? scaling;

  /// The template used to create revisions for this WorkerPool.
  /// Structure is documented below.
  final pulumi.Input<WorkerPoolTemplate> template;

  /// Creates a new [WorkerPoolArgs].
  /// [annotations] Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  /// [binaryAuthorization] Settings for the Binary Authorization feature.
  /// [client] Arbitrary identifier for the API client.
  /// [clientVersion] Arbitrary version identifier for the API client.
  /// [customAudiences] (Optional, Deprecated)
  /// [deletionProtection] Optional.
  /// [description] User-provided description of the WorkerPool. This field currently has a 512-character limit.
  /// [instanceSplits] Specifies how to distribute instances over a collection of Revisions belonging to the WorkerPool. If instance split is empty or not provided, defaults to 100% instances assigned to the latest Ready Revision.
  /// [labels] Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component,
  /// [launchStage] The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/products#product-launch-stages). Cloud Run supports ALPHA, BETA, and GA.
  /// [location] The location of the cloud run worker pool
  /// [name] Name of the WorkerPool.
  /// [project] The ID of the project in which the resource belongs.
  /// [scaling] Scaling settings that apply to the worker pool.
  /// [template] The template used to create revisions for this WorkerPool.
  WorkerPoolArgs({
    this.annotations,
    this.binaryAuthorization,
    this.client,
    this.clientVersion,
    this.customAudiences,
    this.deletionProtection,
    this.description,
    this.instanceSplits,
    this.labels,
    this.launchStage,
    required this.location,
    this.name,
    this.project,
    this.scaling,
    required this.template,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'binaryAuthorization':
          ?pulumi.Input.mapOptionalInputValue<
            WorkerPoolBinaryAuthorization,
            Map<String, dynamic>
          >(binaryAuthorization, (value) => value.toMap()),
      'client': ?client,
      'clientVersion': ?clientVersion,
      'customAudiences': ?customAudiences,
      'deletionProtection': ?deletionProtection,
      'description': ?description,
      'instanceSplits':
          ?pulumi.Input.mapOptionalInputValue<
            List<WorkerPoolInstanceSplit>,
            List<Map<String, dynamic>>
          >(
            instanceSplits,
            (value) =>
                pulumi.Input.encodeList<
                  WorkerPoolInstanceSplit,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'labels': ?labels,
      'launchStage': ?launchStage,
      'location': location,
      'name': ?name,
      'project': ?project,
      'scaling':
          ?pulumi.Input.mapOptionalInputValue<
            WorkerPoolScaling,
            Map<String, dynamic>
          >(scaling, (value) => value.toMap()),
      'template':
          pulumi.Input.mapInputValue<WorkerPoolTemplate, Map<String, dynamic>>(
            template,
            (value) => value.toMap(),
          ),
    };
  }

  factory WorkerPoolArgs.fromMap(Map<String, dynamic> map) {
    return WorkerPoolArgs(
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
          WorkerPoolBinaryAuthorization.fromMap(
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
      customAudiences: (() {
        final guardedValue = map['customAudiences'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      deletionProtection: (() {
        final guardedValue = map['deletionProtection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceSplits: (() {
        final guardedValue = map['instanceSplits'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<WorkerPoolInstanceSplit>(
            guardedValue,
            (value) => WorkerPoolInstanceSplit.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
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
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: pulumi.Input.fromValue(map['location'] as String),
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
      scaling: (() {
        final guardedValue = map['scaling'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WorkerPoolScaling.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      template: pulumi.Input.fromValue(
        WorkerPoolTemplate.fromMap(
          (map['template']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
