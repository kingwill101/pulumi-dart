// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_group_autoscaling_policy.dart';
import 'node_group_maintenance_window.dart';
import 'node_group_share_settings.dart';

/// Input properties used for looking up and filtering NodeGroup resources.
class NodeGroupState {
  /// If you use sole-tenant nodes for your workloads, you can use the node
  /// group autoscaler to automatically manage the sizes of your node groups.
  /// One of `initial_size` or `autoscaling_policy` must be configured on resource creation.
  /// Structure is documented below.
  final pulumi.Input<NodeGroupAutoscalingPolicy>? autoscalingPolicy;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
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
  final pulumi.Input<String>? nodeTemplate;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// Share settings for the node group.
  /// Structure is documented below.
  final pulumi.Input<NodeGroupShareSettings>? shareSettings;
  /// The total number of nodes in the node group.
  final pulumi.Input<int>? size;
  /// Zone where this node group is located
  final pulumi.Input<String>? zone;

  /// Creates a new [NodeGroupState].
  /// [autoscalingPolicy] If you use sole-tenant nodes for your workloads, you can use the node
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional textual description of the resource.
  /// [initialSize] The initial number of nodes in the node group. One of `initial_size` or `autoscaling_policy` must be configured on resource creation.
  /// [maintenanceInterval] Specifies the frequency of planned maintenance events. Set to one of the following:
  /// [maintenancePolicy] Specifies how to handle instances when a node in the group undergoes maintenance. Set to one of: DEFAULT, RESTART_IN_PLACE, or MIGRATE_WITHIN_NODE_GROUP. The default value is DEFAULT.
  /// [maintenanceWindow] contains properties for the timeframe of maintenance
  /// [name] Name of the resource.
  /// [nodeTemplate] The URL of the node template to which this node group belongs.
  /// [project] The ID of the project in which the resource belongs.
  /// [selfLink] The URI of the created resource.
  /// [shareSettings] Share settings for the node group.
  /// [size] The total number of nodes in the node group.
  /// [zone] Zone where this node group is located
  NodeGroupState({
    pulumi.Output<NodeGroupAutoscalingPolicy>? autoscalingPolicy,
    pulumi.Output<String>? creationTimestamp,
    pulumi.Output<String>? description,
    pulumi.Output<int>? initialSize,
    pulumi.Output<String>? maintenanceInterval,
    pulumi.Output<String>? maintenancePolicy,
    pulumi.Output<NodeGroupMaintenanceWindow>? maintenanceWindow,
    pulumi.Output<String>? name,
    pulumi.Output<String>? nodeTemplate,
    pulumi.Output<String>? project,
    pulumi.Output<String>? selfLink,
    pulumi.Output<NodeGroupShareSettings>? shareSettings,
    pulumi.Output<int>? size,
    pulumi.Output<String>? zone,
  }) :
      autoscalingPolicy = pulumi.Input.asOptionalInput<NodeGroupAutoscalingPolicy>(autoscalingPolicy),
      creationTimestamp = pulumi.Input.asOptionalInput<String>(creationTimestamp),
      description = pulumi.Input.asOptionalInput<String>(description),
      initialSize = pulumi.Input.asOptionalInput<int>(initialSize),
      maintenanceInterval = pulumi.Input.asOptionalInput<String>(maintenanceInterval),
      maintenancePolicy = pulumi.Input.asOptionalInput<String>(maintenancePolicy),
      maintenanceWindow = pulumi.Input.asOptionalInput<NodeGroupMaintenanceWindow>(maintenanceWindow),
      name = pulumi.Input.asOptionalInput<String>(name),
      nodeTemplate = pulumi.Input.asOptionalInput<String>(nodeTemplate),
      project = pulumi.Input.asOptionalInput<String>(project),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      shareSettings = pulumi.Input.asOptionalInput<NodeGroupShareSettings>(shareSettings),
      size = pulumi.Input.asOptionalInput<int>(size),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingPolicy': ?pulumi.Input.mapOptionalInputValue<NodeGroupAutoscalingPolicy, Map<String, dynamic>>(autoscalingPolicy, (value) => value.toMap()),
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'initialSize': ?initialSize,
      'maintenanceInterval': ?maintenanceInterval,
      'maintenancePolicy': ?maintenancePolicy,
      'maintenanceWindow': ?pulumi.Input.mapOptionalInputValue<NodeGroupMaintenanceWindow, Map<String, dynamic>>(maintenanceWindow, (value) => value.toMap()),
      'name': ?name,
      'nodeTemplate': ?nodeTemplate,
      'project': ?project,
      'selfLink': ?selfLink,
      'shareSettings': ?pulumi.Input.mapOptionalInputValue<NodeGroupShareSettings, Map<String, dynamic>>(shareSettings, (value) => value.toMap()),
      'size': ?size,
      'zone': ?zone,
    };
  }

  factory NodeGroupState.fromMap(Map<String, dynamic> map) {
    return NodeGroupState(
      autoscalingPolicy: map['autoscalingPolicy'] == null ? null : pulumi.Output.create<NodeGroupAutoscalingPolicy>(NodeGroupAutoscalingPolicy.fromMap((map['autoscalingPolicy'] as Map).cast<String, dynamic>())),
      creationTimestamp: map['creationTimestamp'] == null ? null : pulumi.Output.create<String>(map['creationTimestamp'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      initialSize: map['initialSize'] == null ? null : pulumi.Output.create<int>(map['initialSize'] as int),
      maintenanceInterval: map['maintenanceInterval'] == null ? null : pulumi.Output.create<String>(map['maintenanceInterval'] as String),
      maintenancePolicy: map['maintenancePolicy'] == null ? null : pulumi.Output.create<String>(map['maintenancePolicy'] as String),
      maintenanceWindow: map['maintenanceWindow'] == null ? null : pulumi.Output.create<NodeGroupMaintenanceWindow>(NodeGroupMaintenanceWindow.fromMap((map['maintenanceWindow'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nodeTemplate: map['nodeTemplate'] == null ? null : pulumi.Output.create<String>(map['nodeTemplate'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      shareSettings: map['shareSettings'] == null ? null : pulumi.Output.create<NodeGroupShareSettings>(NodeGroupShareSettings.fromMap((map['shareSettings'] as Map).cast<String, dynamic>())),
      size: map['size'] == null ? null : pulumi.Output.create<int>(map['size'] as int),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

