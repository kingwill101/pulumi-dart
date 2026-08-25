// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_partition_autoscaling_config.dart';

/// {@template pulumi_spanner_instance_partition_instance_partition_args_doc}
/// The set of arguments for InstancePartition.
/// {@endtemplate}
/// {@macro pulumi_spanner_instance_partition_instance_partition_args_doc}
class InstancePartitionArgs {
  /// The autoscaling configuration. Autoscaling is enabled if this field is set.
  /// Exactly one of either node_count, processing_units, or autoscalingConfig must be
  /// present. When autoscaling is enabled, nodeCount and processingUnits are treated as
  /// OUTPUT_ONLY fields and reflect the current compute capacity allocated to the
  /// instance partition.
  /// Structure is documented below.
  final pulumi.Input<InstancePartitionAutoscalingConfig?>? autoscalingConfig;
  /// The name of the instance partition's configuration (similar to a region) which
  /// defines the geographic placement and replication of data in this instance partition.
  final pulumi.Input<String> config;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The descriptive name for this instance partition as it appears in UIs.
  /// Must be unique per project and between 4 and 30 characters in length.
  final pulumi.Input<String> displayName;
  /// The instance to create the instance partition in.
  final pulumi.Input<String> instance;
  /// A unique identifier for the instance partition, which cannot be changed after
  /// the instance partition is created. The name must be between 2 and 64 characters
  /// and match the regular expression [a-z][a-z0-9\\-]{0,61}[a-z0-9].
  final pulumi.Input<String?>? name;
  /// The number of nodes allocated to this instance partition. One node equals
  /// 1000 processing units. Exactly one of either node_count, processing_units,
  /// or autoscalingConfig must be present.
  final pulumi.Input<int?>? nodeCount;
  /// The number of processing units allocated to this instance partition.
  /// Exactly one of either node_count, processing_units, or autoscalingConfig
  /// must be present.
  final pulumi.Input<int?>? processingUnits;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [InstancePartitionArgs].
  /// [autoscalingConfig] The autoscaling configuration. Autoscaling is enabled if this field is set.
  /// [config] The name of the instance partition's configuration (similar to a region) which
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The descriptive name for this instance partition as it appears in UIs.
  /// [instance] The instance to create the instance partition in.
  /// [name] A unique identifier for the instance partition, which cannot be changed after
  /// [nodeCount] The number of nodes allocated to this instance partition. One node equals
  /// [processingUnits] The number of processing units allocated to this instance partition.
  /// [project] The ID of the project in which the resource belongs.
  const InstancePartitionArgs({
    this.autoscalingConfig,
    required this.config,
    this.deletionPolicy,
    required this.displayName,
    required this.instance,
    this.name,
    this.nodeCount,
    this.processingUnits,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingConfig': ?pulumi.Input.mapOptionalInputValue<InstancePartitionAutoscalingConfig, Map<String, dynamic>>(autoscalingConfig, (value) => value.toMap()),
      'config': config,
      'deletionPolicy': ?deletionPolicy,
      'displayName': displayName,
      'instance': instance,
      'name': ?name,
      'nodeCount': ?nodeCount,
      'processingUnits': ?processingUnits,
      'project': ?project,
    };
  }

  factory InstancePartitionArgs.fromMap(Map<String, dynamic> map) {
    return InstancePartitionArgs(
      autoscalingConfig: (() { final guardedValue = map['autoscalingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstancePartitionAutoscalingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      config: pulumi.Input.fromValue(map['config'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeCount: (() { final guardedValue = map['nodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      processingUnits: (() { final guardedValue = map['processingUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
