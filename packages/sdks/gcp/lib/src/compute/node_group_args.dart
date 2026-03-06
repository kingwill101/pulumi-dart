// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_group_autoscaling_policy.dart';
import 'node_group_maintenance_window.dart';
import 'node_group_share_settings.dart';

/// {@template pulumi_compute_node_group_node_group_args_doc}
/// The set of arguments for NodeGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_node_group_node_group_args_doc}
class NodeGroupArgs {
  /// If you use sole-tenant nodes for your workloads, you can use the node
  /// group autoscaler to automatically manage the sizes of your node groups.
  /// One of `initial_size` or `autoscaling_policy` must be configured on resource creation.
  /// Structure is documented below.
  final pulumi.Input<NodeGroupAutoscalingPolicy>? autoscalingPolicy;
  /// An optional textual description of the resource.
  final pulumi.Input<String>? description;
  /// The initial number of nodes in the node group. One of `initial_size` or `autoscaling_policy` must be configured on resource creation.
  final pulumi.Input<int>? initialSize;
  /// Specifies the frequency of planned maintenance events. Set to one of the following:
  /// - AS_NEEDED: Hosts are eligible to receive infrastructure and hypervisor updates as they become available.
  /// - RECURRENT: Hosts receive planned infrastructure and hypervisor updates on a periodic basis, but not more frequently than every 28 days. This minimizes the number of planned maintenance operations on individual hosts and reduces the frequency of disruptions, both live migrations and terminations, on individual VMs.
  /// Possible values are: `AS_NEEDED`, `RECURRENT`.
  final pulumi.Input<String>? maintenanceInterval;
  /// Specifies how to handle instances when a node in the group undergoes maintenance. Set to one of: DEFAULT, RESTART_IN_PLACE, or MIGRATE_WITHIN_NODE_GROUP. The default value is DEFAULT.
  final pulumi.Input<String>? maintenancePolicy;
  /// contains properties for the timeframe of maintenance
  /// Structure is documented below.
  final pulumi.Input<NodeGroupMaintenanceWindow>? maintenanceWindow;
  /// Name of the resource.
  final pulumi.Input<String>? name;
  /// The URL of the node template to which this node group belongs.
  final pulumi.Input<String> nodeTemplate;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Share settings for the node group.
  /// Structure is documented below.
  final pulumi.Input<NodeGroupShareSettings>? shareSettings;
  /// Zone where this node group is located
  final pulumi.Input<String>? zone;

  /// Creates a new [NodeGroupArgs].
  /// [autoscalingPolicy] If you use sole-tenant nodes for your workloads, you can use the node
  /// [description] An optional textual description of the resource.
  /// [initialSize] The initial number of nodes in the node group. One of `initial_size` or `autoscaling_policy` must be configured on resource creation.
  /// [maintenanceInterval] Specifies the frequency of planned maintenance events. Set to one of the following:
  /// [maintenancePolicy] Specifies how to handle instances when a node in the group undergoes maintenance. Set to one of: DEFAULT, RESTART_IN_PLACE, or MIGRATE_WITHIN_NODE_GROUP. The default value is DEFAULT.
  /// [maintenanceWindow] contains properties for the timeframe of maintenance
  /// [name] Name of the resource.
  /// [nodeTemplate] The URL of the node template to which this node group belongs.
  /// [project] The ID of the project in which the resource belongs.
  /// [shareSettings] Share settings for the node group.
  /// [zone] Zone where this node group is located
  const NodeGroupArgs({
    this.autoscalingPolicy,
    this.description,
    this.initialSize,
    this.maintenanceInterval,
    this.maintenancePolicy,
    this.maintenanceWindow,
    this.name,
    required this.nodeTemplate,
    this.project,
    this.shareSettings,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingPolicy': ?pulumi.Input.mapOptionalInputValue<NodeGroupAutoscalingPolicy, Map<String, dynamic>>(autoscalingPolicy, (value) => value.toMap()),
      'description': ?description,
      'initialSize': ?initialSize,
      'maintenanceInterval': ?maintenanceInterval,
      'maintenancePolicy': ?maintenancePolicy,
      'maintenanceWindow': ?pulumi.Input.mapOptionalInputValue<NodeGroupMaintenanceWindow, Map<String, dynamic>>(maintenanceWindow, (value) => value.toMap()),
      'name': ?name,
      'nodeTemplate': nodeTemplate,
      'project': ?project,
      'shareSettings': ?pulumi.Input.mapOptionalInputValue<NodeGroupShareSettings, Map<String, dynamic>>(shareSettings, (value) => value.toMap()),
      'zone': ?zone,
    };
  }

  factory NodeGroupArgs.fromMap(Map<String, dynamic> map) {
    return NodeGroupArgs(
      autoscalingPolicy: (() { final guardedValue = map['autoscalingPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodeGroupAutoscalingPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      initialSize: (() { final guardedValue = map['initialSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maintenanceInterval: (() { final guardedValue = map['maintenanceInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenancePolicy: (() { final guardedValue = map['maintenancePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenanceWindow: (() { final guardedValue = map['maintenanceWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodeGroupMaintenanceWindow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeTemplate: pulumi.Input.fromValue(map['nodeTemplate'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shareSettings: (() { final guardedValue = map['shareSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodeGroupShareSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

