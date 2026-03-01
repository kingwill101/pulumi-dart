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
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
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
  final pulumi.Input<bool>? deletionProtection;
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
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
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
  /// If reconciliation succeeded, the following fields will match: observedGeneration and generation, latest_succeeded_execution and latestCreatedExecution.
  /// If reconciliation failed, observedGeneration and latest_succeeded_execution will have the state of the last succeeded execution or empty for newly created Job. Additional information on the failure can be found in terminalCondition and conditions
  final pulumi.Input<bool>? reconciling;
  /// A unique string used as a suffix creating a new execution upon job create or update. The Job will become ready when the execution is successfully completed.
  /// The sum of job name and token length must be fewer than 63 characters.
  final pulumi.Input<String>? runExecutionToken;
  /// A unique string used as a suffix creating a new execution upon job create or update. The Job will become ready when the execution is successfully started.
  /// The sum of job name and token length must be fewer than 63 characters.
  final pulumi.Input<String>? startExecutionToken;
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
  /// [deletionProtection] Optional.
  /// [effectiveAnnotations] Optional.
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
  /// [template] The template used to create executions for this Job.
  /// [terminalConditions] The Condition of this Job, containing its readiness status, and detailed error information in case it did not reach the desired state
  /// [uid] Server assigned unique identifier for the Execution. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  /// [updateTime] The last-modified time.
  JobState({
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<JobBinaryAuthorization>? binaryAuthorization,
    pulumi.Output<String>? client,
    pulumi.Output<String>? clientVersion,
    pulumi.Output<List<JobCondition>>? conditions,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? creator,
    pulumi.Output<String>? deleteTime,
    pulumi.Output<bool>? deletionProtection,
    pulumi.Output<Map<String, String>>? effectiveAnnotations,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? etag,
    pulumi.Output<int>? executionCount,
    pulumi.Output<String>? expireTime,
    pulumi.Output<String>? generation,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? lastModifier,
    pulumi.Output<List<JobLatestCreatedExecution>>? latestCreatedExecutions,
    pulumi.Output<String>? launchStage,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? observedGeneration,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<bool>? reconciling,
    pulumi.Output<String>? runExecutionToken,
    pulumi.Output<String>? startExecutionToken,
    pulumi.Output<JobTemplate>? template,
    pulumi.Output<List<JobTerminalCondition>>? terminalConditions,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      binaryAuthorization = pulumi.Input.asOptionalInput<JobBinaryAuthorization>(binaryAuthorization),
      client = pulumi.Input.asOptionalInput<String>(client),
      clientVersion = pulumi.Input.asOptionalInput<String>(clientVersion),
      conditions = pulumi.Input.asOptionalInput<List<JobCondition>>(conditions),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      creator = pulumi.Input.asOptionalInput<String>(creator),
      deleteTime = pulumi.Input.asOptionalInput<String>(deleteTime),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      effectiveAnnotations = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveAnnotations),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      executionCount = pulumi.Input.asOptionalInput<int>(executionCount),
      expireTime = pulumi.Input.asOptionalInput<String>(expireTime),
      generation = pulumi.Input.asOptionalInput<String>(generation),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      lastModifier = pulumi.Input.asOptionalInput<String>(lastModifier),
      latestCreatedExecutions = pulumi.Input.asOptionalInput<List<JobLatestCreatedExecution>>(latestCreatedExecutions),
      launchStage = pulumi.Input.asOptionalInput<String>(launchStage),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      observedGeneration = pulumi.Input.asOptionalInput<String>(observedGeneration),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      reconciling = pulumi.Input.asOptionalInput<bool>(reconciling),
      runExecutionToken = pulumi.Input.asOptionalInput<String>(runExecutionToken),
      startExecutionToken = pulumi.Input.asOptionalInput<String>(startExecutionToken),
      template = pulumi.Input.asOptionalInput<JobTemplate>(template),
      terminalConditions = pulumi.Input.asOptionalInput<List<JobTerminalCondition>>(terminalConditions),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      'template': ?pulumi.Input.mapOptionalInputValue<JobTemplate, Map<String, dynamic>>(template, (value) => value.toMap()),
      'terminalConditions': ?pulumi.Input.mapOptionalInputValue<List<JobTerminalCondition>, List<Map<String, dynamic>>>(terminalConditions, (value) => pulumi.Input.encodeList<JobTerminalCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory JobState.fromMap(Map<String, dynamic> map) {
    return JobState(
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      binaryAuthorization: map['binaryAuthorization'] == null ? null : pulumi.Output.create<JobBinaryAuthorization>(JobBinaryAuthorization.fromMap((map['binaryAuthorization'] as Map).cast<String, dynamic>())),
      client: map['client'] == null ? null : pulumi.Output.create<String>(map['client'] as String),
      clientVersion: map['clientVersion'] == null ? null : pulumi.Output.create<String>(map['clientVersion'] as String),
      conditions: map['conditions'] == null ? null : pulumi.Output.create<List<JobCondition>>(pulumi.Input.decodeList<JobCondition>(map['conditions'], (value) => JobCondition.fromMap((value as Map).cast<String, dynamic>()))),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      creator: map['creator'] == null ? null : pulumi.Output.create<String>(map['creator'] as String),
      deleteTime: map['deleteTime'] == null ? null : pulumi.Output.create<String>(map['deleteTime'] as String),
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<bool>(map['deletionProtection'] as bool),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveAnnotations'] as Map).cast<String, String>()),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      executionCount: map['executionCount'] == null ? null : pulumi.Output.create<int>(map['executionCount'] as int),
      expireTime: map['expireTime'] == null ? null : pulumi.Output.create<String>(map['expireTime'] as String),
      generation: map['generation'] == null ? null : pulumi.Output.create<String>(map['generation'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      lastModifier: map['lastModifier'] == null ? null : pulumi.Output.create<String>(map['lastModifier'] as String),
      latestCreatedExecutions: map['latestCreatedExecutions'] == null ? null : pulumi.Output.create<List<JobLatestCreatedExecution>>(pulumi.Input.decodeList<JobLatestCreatedExecution>(map['latestCreatedExecutions'], (value) => JobLatestCreatedExecution.fromMap((value as Map).cast<String, dynamic>()))),
      launchStage: map['launchStage'] == null ? null : pulumi.Output.create<String>(map['launchStage'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      observedGeneration: map['observedGeneration'] == null ? null : pulumi.Output.create<String>(map['observedGeneration'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      reconciling: map['reconciling'] == null ? null : pulumi.Output.create<bool>(map['reconciling'] as bool),
      runExecutionToken: map['runExecutionToken'] == null ? null : pulumi.Output.create<String>(map['runExecutionToken'] as String),
      startExecutionToken: map['startExecutionToken'] == null ? null : pulumi.Output.create<String>(map['startExecutionToken'] as String),
      template: map['template'] == null ? null : pulumi.Output.create<JobTemplate>(JobTemplate.fromMap((map['template'] as Map).cast<String, dynamic>())),
      terminalConditions: map['terminalConditions'] == null ? null : pulumi.Output.create<List<JobTerminalCondition>>(pulumi.Input.decodeList<JobTerminalCondition>(map['terminalConditions'], (value) => JobTerminalCondition.fromMap((value as Map).cast<String, dynamic>()))),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

