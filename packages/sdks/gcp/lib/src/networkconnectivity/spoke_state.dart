// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spoke_gateway.dart';
import 'spoke_linked_interconnect_attachments.dart';
import 'spoke_linked_producer_vpc_network.dart';
import 'spoke_linked_router_appliance_instances.dart';
import 'spoke_linked_vpc_network.dart';
import 'spoke_linked_vpn_tunnels.dart';
import 'spoke_reason.dart';

/// Input properties used for looking up and filtering Spoke resources.
class SpokeState {
  /// Output only. The time the spoke was created.
  final pulumi.Input<String>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// An optional description of the spoke.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// This is a gateway that can apply specialized processing to traffic going through it.
  /// Structure is documented below.
  final pulumi.Input<SpokeGateway>? gateway;
  /// The name of the group that this spoke is associated with.
  final pulumi.Input<String>? group;
  /// Immutable. The URI of the hub that this spoke is attached to.
  final pulumi.Input<String>? hub;
  /// Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// A collection of VLAN attachment resources. These resources should be redundant attachments that all advertise the same prefixes to Google Cloud. Alternatively, in active/passive configurations, all attachments should be capable of advertising the same prefixes.
  /// Structure is documented below.
  final pulumi.Input<SpokeLinkedInterconnectAttachments>? linkedInterconnectAttachments;
  /// Producer VPC network that is associated with the spoke.
  /// Structure is documented below.
  final pulumi.Input<SpokeLinkedProducerVpcNetwork>? linkedProducerVpcNetwork;
  /// The URIs of linked Router appliance resources
  /// Structure is documented below.
  final pulumi.Input<SpokeLinkedRouterApplianceInstances>? linkedRouterApplianceInstances;
  /// VPC network that is associated with the spoke.
  /// Structure is documented below.
  final pulumi.Input<SpokeLinkedVpcNetwork>? linkedVpcNetwork;
  /// The URIs of linked VPN tunnel resources
  /// Structure is documented below.
  final pulumi.Input<SpokeLinkedVpnTunnels>? linkedVpnTunnels;
  /// The location for the resource
  final pulumi.Input<String>? location;
  /// Immutable. The name of the spoke. Spoke names must be unique.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The reasons for the current state in the lifecycle
  /// Structure is documented below.
  final pulumi.Input<List<SpokeReason>>? reasons;
  /// Output only. The current lifecycle state of this spoke.
  final pulumi.Input<String>? state;
  /// Output only. The Google-generated UUID for the spoke. This value is unique across all spoke resources. If a spoke is deleted and another with the same name is created, the new spoke is assigned a different unique_id.
  final pulumi.Input<String>? uniqueId;
  /// Output only. The time the spoke was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [SpokeState].
  /// [createTime] Output only. The time the spoke was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of the spoke.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [gateway] This is a gateway that can apply specialized processing to traffic going through it.
  /// [group] The name of the group that this spoke is associated with.
  /// [hub] Immutable. The URI of the hub that this spoke is attached to.
  /// [labels] Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// [linkedInterconnectAttachments] A collection of VLAN attachment resources. These resources should be redundant attachments that all advertise the same prefixes to Google Cloud. Alternatively, in active/passive configurations, all attachments should be capable of advertising the same prefixes.
  /// [linkedProducerVpcNetwork] Producer VPC network that is associated with the spoke.
  /// [linkedRouterApplianceInstances] The URIs of linked Router appliance resources
  /// [linkedVpcNetwork] VPC network that is associated with the spoke.
  /// [linkedVpnTunnels] The URIs of linked VPN tunnel resources
  /// [location] The location for the resource
  /// [name] Immutable. The name of the spoke. Spoke names must be unique.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [reasons] The reasons for the current state in the lifecycle
  /// [state] Output only. The current lifecycle state of this spoke.
  /// [uniqueId] Output only. The Google-generated UUID for the spoke. This value is unique across all spoke resources. If a spoke is deleted and another with the same name is created, the new spoke is assigned a different unique_id.
  /// [updateTime] Output only. The time the spoke was last updated.
  const SpokeState({
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.effectiveLabels,
    this.gateway,
    this.group,
    this.hub,
    this.labels,
    this.linkedInterconnectAttachments,
    this.linkedProducerVpcNetwork,
    this.linkedRouterApplianceInstances,
    this.linkedVpcNetwork,
    this.linkedVpnTunnels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.reasons,
    this.state,
    this.uniqueId,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'gateway': ?pulumi.Input.mapOptionalInputValue<SpokeGateway, Map<String, dynamic>>(gateway, (value) => value.toMap()),
      'group': ?group,
      'hub': ?hub,
      'labels': ?labels,
      'linkedInterconnectAttachments': ?pulumi.Input.mapOptionalInputValue<SpokeLinkedInterconnectAttachments, Map<String, dynamic>>(linkedInterconnectAttachments, (value) => value.toMap()),
      'linkedProducerVpcNetwork': ?pulumi.Input.mapOptionalInputValue<SpokeLinkedProducerVpcNetwork, Map<String, dynamic>>(linkedProducerVpcNetwork, (value) => value.toMap()),
      'linkedRouterApplianceInstances': ?pulumi.Input.mapOptionalInputValue<SpokeLinkedRouterApplianceInstances, Map<String, dynamic>>(linkedRouterApplianceInstances, (value) => value.toMap()),
      'linkedVpcNetwork': ?pulumi.Input.mapOptionalInputValue<SpokeLinkedVpcNetwork, Map<String, dynamic>>(linkedVpcNetwork, (value) => value.toMap()),
      'linkedVpnTunnels': ?pulumi.Input.mapOptionalInputValue<SpokeLinkedVpnTunnels, Map<String, dynamic>>(linkedVpnTunnels, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'reasons': ?pulumi.Input.mapOptionalInputValue<List<SpokeReason>, List<Map<String, dynamic>>>(reasons, (value) => pulumi.Input.encodeList<SpokeReason, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': ?state,
      'uniqueId': ?uniqueId,
      'updateTime': ?updateTime,
    };
  }

  factory SpokeState.fromMap(Map<String, dynamic> map) {
    return SpokeState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      gateway: (() { final guardedValue = map['gateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpokeGateway.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hub: (() { final guardedValue = map['hub']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      linkedInterconnectAttachments: (() { final guardedValue = map['linkedInterconnectAttachments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpokeLinkedInterconnectAttachments.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkedProducerVpcNetwork: (() { final guardedValue = map['linkedProducerVpcNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpokeLinkedProducerVpcNetwork.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkedRouterApplianceInstances: (() { final guardedValue = map['linkedRouterApplianceInstances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpokeLinkedRouterApplianceInstances.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkedVpcNetwork: (() { final guardedValue = map['linkedVpcNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpokeLinkedVpcNetwork.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkedVpnTunnels: (() { final guardedValue = map['linkedVpnTunnels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpokeLinkedVpnTunnels.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      reasons: (() { final guardedValue = map['reasons']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SpokeReason>(guardedValue, (value) => SpokeReason.fromMap((value as Map).cast<String, dynamic>()))); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uniqueId: (() { final guardedValue = map['uniqueId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
