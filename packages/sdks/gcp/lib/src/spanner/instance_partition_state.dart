// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_partition_autoscaling_config.dart';

/// Input properties used for looking up and filtering InstancePartition resources.
class InstancePartitionState {
  /// The autoscaling configuration. Autoscaling is enabled if this field is set.
  /// Exactly one of either node_count, processing_units, or autoscalingConfig must be
  /// present. When autoscaling is enabled, nodeCount and processingUnits are treated as
  /// OUTPUT_ONLY fields and reflect the current compute capacity allocated to the
  /// instance partition.
  /// Structure is documented below.
  final pulumi.Input<InstancePartitionAutoscalingConfig>? autoscalingConfig;
  /// The name of the instance partition's configuration (similar to a region) which
  /// defines the geographic placement and replication of data in this instance partition.
  final pulumi.Input<String>? config;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The descriptive name for this instance partition as it appears in UIs.
  /// Must be unique per project and between 4 and 30 characters in length.
  final pulumi.Input<String>? displayName;
  /// The instance to create the instance partition in.
  final pulumi.Input<String>? instance;
  /// A unique identifier for the instance partition, which cannot be changed after
  /// the instance partition is created. The name must be between 2 and 64 characters
  /// and match the regular expression [a-z][a-z0-9\\-]{0,61}[a-z0-9].
  final pulumi.Input<String>? name;
  /// The number of nodes allocated to this instance partition. One node equals
  /// 1000 processing units. Exactly one of either node_count, processing_units,
  /// or autoscalingConfig must be present.
  final pulumi.Input<int>? nodeCount;
  /// The number of processing units allocated to this instance partition.
  /// Exactly one of either node_count, processing_units, or autoscalingConfig
  /// must be present.
  final pulumi.Input<int>? processingUnits;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The current instance partition state. Possible values are:
  /// CREATING: The instance partition is being created. Resources are being
  /// allocated for the instance partition.
  /// READY: The instance partition has been allocated resources and is ready for use.
  final pulumi.Input<String>? state;

  /// Creates a new [InstancePartitionState].
  /// [autoscalingConfig] The autoscaling configuration. Autoscaling is enabled if this field is set.
  /// [config] The name of the instance partition's configuration (similar to a region) which
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The descriptive name for this instance partition as it appears in UIs.
  /// [instance] The instance to create the instance partition in.
  /// [name] A unique identifier for the instance partition, which cannot be changed after
  /// [nodeCount] The number of nodes allocated to this instance partition. One node equals
  /// [processingUnits] The number of processing units allocated to this instance partition.
  /// [project] The ID of the project in which the resource belongs.
  /// [state] The current instance partition state. Possible values are:
  const InstancePartitionState({
    this.autoscalingConfig,
    this.config,
    this.deletionPolicy,
    this.displayName,
    this.instance,
    this.name,
    this.nodeCount,
    this.processingUnits,
    this.project,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingConfig': ?pulumi.Input.mapOptionalInputValue<InstancePartitionAutoscalingConfig, Map<String, dynamic>>(autoscalingConfig, (value) => value.toMap()),
      'config': ?config,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'instance': ?instance,
      'name': ?name,
      'nodeCount': ?nodeCount,
      'processingUnits': ?processingUnits,
      'project': ?project,
      'state': ?state,
    };
  }

  factory InstancePartitionState.fromMap(Map<String, dynamic> map) {
    return InstancePartitionState(
      autoscalingConfig: (() { final guardedValue = map['autoscalingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstancePartitionAutoscalingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeCount: (() { final guardedValue = map['nodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      processingUnits: (() { final guardedValue = map['processingUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
