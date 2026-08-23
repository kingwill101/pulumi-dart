// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_binary_authorization.dart';
import 'job_condition.dart';
import 'job_latest_created_execution.dart';
import 'job_template.dart';
import 'job_terminal_condition.dart';

/// Input properties used for looking up and filtering Job resources.
class JobState {
  /// Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  /// Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected on new resources.
  /// All system annotations in v1 now have a corresponding field in v2 Job.
  /// This field follows Kubernetes annotations' namespacing, limits, and rules.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Settings for the Binary Authorization feature.
  /// Structure is documented below.
  final pulumi.Input<JobBinaryAuthorization>? binaryAuthorization;
  /// Arbitrary identifier for the API client.
  final pulumi.Input<String>? client;
  /// Arbitrary version identifier for the API client.
  final pulumi.Input<String>? clientVersion;
  /// The Conditions of all other associated sub-resources. They contain additional diagnostics information in case the Job does not reach its desired state. See comments in reconciling for additional information on `reconciliation` process in Cloud Run.
  /// Structure is documented below.
  final pulumi.Input<List<JobCondition>>? conditions;
  /// (Output)
  /// Creation timestamp of the execution.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? createTime;
  /// Email address of the authenticated creator.
  final pulumi.Input<String>? creator;
  /// The deletion time.
  final pulumi.Input<String>? deleteTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Whether Terraform will be prevented from destroying the job. Defaults to true.
  /// When a`terraform destroy` or `pulumi up` would delete the job,
  /// the command will fail if this field is not set to false in Terraform state.
  /// When the field is set to true or unset in Terraform state, a `pulumi up`
  /// or `terraform destroy` that would delete the job will fail.
  /// When the field is set to false, deleting the job is allowed.
  final pulumi.Input<bool>? deletionProtection;
  /// All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
  final pulumi.Input<String>? etag;
  /// Number of executions created for this job.
  final pulumi.Input<int>? executionCount;
  /// For a deleted resource, the time after which it will be permanently deleted.
  final pulumi.Input<String>? expireTime;
  /// A number that monotonically increases every time the user modifies the desired state.
  final pulumi.Input<String>? generation;
  /// Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component,
  /// environment, state, etc. For more information, visit https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels.
  /// Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected.
  /// All system labels in v1 now have a corresponding field in v2 Job.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Email address of the last authenticated modifier.
  final pulumi.Input<String>? lastModifier;
  /// Name of the last created execution.
  /// Structure is documented below.
  final pulumi.Input<List<JobLatestCreatedExecution>>? latestCreatedExecutions;
  /// The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/products#product-launch-stages). Cloud Run supports ALPHA, BETA, and GA.
  /// If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features.
  /// For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
  /// Possible values are: `UNIMPLEMENTED`, `PRELAUNCH`, `EARLY_ACCESS`, `ALPHA`, `BETA`, `GA`, `DEPRECATED`.
  final pulumi.Input<String>? launchStage;
  /// The location of the cloud run job
  final pulumi.Input<String>? location;
  /// Name of the Job.
  final pulumi.Input<String>? name;
  /// The generation of this Job. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  final pulumi.Input<String>? observedGeneration;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Returns true if the Job is currently being acted upon by the system to bring it into the desired state.
  /// When a new Job is created, or an existing one is updated, Cloud Run will asynchronously perform all necessary steps to bring the Job to the desired state. This process is called reconciliation. While reconciliation is in process, observedGeneration and latest_succeeded_execution, will have transient values that might mismatch the intended state: Once reconciliation is over (and this field is false), there are two possible outcomes: reconciliation succeeded and the state matches the Job, or there was an error, and reconciliation failed. This state can be found in terminalCondition.state.
  /// If reconciliation succeeded, the following fields will match: observedGeneration and generation, latestSucceededExecution and latestCreatedExecution.
  /// If reconciliation failed, observedGeneration and latestSucceededExecution will have the state of the last succeeded execution or empty for newly created Job. Additional information on the failure can be found in terminalCondition and conditions
  final pulumi.Input<bool>? reconciling;
  /// A unique string used as a suffix creating a new execution upon job create or update. The Job will become ready when the execution is successfully completed.
  /// The sum of job name and token length must be fewer than 63 characters.
  final pulumi.Input<String>? runExecutionToken;
  /// A unique string used as a suffix creating a new execution upon job create or update. The Job will become ready when the execution is successfully started.
  /// The sum of job name and token length must be fewer than 63 characters.
  final pulumi.Input<String>? startExecutionToken;
  /// A map of resource manager tags.
  /// Resource manager tag keys and values have the same definition as resource manager tags.
  /// Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/{tag_value_id}.
  final pulumi.Input<Map<String, String>>? tags;
  /// The template used to create executions for this Job.
  /// Structure is documented below.
  final pulumi.Input<JobTemplate>? template;
  /// The Condition of this Job, containing its readiness status, and detailed error information in case it did not reach the desired state
  /// Structure is documented below.
  final pulumi.Input<List<JobTerminalCondition>>? terminalConditions;
  /// Server assigned unique identifier for the Execution. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  final pulumi.Input<String>? uid;
  /// The last-modified time.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [JobState].
  /// [annotations] Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  /// [binaryAuthorization] Settings for the Binary Authorization feature.
  /// [client] Arbitrary identifier for the API client.
  /// [clientVersion] Arbitrary version identifier for the API client.
  /// [conditions] The Conditions of all other associated sub-resources. They contain additional diagnostics information in case the Job does not reach its desired state. See comments in reconciling for additional information on `reconciliation` process in Cloud Run.
  /// [createTime] (Output)
  /// [creator] Email address of the authenticated creator.
  /// [deleteTime] The deletion time.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [deletionProtection] Whether Terraform will be prevented from destroying the job. Defaults to true.
  /// [effectiveAnnotations] All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [etag] A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
  /// [executionCount] Number of executions created for this job.
  /// [expireTime] For a deleted resource, the time after which it will be permanently deleted.
  /// [generation] A number that monotonically increases every time the user modifies the desired state.
  /// [labels] Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component,
  /// [lastModifier] Email address of the last authenticated modifier.
  /// [latestCreatedExecutions] Name of the last created execution.
  /// [launchStage] The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/products#product-launch-stages). Cloud Run supports ALPHA, BETA, and GA.
  /// [location] The location of the cloud run job
  /// [name] Name of the Job.
  /// [observedGeneration] The generation of this Job. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [reconciling] Returns true if the Job is currently being acted upon by the system to bring it into the desired state.
  /// [runExecutionToken] A unique string used as a suffix creating a new execution upon job create or update. The Job will become ready when the execution is successfully completed.
  /// [startExecutionToken] A unique string used as a suffix creating a new execution upon job create or update. The Job will become ready when the execution is successfully started.
  /// [tags] A map of resource manager tags.
  /// [template] The template used to create executions for this Job.
  /// [terminalConditions] The Condition of this Job, containing its readiness status, and detailed error information in case it did not reach the desired state
  /// [uid] Server assigned unique identifier for the Execution. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  /// [updateTime] The last-modified time.
  const JobState({
    this.annotations,
    this.binaryAuthorization,
    this.client,
    this.clientVersion,
    this.conditions,
    this.createTime,
    this.creator,
    this.deleteTime,
    this.deletionPolicy,
    this.deletionProtection,
    this.effectiveAnnotations,
    this.effectiveLabels,
    this.etag,
    this.executionCount,
    this.expireTime,
    this.generation,
    this.labels,
    this.lastModifier,
    this.latestCreatedExecutions,
    this.launchStage,
    this.location,
    this.name,
    this.observedGeneration,
    this.project,
    this.pulumiLabels,
    this.reconciling,
    this.runExecutionToken,
    this.startExecutionToken,
    this.tags,
    this.template,
    this.terminalConditions,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'binaryAuthorization': ?pulumi.Input.mapOptionalInputValue<JobBinaryAuthorization, Map<String, dynamic>>(binaryAuthorization, (value) => value.toMap()),
      'client': ?client,
      'clientVersion': ?clientVersion,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<JobCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<JobCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'creator': ?creator,
      'deleteTime': ?deleteTime,
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'etag': ?etag,
      'executionCount': ?executionCount,
      'expireTime': ?expireTime,
      'generation': ?generation,
      'labels': ?labels,
      'lastModifier': ?lastModifier,
      'latestCreatedExecutions': ?pulumi.Input.mapOptionalInputValue<List<JobLatestCreatedExecution>, List<Map<String, dynamic>>>(latestCreatedExecutions, (value) => pulumi.Input.encodeList<JobLatestCreatedExecution, Map<String, dynamic>>(value, (value) => value.toMap())),
      'launchStage': ?launchStage,
      'location': ?location,
      'name': ?name,
      'observedGeneration': ?observedGeneration,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'reconciling': ?reconciling,
      'runExecutionToken': ?runExecutionToken,
      'startExecutionToken': ?startExecutionToken,
      'tags': ?tags,
      'template': ?pulumi.Input.mapOptionalInputValue<JobTemplate, Map<String, dynamic>>(template, (value) => value.toMap()),
      'terminalConditions': ?pulumi.Input.mapOptionalInputValue<List<JobTerminalCondition>, List<Map<String, dynamic>>>(terminalConditions, (value) => pulumi.Input.encodeList<JobTerminalCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory JobState.fromMap(Map<String, dynamic> map) {
    return JobState(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      binaryAuthorization: (() { final guardedValue = map['binaryAuthorization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobBinaryAuthorization.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      client: (() { final guardedValue = map['client']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientVersion: (() { final guardedValue = map['clientVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JobCondition>(guardedValue, (value) => JobCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creator: (() { final guardedValue = map['creator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      effectiveAnnotations: (() { final guardedValue = map['effectiveAnnotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionCount: (() { final guardedValue = map['executionCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      generation: (() { final guardedValue = map['generation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      lastModifier: (() { final guardedValue = map['lastModifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      latestCreatedExecutions: (() { final guardedValue = map['latestCreatedExecutions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JobLatestCreatedExecution>(guardedValue, (value) => JobLatestCreatedExecution.fromMap((value as Map).cast<String, dynamic>()))); })(),
      launchStage: (() { final guardedValue = map['launchStage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      observedGeneration: (() { final guardedValue = map['observedGeneration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      reconciling: (() { final guardedValue = map['reconciling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      runExecutionToken: (() { final guardedValue = map['runExecutionToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startExecutionToken: (() { final guardedValue = map['startExecutionToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      template: (() { final guardedValue = map['template']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobTemplate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      terminalConditions: (() { final guardedValue = map['terminalConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JobTerminalCondition>(guardedValue, (value) => JobTerminalCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
