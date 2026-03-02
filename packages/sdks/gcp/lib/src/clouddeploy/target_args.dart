// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_anthos_cluster.dart';
import 'target_associated_entity.dart';
import 'target_custom_target.dart';
import 'target_execution_config.dart';
import 'target_gke.dart';
import 'target_multi_target.dart';
import 'target_run.dart';

/// {@template pulumi_clouddeploy_target_target_args_doc}
/// The set of arguments for Target.
/// {@endtemplate}
/// {@macro pulumi_clouddeploy_target_target_args_doc}
class TargetArgs {
  /// Optional. User annotations. These attributes can only be set and used by the user, and not by Google Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Information specifying an Anthos Cluster.
  final pulumi.Input<TargetAnthosCluster>? anthosCluster;
  /// Optional. Map of entity IDs to their associated entities. Associated entities allows specifying places other than the deployment target for specific features. For example, the Gateway API canary can be configured to deploy the HTTPRoute to a different cluster(s) than the deployment cluster using associated entities. An entity ID must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: `^a-z?$`.
  final pulumi.Input<List<TargetAssociatedEntity>>? associatedEntities;
  /// Optional. Information specifying a Custom Target.
  final pulumi.Input<TargetCustomTarget>? customTarget;
  /// Optional. The deploy parameters to use for this target.
  final pulumi.Input<Map<String, String>>? deployParameters;
  /// Optional. Description of the `Target`. Max length is 255 characters.
  final pulumi.Input<String>? description;
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
  final pulumi.Input<String> location;
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
  /// Optional. Whether or not the `Target` requires approval.
  final pulumi.Input<bool>? requireApproval;
  /// Information specifying a Cloud Run deployment target.
  final pulumi.Input<TargetRun>? run;

  /// Creates a new [TargetArgs].
  /// [annotations] Optional. User annotations. These attributes can only be set and used by the user, and not by Google Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  /// [anthosCluster] Information specifying an Anthos Cluster.
  /// [associatedEntities] Optional. Map of entity IDs to their associated entities. Associated entities allows specifying places other than the deployment target for specific features. For example, the Gateway API canary can be configured to deploy the HTTPRoute to a different cluster(s) than the deployment cluster using associated entities. An entity ID must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: `^a-z?$`.
  /// [customTarget] Optional. Information specifying a Custom Target.
  /// [deployParameters] Optional. The deploy parameters to use for this target.
  /// [description] Optional. Description of the `Target`. Max length is 255 characters.
  /// [executionConfigs] Configurations for all execution that relates to this `Target`. Each `ExecutionEnvironmentUsage` value may only be used in a single configuration; using the same value multiple times is an error. When one or more configurations are specified, they must include the `RENDER` and `DEPLOY` `ExecutionEnvironmentUsage` values. When no configurations are specified, execution will use the default specified in `DefaultPool`.
  /// [gke] Information specifying a GKE Cluster.
  /// [labels] Optional. Labels are attributes that can be set and used by both the user and by Google Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.
  /// [location] The location for the resource
  /// [multiTarget] Information specifying a multiTarget.
  /// [name] Name of the `Target`. Format is `a-z?`.
  /// [project] The project for the resource
  /// [requireApproval] Optional. Whether or not the `Target` requires approval.
  /// [run] Information specifying a Cloud Run deployment target.
  TargetArgs({
    this.annotations,
    this.anthosCluster,
    this.associatedEntities,
    this.customTarget,
    this.deployParameters,
    this.description,
    this.executionConfigs,
    this.gke,
    this.labels,
    required this.location,
    this.multiTarget,
    this.name,
    this.project,
    this.requireApproval,
    this.run,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'anthosCluster': ?pulumi.Input.mapOptionalInputValue<TargetAnthosCluster, Map<String, dynamic>>(anthosCluster, (value) => value.toMap()),
      'associatedEntities': ?pulumi.Input.mapOptionalInputValue<List<TargetAssociatedEntity>, List<Map<String, dynamic>>>(associatedEntities, (value) => pulumi.Input.encodeList<TargetAssociatedEntity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customTarget': ?pulumi.Input.mapOptionalInputValue<TargetCustomTarget, Map<String, dynamic>>(customTarget, (value) => value.toMap()),
      'deployParameters': ?deployParameters,
      'description': ?description,
      'executionConfigs': ?pulumi.Input.mapOptionalInputValue<List<TargetExecutionConfig>, List<Map<String, dynamic>>>(executionConfigs, (value) => pulumi.Input.encodeList<TargetExecutionConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gke': ?pulumi.Input.mapOptionalInputValue<TargetGke, Map<String, dynamic>>(gke, (value) => value.toMap()),
      'labels': ?labels,
      'location': location,
      'multiTarget': ?pulumi.Input.mapOptionalInputValue<TargetMultiTarget, Map<String, dynamic>>(multiTarget, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'requireApproval': ?requireApproval,
      'run': ?pulumi.Input.mapOptionalInputValue<TargetRun, Map<String, dynamic>>(run, (value) => value.toMap()),
    };
  }

  factory TargetArgs.fromMap(Map<String, dynamic> map) {
    return TargetArgs(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as Map).cast<String, String>()).input(),
      anthosCluster: map['anthosCluster'] == null ? null : (TargetAnthosCluster.fromMap((map['anthosCluster']! as Map).cast<String, dynamic>())).input(),
      associatedEntities: map['associatedEntities'] == null ? null : (pulumi.Input.decodeList<TargetAssociatedEntity>(map['associatedEntities']!, (value) => TargetAssociatedEntity.fromMap((value as Map).cast<String, dynamic>()))).input(),
      customTarget: map['customTarget'] == null ? null : (TargetCustomTarget.fromMap((map['customTarget']! as Map).cast<String, dynamic>())).input(),
      deployParameters: map['deployParameters'] == null ? null : ((map['deployParameters']! as Map).cast<String, String>()).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      executionConfigs: map['executionConfigs'] == null ? null : (pulumi.Input.decodeList<TargetExecutionConfig>(map['executionConfigs']!, (value) => TargetExecutionConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      gke: map['gke'] == null ? null : (TargetGke.fromMap((map['gke']! as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      multiTarget: map['multiTarget'] == null ? null : (TargetMultiTarget.fromMap((map['multiTarget']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      requireApproval: map['requireApproval'] == null ? null : (map['requireApproval']! as bool).input(),
      run: map['run'] == null ? null : (TargetRun.fromMap((map['run']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

