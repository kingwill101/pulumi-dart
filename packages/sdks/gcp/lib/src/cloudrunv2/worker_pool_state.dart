// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_pool_binary_authorization.dart';
import 'worker_pool_condition.dart';
import 'worker_pool_instance_split.dart';
import 'worker_pool_instance_split_status.dart';
import 'worker_pool_scaling.dart';
import 'worker_pool_template.dart';
import 'worker_pool_terminal_condition.dart';

/// Input properties used for looking up and filtering WorkerPool resources.
class WorkerPoolState {
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

  /// The Conditions of all other associated sub-resources. They contain additional diagnostics information in case the WorkerPool does not reach its Serving state. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  /// Structure is documented below.
  final pulumi.Input<List<WorkerPoolCondition>>? conditions;

  /// The creation time.
  final pulumi.Input<String>? createTime;

  /// Email address of the authenticated creator.
  final pulumi.Input<String>? creator;

  /// (Optional, Deprecated)
  /// One or more custom audiences that you want this worker pool to support. Specify each custom audience as the full URL in a string. The custom audiences are encoded in the token and used to authenticate requests.
  /// For more information, see https://cloud.google.com/run/docs/configuring/custom-audiences.
  ///
  /// &gt; **Warning:** `custom_audiences` is deprecated since it is not applicable to WorkerPool resource and will be removed in a future major release.
  final pulumi.Input<List<String>>? customAudiences;

  /// The deletion time.
  final pulumi.Input<String>? deleteTime;
  final pulumi.Input<bool>? deletionProtection;

  /// User-provided description of the WorkerPool. This field currently has a 512-character limit.
  final pulumi.Input<String>? description;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;

  /// A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
  final pulumi.Input<String>? etag;

  /// For a deleted resource, the time after which it will be permanently deleted.
  final pulumi.Input<String>? expireTime;

  /// A number that monotonically increases every time the user modifies the desired state. Please note that unlike v1, this is an int64 value. As with most Google APIs, its JSON representation will be a string instead of an integer.
  final pulumi.Input<String>? generation;

  /// Detailed status information for corresponding instance splits. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  /// Structure is documented below.
  final pulumi.Input<List<WorkerPoolInstanceSplitStatus>>?
  instanceSplitStatuses;

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

  /// Email address of the last authenticated modifier.
  final pulumi.Input<String>? lastModifier;

  /// Name of the last created revision. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  final pulumi.Input<String>? latestCreatedRevision;

  /// Name of the latest revision that is serving traffic. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  final pulumi.Input<String>? latestReadyRevision;

  /// The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/products#product-launch-stages). Cloud Run supports ALPHA, BETA, and GA.
  /// If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features.
  /// For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
  /// Possible values are: `UNIMPLEMENTED`, `PRELAUNCH`, `EARLY_ACCESS`, `ALPHA`, `BETA`, `GA`, `DEPRECATED`.
  final pulumi.Input<String>? launchStage;

  /// The location of the cloud run worker pool
  final pulumi.Input<String>? location;

  /// Name of the WorkerPool.
  final pulumi.Input<String>? name;

  /// The generation of this WorkerPool currently serving traffic. See comments in reconciling for additional information on reconciliation process in Cloud Run. Please note that unlike v1, this is an int64 value. As with most Google APIs, its JSON representation will be a string instead of an integer.
  final pulumi.Input<String>? observedGeneration;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;

  /// Returns true if the WorkerPool is currently being acted upon by the system to bring it into the desired state.
  /// When a new WorkerPool is created, or an existing one is updated, Cloud Run will asynchronously perform all necessary steps to bring the WorkerPool to the desired serving state. This process is called reconciliation. While reconciliation is in process, observedGeneration, latest_ready_revison, trafficStatuses, and uri will have transient values that might mismatch the intended state: Once reconciliation is over (and this field is false), there are two possible outcomes: reconciliation succeeded and the serving state matches the WorkerPool, or there was an error, and reconciliation failed. This state can be found in terminalCondition.state.
  /// If reconciliation succeeded, the following fields will match: traffic and trafficStatuses, observedGeneration and generation, latestReadyRevision and latestCreatedRevision.
  /// If reconciliation failed, trafficStatuses, observedGeneration, and latestReadyRevision will have the state of the last serving revision, or empty for newly created WorkerPools. Additional information on the failure can be found in terminalCondition and conditions.
  final pulumi.Input<bool>? reconciling;

