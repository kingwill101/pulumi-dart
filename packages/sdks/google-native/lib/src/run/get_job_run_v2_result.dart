// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_run_v2_binary_authorization_response.dart';
import 'google_cloud_run_v2_condition_response.dart';
import 'google_cloud_run_v2_execution_reference_response.dart';
import 'google_cloud_run_v2_execution_template_response.dart';

/// Result data returned by getJob.
class GetJobRunV2Result {
  /// Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected on new resources. All system annotations in v1 now have a corresponding field in v2 Job. This field follows Kubernetes annotations' namespacing, limits, and rules.
  final Map<String, String> annotations;
  /// Settings for the Binary Authorization feature.
  final GoogleCloudRunV2BinaryAuthorizationResponse binaryAuthorization;
  /// Arbitrary identifier for the API client.
  final String client;
  /// Arbitrary version identifier for the API client.
  final String clientVersion;
  /// The Conditions of all other associated sub-resources. They contain additional diagnostics information in case the Job does not reach its desired state. See comments in `reconciling` for additional information on reconciliation process in Cloud Run.
  final List<GoogleCloudRunV2ConditionResponse> conditions;
  /// The creation time.
  final String createTime;
  /// Email address of the authenticated creator.
  final String creator;
  /// The deletion time.
  final String deleteTime;
  /// A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
  final String etag;
  /// Number of executions created for this job.
  final int executionCount;
  /// For a deleted resource, the time after which it will be permamently deleted.
  final String expireTime;
  /// A number that monotonically increases every time the user modifies the desired state.
  final String generation;
  /// Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels. Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 Job.
  final Map<String, String> labels;
  /// Email address of the last authenticated modifier.
  final String lastModifier;
  /// Name of the last created execution.
  final GoogleCloudRunV2ExecutionReferenceResponse latestCreatedExecution;
  /// The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/terms/launch-stages). Cloud Run supports `ALPHA`, `BETA`, and `GA`. If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features. For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
  final String launchStage;
  /// The fully qualified name of this Job. Format: projects/{project}/locations/{location}/jobs/{job}
  final String name;
  /// The generation of this Job. See comments in `reconciling` for additional information on reconciliation process in Cloud Run.
  final String observedGeneration;
  /// Returns true if the Job is currently being acted upon by the system to bring it into the desired state. When a new Job is created, or an existing one is updated, Cloud Run will asynchronously perform all necessary steps to bring the Job to the desired state. This process is called reconciliation. While reconciliation is in process, `observed_generation` and `latest_succeeded_execution`, will have transient values that might mismatch the intended state: Once reconciliation is over (and this field is false), there are two possible outcomes: reconciliation succeeded and the state matches the Job, or there was an error, and reconciliation failed. This state can be found in `terminal_condition.state`. If reconciliation succeeded, the following fields will match: `observed_generation` and `generation`, `latest_succeeded_execution` and `latest_created_execution`. If reconciliation failed, `observed_generation` and `latest_succeeded_execution` will have the state of the last succeeded execution or empty for newly created Job. Additional information on the failure can be found in `terminal_condition` and `conditions`.
  final bool reconciling;
  /// Reserved for future use.
  final bool satisfiesPzs;
  /// The template used to create executions for this Job.
  final GoogleCloudRunV2ExecutionTemplateResponse template;
  /// The Condition of this Job, containing its readiness status, and detailed error information in case it did not reach the desired state.
  final GoogleCloudRunV2ConditionResponse terminalCondition;
  /// Server assigned unique identifier for the Execution. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  final String uid;
  /// The last-modified time.
  final String updateTime;

