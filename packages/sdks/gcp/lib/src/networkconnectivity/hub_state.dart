// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hub_routing_vpc.dart';

/// Input properties used for looking up and filtering Hub resources.
class HubState {
  /// Output only. The time the hub was created.
  final pulumi.Input<String>? createTime;
  /// An optional description of the hub.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Whether Private Service Connect transitivity is enabled for the hub. If true, Private Service Connect endpoints in VPC spokes attached to the hub are made accessible to other VPC spokes attached to the hub. The default value is false.
  final pulumi.Input<bool>? exportPsc;
  /// Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Immutable. The name of the hub. Hub names must be unique. They use the following form: `projects/{project_number}/locations/global/hubs/{hub_id}`
  final pulumi.Input<String>? name;
  /// Optional. The policy mode of this hub. This field can be either PRESET or CUSTOM. If unspecified, the policyMode defaults to PRESET.
  /// Possible values are: `CUSTOM`, `PRESET`.
  final pulumi.Input<String>? policyMode;
  /// Optional. The topology implemented in this hub. Currently, this field is only used when policyMode = PRESET. The available preset topologies are MESH and STAR. If presetTopology is unspecified and policyMode = PRESET, the presetTopology defaults to MESH. When policyMode = CUSTOM, the presetTopology is set to PRESET_TOPOLOGY_UNSPECIFIED.
  /// Possible values are: `MESH`, `STAR`, `HYBRID_INSPECTION`.
  final pulumi.Input<String>? presetTopology;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The VPC network associated with this hub's spokes. All of the VPN tunnels, VLAN attachments, and router appliance instances referenced by this hub's spokes must belong to this VPC network. This field is read-only. Network Connectivity Center automatically populates it based on the set of spokes attached to the hub.
  /// Structure is documented below.
  final pulumi.Input<List<HubRoutingVpc>>? routingVpcs;
  /// Output only. The current lifecycle state of this hub.
  final pulumi.Input<String>? state;
  /// Output only. The Google-generated UUID for the hub. This value is unique across all hub resources. If a hub is deleted and another with the same name is created, the new hub is assigned a different unique_id.
  final pulumi.Input<String>? uniqueId;
  /// Output only. The time the hub was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [HubState].
  /// [createTime] Output only. The time the hub was created.
  /// [description] An optional description of the hub.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [exportPsc] Whether Private Service Connect transitivity is enabled for the hub. If true, Private Service Connect endpoints in VPC spokes attached to the hub are made accessible to other VPC spokes attached to the hub. The default value is false.
  /// [labels] Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// [name] Immutable. The name of the hub. Hub names must be unique. They use the following form: `projects/{project_number}/locations/global/hubs/{hub_id}`
  /// [policyMode] Optional. The policy mode of this hub. This field can be either PRESET or CUSTOM. If unspecified, the policyMode defaults to PRESET.
  /// [presetTopology] Optional. The topology implemented in this hub. Currently, this field is only used when policyMode = PRESET. The available preset topologies are MESH and STAR. If presetTopology is unspecified and policyMode = PRESET, the presetTopology defaults to MESH. When policyMode = CUSTOM, the presetTopology is set to PRESET_TOPOLOGY_UNSPECIFIED.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [routingVpcs] The VPC network associated with this hub's spokes. All of the VPN tunnels, VLAN attachments, and router appliance instances referenced by this hub's spokes must belong to this VPC network. This field is read-only. Network Connectivity Center automatically populates it based on the set of spokes attached to the hub.
  /// [state] Output only. The current lifecycle state of this hub.
  /// [uniqueId] Output only. The Google-generated UUID for the hub. This value is unique across all hub resources. If a hub is deleted and another with the same name is created, the new hub is assigned a different unique_id.
  /// [updateTime] Output only. The time the hub was last updated.
  HubState({
    this.createTime,
    this.description,
    this.effectiveLabels,
    this.exportPsc,
    this.labels,
    this.name,
    this.policyMode,
    this.presetTopology,
    this.project,
    this.pulumiLabels,
    this.routingVpcs,
    this.state,
    this.uniqueId,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'exportPsc': ?exportPsc,
      'labels': ?labels,
      'name': ?name,
      'policyMode': ?policyMode,
      'presetTopology': ?presetTopology,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'routingVpcs': ?pulumi.Input.mapOptionalInputValue<List<HubRoutingVpc>, List<Map<String, dynamic>>>(routingVpcs, (value) => pulumi.Input.encodeList<HubRoutingVpc, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': ?state,
      'uniqueId': ?uniqueId,
      'updateTime': ?updateTime,
    };
  }

  factory HubState.fromMap(Map<String, dynamic> map) {
    return HubState(
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      exportPsc: map['exportPsc'] == null ? null : (map['exportPsc'] as bool).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      policyMode: map['policyMode'] == null ? null : (map['policyMode'] as String).input(),
      presetTopology: map['presetTopology'] == null ? null : (map['presetTopology'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      routingVpcs: map['routingVpcs'] == null ? null : (pulumi.Input.decodeList<HubRoutingVpc>(map['routingVpcs'], (value) => HubRoutingVpc.fromMap((value as Map).cast<String, dynamic>()))).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      uniqueId: map['uniqueId'] == null ? null : (map['uniqueId'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

