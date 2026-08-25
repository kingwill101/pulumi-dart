// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_autoscaling_config.dart';

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// The autoscaling configuration. Autoscaling is enabled if this field is set.
  /// Exactly one of either num_nodes, processingUnits or autoscalingConfig must be
  /// present in terraform except when instanceType = FREE_INSTANCE.
  /// When autoscaling is enabled, numNodes and processingUnits are treated as,
  /// OUTPUT_ONLY fields and reflect the current compute capacity allocated to
  /// the instance.
  /// Structure is documented below.
  final pulumi.Input<InstanceAutoscalingConfig?>? autoscalingConfig;
  /// The name of the instance's configuration (similar but not
  /// quite the same as a region) which defines the geographic placement and
  /// replication of your databases in this instance. It determines where your data
  /// is stored. Values are typically of the form `regional-europe-west1` , `us-central` etc.
  /// In order to obtain a valid list please consult the
  /// [Configuration section of the docs](https://cloud.google.com/spanner/docs/instances).
  final pulumi.Input<String?>? config;
  /// Controls the default backup behavior for new databases within the instance.
  /// Note that `AUTOMATIC` is not permitted for free instances, as backups and backup schedules are not allowed for free instances.
  /// if unset or NONE, no default backup schedule will be created for new databases within the instance.
  /// Possible values are: `NONE`, `AUTOMATIC`.
  final pulumi.Input<String?>? defaultBackupScheduleType;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The descriptive name for this instance as it appears in UIs. Must be
  /// unique per project and between 4 and 30 characters in length.
  final pulumi.Input<String?>? displayName;
  /// The edition selected for this instance. Different editions provide different capabilities at different price points.
  /// Possible values are: `EDITION_UNSPECIFIED`, `STANDARD`, `ENTERPRISE`, `ENTERPRISE_PLUS`.
  final pulumi.Input<String?>? edition;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// When deleting a spanner instance, this boolean option will delete all backups of this instance.
  /// This must be set to true if you created a backup manually in the console.
  final pulumi.Input<bool?>? forceDestroy;
  /// The type of this instance. The type can be used to distinguish product variants, that can affect aspects like:
  /// usage restrictions, quotas and billing. Currently this is used to distinguish FREE_INSTANCE vs PROVISIONED instances.
  /// When configured as FREE_INSTANCE, the field `edition` should not be configured.
  /// Possible values are: `PROVISIONED`, `FREE_INSTANCE`.
  final pulumi.Input<String?>? instanceType;
  /// An object containing a list of "key": value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// A unique identifier for the instance, which cannot be changed after
  /// the instance is created. The name must be between 6 and 30 characters
  /// in length.
  /// If not provided, a random string starting with `tf-` will be selected.
  final pulumi.Input<String?>? name;
  /// The number of nodes allocated to this instance. Exactly one of either num_nodes, processingUnits or
  /// autoscalingConfig must be present in terraform except when instanceType = FREE_INSTANCE.
  final pulumi.Input<int?>? numNodes;
  /// The number of processing units allocated to this instance. Exactly one of either num_nodes,
  /// processingUnits or autoscalingConfig must be present in terraform except when instanceType = FREE_INSTANCE.
  final pulumi.Input<int?>? processingUnits;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// Instance status: `CREATING` or `READY`.
  final pulumi.Input<String?>? state;

  /// Creates a new [InstanceState].
  /// [autoscalingConfig] The autoscaling configuration. Autoscaling is enabled if this field is set.
  /// [config] The name of the instance's configuration (similar but not
  /// [defaultBackupScheduleType] Controls the default backup behavior for new databases within the instance.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The descriptive name for this instance as it appears in UIs. Must be
  /// [edition] The edition selected for this instance. Different editions provide different capabilities at different price points.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [forceDestroy] When deleting a spanner instance, this boolean option will delete all backups of this instance.
  /// [instanceType] The type of this instance. The type can be used to distinguish product variants, that can affect aspects like:
  /// [labels] An object containing a list of "key": value pairs.
  /// [name] A unique identifier for the instance, which cannot be changed after
  /// [numNodes] The number of nodes allocated to this instance. Exactly one of either num_nodes, processingUnits or
  /// [processingUnits] The number of processing units allocated to this instance. Exactly one of either num_nodes,
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [state] Instance status: `CREATING` or `READY`.
  const InstanceState({
    this.autoscalingConfig,
    this.config,
    this.defaultBackupScheduleType,
    this.deletionPolicy,
    this.displayName,
    this.edition,
    this.effectiveLabels,
    this.forceDestroy,
    this.instanceType,
    this.labels,
    this.name,
    this.numNodes,
    this.processingUnits,
    this.project,
    this.pulumiLabels,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingConfig': ?pulumi.Input.mapOptionalInputValue<InstanceAutoscalingConfig, Map<String, dynamic>>(autoscalingConfig, (value) => value.toMap()),
      'config': ?config,
      'defaultBackupScheduleType': ?defaultBackupScheduleType,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'edition': ?edition,
      'effectiveLabels': ?effectiveLabels,
      'forceDestroy': ?forceDestroy,
      'instanceType': ?instanceType,
      'labels': ?labels,
      'name': ?name,
      'numNodes': ?numNodes,
      'processingUnits': ?processingUnits,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'state': ?state,
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      autoscalingConfig: (() { final guardedValue = map['autoscalingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceAutoscalingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultBackupScheduleType: (() { final guardedValue = map['defaultBackupScheduleType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      edition: (() { final guardedValue = map['edition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      forceDestroy: (() { final guardedValue = map['forceDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numNodes: (() { final guardedValue = map['numNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      processingUnits: (() { final guardedValue = map['processingUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