  /// Creates a new [GetJobRunV2Result].
  /// [annotations] Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected on new resources. All system annotations in v1 now have a corresponding field in v2 Job. This field follows Kubernetes annotations' namespacing, limits, and rules.
  /// [binaryAuthorization] Settings for the Binary Authorization feature.
  /// [client] Arbitrary identifier for the API client.
  /// [clientVersion] Arbitrary version identifier for the API client.
  /// [conditions] The Conditions of all other associated sub-resources. They contain additional diagnostics information in case the Job does not reach its desired state. See comments in `reconciling` for additional information on reconciliation process in Cloud Run.
  /// [createTime] The creation time.
  /// [creator] Email address of the authenticated creator.
  /// [deleteTime] The deletion time.
  /// [etag] A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
  /// [executionCount] Number of executions created for this job.
  /// [expireTime] For a deleted resource, the time after which it will be permamently deleted.
  /// [generation] A number that monotonically increases every time the user modifies the desired state.
  /// [labels] Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels. Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 Job.
  /// [lastModifier] Email address of the last authenticated modifier.
  /// [latestCreatedExecution] Name of the last created execution.
  /// [launchStage] The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/terms/launch-stages). Cloud Run supports `ALPHA`, `BETA`, and `GA`. If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features. For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
  /// [name] The fully qualified name of this Job. Format: projects/{project}/locations/{location}/jobs/{job}
  /// [observedGeneration] The generation of this Job. See comments in `reconciling` for additional information on reconciliation process in Cloud Run.
  /// [reconciling] Returns true if the Job is currently being acted upon by the system to bring it into the desired state. When a new Job is created, or an existing one is updated, Cloud Run will asynchronously perform all necessary steps to bring the Job to the desired state. This process is called reconciliation. While reconciliation is in process, `observed_generation` and `latest_succeeded_execution`, will have transient values that might mismatch the intended state: Once reconciliation is over (and this field is false), there are two possible outcomes: reconciliation succeeded and the state matches the Job, or there was an error, and reconciliation failed. This state can be found in `terminal_condition.state`. If reconciliation succeeded, the following fields will match: `observed_generation` and `generation`, `latest_succeeded_execution` and `latest_created_execution`. If reconciliation failed, `observed_generation` and `latest_succeeded_execution` will have the state of the last succeeded execution or empty for newly created Job. Additional information on the failure can be found in `terminal_condition` and `conditions`.
  /// [satisfiesPzs] Reserved for future use.
  /// [template] The template used to create executions for this Job.
  /// [terminalCondition] The Condition of this Job, containing its readiness status, and detailed error information in case it did not reach the desired state.
  /// [uid] Server assigned unique identifier for the Execution. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  /// [updateTime] The last-modified time.
  const GetJobRunV2Result({
    required this.annotations,
    required this.binaryAuthorization,
    required this.client,
    required this.clientVersion,
    required this.conditions,
    required this.createTime,
    required this.creator,
    required this.deleteTime,
    required this.etag,
    required this.executionCount,
    required this.expireTime,
    required this.generation,
    required this.labels,
    required this.lastModifier,
    required this.latestCreatedExecution,
    required this.launchStage,
    required this.name,
    required this.observedGeneration,
    required this.reconciling,
    required this.satisfiesPzs,
    required this.template,
    required this.terminalCondition,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': annotations,
      'binaryAuthorization': binaryAuthorization.toMap(),
      'client': client,
      'clientVersion': clientVersion,
      'conditions': pulumi.Input.encodeList<GoogleCloudRunV2ConditionResponse, Map<String, dynamic>>(conditions, (value) => value.toMap()),
      'createTime': createTime,
      'creator': creator,
      'deleteTime': deleteTime,
      'etag': etag,
      'executionCount': executionCount,
      'expireTime': expireTime,
      'generation': generation,
      'labels': labels,
      'lastModifier': lastModifier,
      'latestCreatedExecution': latestCreatedExecution.toMap(),
      'launchStage': launchStage,
      'name': name,
      'observedGeneration': observedGeneration,
      'reconciling': reconciling,
      'satisfiesPzs': satisfiesPzs,
      'template': template.toMap(),
      'terminalCondition': terminalCondition.toMap(),
      'uid': uid,
      'updateTime': updateTime,
    };
  }

  factory GetJobRunV2Result.fromMap(Map<String, dynamic> map) {
    return GetJobRunV2Result(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      binaryAuthorization: GoogleCloudRunV2BinaryAuthorizationResponse.fromMap((map['binaryAuthorization']! as Map).cast<String, dynamic>()),
      client: map['client'] as String,
      clientVersion: map['clientVersion'] as String,
      conditions: pulumi.Input.decodeList<GoogleCloudRunV2ConditionResponse>(map['conditions']!, (value) => GoogleCloudRunV2ConditionResponse.fromMap((value as Map).cast<String, dynamic>())),
      createTime: map['createTime'] as String,
      creator: map['creator'] as String,
      deleteTime: map['deleteTime'] as String,
      etag: map['etag'] as String,
      executionCount: map['executionCount'] as int,
      expireTime: map['expireTime'] as String,
      generation: map['generation'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      lastModifier: map['lastModifier'] as String,
      latestCreatedExecution: GoogleCloudRunV2ExecutionReferenceResponse.fromMap((map['latestCreatedExecution']! as Map).cast<String, dynamic>()),
      launchStage: map['launchStage'] as String,
      name: map['name'] as String,
      observedGeneration: map['observedGeneration'] as String,
      reconciling: map['reconciling'] as bool,
      satisfiesPzs: map['satisfiesPzs'] as bool,
      template: GoogleCloudRunV2ExecutionTemplateResponse.fromMap((map['template']! as Map).cast<String, dynamic>()),
      terminalCondition: GoogleCloudRunV2ConditionResponse.fromMap((map['terminalCondition']! as Map).cast<String, dynamic>()),
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

