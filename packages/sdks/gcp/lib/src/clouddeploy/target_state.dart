// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_anthos_cluster.dart';
import 'target_associated_entity.dart';
import 'target_custom_target.dart';
import 'target_execution_config.dart';
import 'target_gke.dart';
import 'target_multi_target.dart';
import 'target_run.dart';

/// Input properties used for looking up and filtering Target resources.
class TargetState {
  /// Optional. User annotations. These attributes can only be set and used by the user, and not by Google Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Information specifying an Anthos Cluster.
  final pulumi.Input<TargetAnthosCluster>? anthosCluster;
  /// Optional. Map of entity IDs to their associated entities. Associated entities allows specifying places other than the deployment target for specific features. For example, the Gateway API canary can be configured to deploy the HTTPRoute to a different cluster(s) than the deployment cluster using associated entities. An entity ID must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: `^a-z?$`.
  final pulumi.Input<List<TargetAssociatedEntity>>? associatedEntities;
  /// Output only. Time at which the `Target` was created.
  final pulumi.Input<String>? createTime;
  /// Optional. Information specifying a Custom Target.
  final pulumi.Input<TargetCustomTarget>? customTarget;
  /// Optional. The deploy parameters to use for this target.
  final pulumi.Input<Map<String, String>>? deployParameters;
  /// Optional. Description of the `Target`. Max length is 255 characters.
  final pulumi.Input<String>? description;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Optional. This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;
  /// Configurations for all execution that relates to this `Target`. Each `ExecutionEnvironmentUsage` value may only be used in a single configuration; using the same value multiple times is an error. When one or more configurations are specified, they must include the `RENDER` and `DEPLOY` `ExecutionEnvironmentUsage` values. When no configurations are specified, execution will use the default specified in `DefaultPool`.
  final pulumi.Input<List<TargetExecutionConfig>>? executionConfigs;
  /// Information specifying a GKE Cluster.
  final pulumi.Input<TargetGke>? gke;
  /// Optional. Labels are attributes that can be set and used by both the user and by Google Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location for the resource
  final pulumi.Input<String>? location;
  /// Information specifying a multiTarget.
  final pulumi.Input<TargetMultiTarget>? multiTarget;
  /// Name of the `Target`. Format is `a-z?`.
  ///
  ///
  ///
  /// - - -
  final pulumi.Input<String>? name;
  /// The project for the resource
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Optional. Whether or not the `Target` requires approval.
  final pulumi.Input<bool>? requireApproval;
  /// Information specifying a Cloud Run deployment target.
  final pulumi.Input<TargetRun>? run;
  /// Output only. Resource id of the `Target`.
  final pulumi.Input<String>? targetId;
  /// Output only. Unique identifier of the `Target`.
  final pulumi.Input<String>? uid;
  /// Output only. Most recent time at which the `Target` was updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [TargetState].
  /// [annotations] Optional. User annotations. These attributes can only be set and used by the user, and not by Google Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  /// [anthosCluster] Information specifying an Anthos Cluster.
  /// [associatedEntities] Optional. Map of entity IDs to their associated entities. Associated entities allows specifying places other than the deployment target for specific features. For example, the Gateway API canary can be configured to deploy the HTTPRoute to a different cluster(s) than the deployment cluster using associated entities. An entity ID must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: `^a-z?$`.
  /// [createTime] Output only. Time at which the `Target` was created.
  /// [customTarget] Optional. Information specifying a Custom Target.
  /// [deployParameters] Optional. The deploy parameters to use for this target.
  /// [description] Optional. Description of the `Target`. Max length is 255 characters.
  /// [effectiveAnnotations] Optional.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [etag] Optional. This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [executionConfigs] Configurations for all execution that relates to this `Target`. Each `ExecutionEnvironmentUsage` value may only be used in a single configuration; using the same value multiple times is an error. When one or more configurations are specified, they must include the `RENDER` and `DEPLOY` `ExecutionEnvironmentUsage` values. When no configurations are specified, execution will use the default specified in `DefaultPool`.
  /// [gke] Information specifying a GKE Cluster.
  /// [labels] Optional. Labels are attributes that can be set and used by both the user and by Google Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.
  /// [location] The location for the resource
  /// [multiTarget] Information specifying a multiTarget.
  /// [name] Name of the `Target`. Format is `a-z?`.
  /// [project] The project for the resource
  /// [pulumiLabels] The combination of labels configured directly on the resource and default labels configured on the provider.
  /// [requireApproval] Optional. Whether or not the `Target` requires approval.
  /// [run] Information specifying a Cloud Run deployment target.
  /// [targetId] Output only. Resource id of the `Target`.
  /// [uid] Output only. Unique identifier of the `Target`.
  /// [updateTime] Output only. Most recent time at which the `Target` was updated.
  TargetState({
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<TargetAnthosCluster>? anthosCluster,
    pulumi.Output<List<TargetAssociatedEntity>>? associatedEntities,
    pulumi.Output<String>? createTime,
    pulumi.Output<TargetCustomTarget>? customTarget,
    pulumi.Output<Map<String, String>>? deployParameters,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveAnnotations,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? etag,
    pulumi.Output<List<TargetExecutionConfig>>? executionConfigs,
    pulumi.Output<TargetGke>? gke,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<TargetMultiTarget>? multiTarget,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<bool>? requireApproval,
    pulumi.Output<TargetRun>? run,
    pulumi.Output<String>? targetId,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      anthosCluster = pulumi.Input.asOptionalInput<TargetAnthosCluster>(anthosCluster),
      associatedEntities = pulumi.Input.asOptionalInput<List<TargetAssociatedEntity>>(associatedEntities),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      customTarget = pulumi.Input.asOptionalInput<TargetCustomTarget>(customTarget),
      deployParameters = pulumi.Input.asOptionalInput<Map<String, String>>(deployParameters),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveAnnotations = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveAnnotations),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      executionConfigs = pulumi.Input.asOptionalInput<List<TargetExecutionConfig>>(executionConfigs),
      gke = pulumi.Input.asOptionalInput<TargetGke>(gke),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      multiTarget = pulumi.Input.asOptionalInput<TargetMultiTarget>(multiTarget),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      requireApproval = pulumi.Input.asOptionalInput<bool>(requireApproval),
      run = pulumi.Input.asOptionalInput<TargetRun>(run),
      targetId = pulumi.Input.asOptionalInput<String>(targetId),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'anthosCluster': ?pulumi.Input.mapOptionalInputValue<TargetAnthosCluster, Map<String, dynamic>>(anthosCluster, (value) => value.toMap()),
      'associatedEntities': ?pulumi.Input.mapOptionalInputValue<List<TargetAssociatedEntity>, List<Map<String, dynamic>>>(associatedEntities, (value) => pulumi.Input.encodeList<TargetAssociatedEntity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'customTarget': ?pulumi.Input.mapOptionalInputValue<TargetCustomTarget, Map<String, dynamic>>(customTarget, (value) => value.toMap()),
      'deployParameters': ?deployParameters,
      'description': ?description,
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'etag': ?etag,
      'executionConfigs': ?pulumi.Input.mapOptionalInputValue<List<TargetExecutionConfig>, List<Map<String, dynamic>>>(executionConfigs, (value) => pulumi.Input.encodeList<TargetExecutionConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gke': ?pulumi.Input.mapOptionalInputValue<TargetGke, Map<String, dynamic>>(gke, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'multiTarget': ?pulumi.Input.mapOptionalInputValue<TargetMultiTarget, Map<String, dynamic>>(multiTarget, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'requireApproval': ?requireApproval,
      'run': ?pulumi.Input.mapOptionalInputValue<TargetRun, Map<String, dynamic>>(run, (value) => value.toMap()),
      'targetId': ?targetId,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory TargetState.fromMap(Map<String, dynamic> map) {
    return TargetState(
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      anthosCluster: map['anthosCluster'] == null ? null : pulumi.Output.create<TargetAnthosCluster>(TargetAnthosCluster.fromMap((map['anthosCluster'] as Map).cast<String, dynamic>())),
      associatedEntities: map['associatedEntities'] == null ? null : pulumi.Output.create<List<TargetAssociatedEntity>>(pulumi.Input.decodeList<TargetAssociatedEntity>(map['associatedEntities'], (value) => TargetAssociatedEntity.fromMap((value as Map).cast<String, dynamic>()))),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      customTarget: map['customTarget'] == null ? null : pulumi.Output.create<TargetCustomTarget>(TargetCustomTarget.fromMap((map['customTarget'] as Map).cast<String, dynamic>())),
      deployParameters: map['deployParameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['deployParameters'] as Map).cast<String, String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveAnnotations'] as Map).cast<String, String>()),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      executionConfigs: map['executionConfigs'] == null ? null : pulumi.Output.create<List<TargetExecutionConfig>>(pulumi.Input.decodeList<TargetExecutionConfig>(map['executionConfigs'], (value) => TargetExecutionConfig.fromMap((value as Map).cast<String, dynamic>()))),
      gke: map['gke'] == null ? null : pulumi.Output.create<TargetGke>(TargetGke.fromMap((map['gke'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      multiTarget: map['multiTarget'] == null ? null : pulumi.Output.create<TargetMultiTarget>(TargetMultiTarget.fromMap((map['multiTarget'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      requireApproval: map['requireApproval'] == null ? null : pulumi.Output.create<bool>(map['requireApproval'] as bool),
      run: map['run'] == null ? null : pulumi.Output.create<TargetRun>(TargetRun.fromMap((map['run'] as Map).cast<String, dynamic>())),
      targetId: map['targetId'] == null ? null : pulumi.Output.create<String>(map['targetId'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