  /// Scaling settings that apply to the worker pool.
  /// Structure is documented below.
  final pulumi.Input<WorkerPoolScaling>? scaling;

  /// The template used to create revisions for this WorkerPool.
  /// Structure is documented below.
  final pulumi.Input<WorkerPoolTemplate>? template;

  /// The Condition of this WorkerPool, containing its readiness status, and detailed error information in case it did not reach a serving state. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  /// Structure is documented below.
  final pulumi.Input<List<WorkerPoolTerminalCondition>>? terminalConditions;

  /// Server assigned unique identifier for the trigger. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  final pulumi.Input<String>? uid;

  /// The last-modified time.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [WorkerPoolState].
  /// [annotations] Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  /// [binaryAuthorization] Settings for the Binary Authorization feature.
  /// [client] Arbitrary identifier for the API client.
  /// [clientVersion] Arbitrary version identifier for the API client.
  /// [conditions] The Conditions of all other associated sub-resources. They contain additional diagnostics information in case the WorkerPool does not reach its Serving state. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  /// [createTime] The creation time.
  /// [creator] Email address of the authenticated creator.
  /// [customAudiences] (Optional, Deprecated)
  /// [deleteTime] The deletion time.
  /// [deletionProtection] Optional.
  /// [description] User-provided description of the WorkerPool. This field currently has a 512-character limit.
  /// [effectiveAnnotations] Optional.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [etag] A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
  /// [expireTime] For a deleted resource, the time after which it will be permanently deleted.
  /// [generation] A number that monotonically increases every time the user modifies the desired state. Please note that unlike v1, this is an int64 value. As with most Google APIs, its JSON representation will be a string instead of an integer.
  /// [instanceSplitStatuses] Detailed status information for corresponding instance splits. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  /// [instanceSplits] Specifies how to distribute instances over a collection of Revisions belonging to the WorkerPool. If instance split is empty or not provided, defaults to 100% instances assigned to the latest Ready Revision.
  /// [labels] Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component,
  /// [lastModifier] Email address of the last authenticated modifier.
  /// [latestCreatedRevision] Name of the last created revision. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  /// [latestReadyRevision] Name of the latest revision that is serving traffic. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  /// [launchStage] The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/products#product-launch-stages). Cloud Run supports ALPHA, BETA, and GA.
  /// [location] The location of the cloud run worker pool
  /// [name] Name of the WorkerPool.
  /// [observedGeneration] The generation of this WorkerPool currently serving traffic. See comments in reconciling for additional information on reconciliation process in Cloud Run. Please note that unlike v1, this is an int64 value. As with most Google APIs, its JSON representation will be a string instead of an integer.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [reconciling] Returns true if the WorkerPool is currently being acted upon by the system to bring it into the desired state.
  /// [scaling] Scaling settings that apply to the worker pool.
  /// [template] The template used to create revisions for this WorkerPool.
  /// [terminalConditions] The Condition of this WorkerPool, containing its readiness status, and detailed error information in case it did not reach a serving state. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  /// [uid] Server assigned unique identifier for the trigger. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  /// [updateTime] The last-modified time.
  WorkerPoolState({
    this.annotations,
    this.binaryAuthorization,
    this.client,
    this.clientVersion,
    this.conditions,
    this.createTime,
    this.creator,
    this.customAudiences,
    this.deleteTime,
    this.deletionProtection,
    this.description,
    this.effectiveAnnotations,
    this.effectiveLabels,
    this.etag,
    this.expireTime,
    this.generation,
    this.instanceSplitStatuses,
    this.instanceSplits,
    this.labels,
    this.lastModifier,
    this.latestCreatedRevision,
    this.latestReadyRevision,
    this.launchStage,
    this.location,
    this.name,
    this.observedGeneration,
    this.project,
    this.pulumiLabels,
    this.reconciling,
    this.scaling,
    this.template,
    this.terminalConditions,
    this.uid,
    this.updateTime,
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
      'conditions':
          ?pulumi.Input.mapOptionalInputValue<
            List<WorkerPoolCondition>,
            List<Map<String, dynamic>>
          >(
            conditions,
            (value) =>
                pulumi.Input.encodeList<
                  WorkerPoolCondition,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'createTime': ?createTime,
      'creator': ?creator,
      'customAudiences': ?customAudiences,
      'deleteTime': ?deleteTime,
      'deletionProtection': ?deletionProtection,
      'description': ?description,
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'etag': ?etag,
      'expireTime': ?expireTime,
      'generation': ?generation,
      'instanceSplitStatuses':
          ?pulumi.Input.mapOptionalInputValue<
            List<WorkerPoolInstanceSplitStatus>,
            List<Map<String, dynamic>>
          >(
            instanceSplitStatuses,
            (value) =>
                pulumi.Input.encodeList<
                  WorkerPoolInstanceSplitStatus,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      'lastModifier': ?lastModifier,
      'latestCreatedRevision': ?latestCreatedRevision,
      'latestReadyRevision': ?latestReadyRevision,
      'launchStage': ?launchStage,
      'location': ?location,
      'name': ?name,
      'observedGeneration': ?observedGeneration,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'reconciling': ?reconciling,
      'scaling':
          ?pulumi.Input.mapOptionalInputValue<
            WorkerPoolScaling,
            Map<String, dynamic>
          >(scaling, (value) => value.toMap()),
      'template':
          ?pulumi.Input.mapOptionalInputValue<
            WorkerPoolTemplate,
            Map<String, dynamic>
          >(template, (value) => value.toMap()),
      'terminalConditions':
          ?pulumi.Input.mapOptionalInputValue<
            List<WorkerPoolTerminalCondition>,
            List<Map<String, dynamic>>
          >(
            terminalConditions,
            (value) =>
                pulumi.Input.encodeList<
                  WorkerPoolTerminalCondition,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory WorkerPoolState.fromMap(Map<String, dynamic> map) {
    return WorkerPoolState(
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
      conditions: (() {
        final guardedValue = map['conditions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<WorkerPoolCondition>(
            guardedValue,
            (value) => WorkerPoolCondition.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      creator: (() {
        final guardedValue = map['creator'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      customAudiences: (() {
        final guardedValue = map['customAudiences'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      deleteTime: (() {
        final guardedValue = map['deleteTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
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
      effectiveAnnotations: (() {
        final guardedValue = map['effectiveAnnotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      effectiveLabels: (() {
        final guardedValue = map['effectiveLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      expireTime: (() {
        final guardedValue = map['expireTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      generation: (() {
        final guardedValue = map['generation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceSplitStatuses: (() {
        final guardedValue = map['instanceSplitStatuses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<WorkerPoolInstanceSplitStatus>(
            guardedValue,
            (value) => WorkerPoolInstanceSplitStatus.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
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
      lastModifier: (() {
        final guardedValue = map['lastModifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      latestCreatedRevision: (() {
        final guardedValue = map['latestCreatedRevision'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      latestReadyRevision: (() {
        final guardedValue = map['latestReadyRevision'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      launchStage: (() {
        final guardedValue = map['launchStage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
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
      observedGeneration: (() {
        final guardedValue = map['observedGeneration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
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
      reconciling: (() {
        final guardedValue = map['reconciling'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
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
      template: (() {
        final guardedValue = map['template'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WorkerPoolTemplate.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      terminalConditions: (() {
        final guardedValue = map['terminalConditions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<WorkerPoolTerminalCondition>(
            guardedValue,
            (value) => WorkerPoolTerminalCondition.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      uid: (() {
        final guardedValue = map['uid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
