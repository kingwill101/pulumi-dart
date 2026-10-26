// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_interconnect_attachments_response.dart';
import 'linked_router_appliance_instances_response.dart';
import 'linked_vpc_network_response.dart';
import 'linked_vpn_tunnels_response.dart';
import 'state_reason_response.dart';

/// Result data returned by getSpoke.
class GetSpokeResult {
  /// The time the spoke was created.
  final String? createTime;
  /// An optional description of the spoke.
  final String? description;
  /// Optional. The name of the group that this spoke is associated with.
  final String? group;
  /// Immutable. The name of the hub that this spoke is attached to.
  final String? hub;
  /// Optional labels in key-value pair format. For more information about labels, see [Requirements for labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  final Map<String, String>? labels;
  /// VLAN attachments that are associated with the spoke.
  final LinkedInterconnectAttachmentsResponse? linkedInterconnectAttachments;
  /// Router appliance instances that are associated with the spoke.
  final LinkedRouterApplianceInstancesResponse? linkedRouterApplianceInstances;
  /// Optional. VPC network that is associated with the spoke.
  final LinkedVpcNetworkResponse? linkedVpcNetwork;
  /// VPN tunnels that are associated with the spoke.
  final LinkedVpnTunnelsResponse? linkedVpnTunnels;
  /// Immutable. The name of the spoke. Spoke names must be unique. They use the following form: `projects/{project_number}/locations/{region}/spokes/{spoke_id}`
  final String? name;
  /// The reasons for current state of the spoke. Only present when the spoke is in the `INACTIVE` state.
  final List<StateReasonResponse>? reasons;
  /// The type of resource associated with the spoke.
  final String? spokeType;
  /// The current lifecycle state of this spoke.
  final String? state;
  /// The Google-generated UUID for the spoke. This value is unique across all spoke resources. If a spoke is deleted and another with the same name is created, the new spoke is assigned a different `unique_id`.
  final String? uniqueId;
  /// The time the spoke was last updated.
  final String? updateTime;

  /// Creates a new [GetSpokeResult].
  /// [createTime] The time the spoke was created.
  /// [description] An optional description of the spoke.
  /// [group] Optional. The name of the group that this spoke is associated with.
  /// [hub] Immutable. The name of the hub that this spoke is attached to.
  /// [labels] Optional labels in key-value pair format. For more information about labels, see [Requirements for labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// [linkedInterconnectAttachments] VLAN attachments that are associated with the spoke.
  /// [linkedRouterApplianceInstances] Router appliance instances that are associated with the spoke.
  /// [linkedVpcNetwork] Optional. VPC network that is associated with the spoke.
  /// [linkedVpnTunnels] VPN tunnels that are associated with the spoke.
  /// [name] Immutable. The name of the spoke. Spoke names must be unique. They use the following form: `projects/{project_number}/locations/{region}/spokes/{spoke_id}`
  /// [reasons] The reasons for current state of the spoke. Only present when the spoke is in the `INACTIVE` state.
  /// [spokeType] The type of resource associated with the spoke.
  /// [state] The current lifecycle state of this spoke.
  /// [uniqueId] The Google-generated UUID for the spoke. This value is unique across all spoke resources. If a spoke is deleted and another with the same name is created, the new spoke is assigned a different `unique_id`.
  /// [updateTime] The time the spoke was last updated.
  const GetSpokeResult({
    this.createTime,
    this.description,
    this.group,
    this.hub,
    this.labels,
    this.linkedInterconnectAttachments,
    this.linkedRouterApplianceInstances,
    this.linkedVpcNetwork,
    this.linkedVpnTunnels,
    this.name,
    this.reasons,
    this.spokeType,
    this.state,
    this.uniqueId,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'group': ?group,
      'hub': ?hub,
      'labels': ?labels,
      'linkedInterconnectAttachments': ?linkedInterconnectAttachments?.toMap(),
      'linkedRouterApplianceInstances': ?linkedRouterApplianceInstances?.toMap(),
      'linkedVpcNetwork': ?linkedVpcNetwork?.toMap(),
      'linkedVpnTunnels': ?linkedVpnTunnels?.toMap(),
      'name': ?name,
      'reasons': ?(() { final guardedValue = reasons; if (guardedValue == null) return null; return pulumi.Input.encodeList<StateReasonResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'spokeType': ?spokeType,
      'state': ?state,
      'uniqueId': ?uniqueId,
      'updateTime': ?updateTime,
    };
  }

  factory GetSpokeResult.fromMap(Map<String, dynamic> map) {
    return GetSpokeResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hub: (() { final guardedValue = map['hub']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      linkedInterconnectAttachments: (() { final guardedValue = map['linkedInterconnectAttachments']; if (guardedValue == null) return null; return LinkedInterconnectAttachmentsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      linkedRouterApplianceInstances: (() { final guardedValue = map['linkedRouterApplianceInstances']; if (guardedValue == null) return null; return LinkedRouterApplianceInstancesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      linkedVpcNetwork: (() { final guardedValue = map['linkedVpcNetwork']; if (guardedValue == null) return null; return LinkedVpcNetworkResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      linkedVpnTunnels: (() { final guardedValue = map['linkedVpnTunnels']; if (guardedValue == null) return null; return LinkedVpnTunnelsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reasons: (() { final guardedValue = map['reasons']; if (guardedValue == null) return null; return pulumi.Input.decodeList<StateReasonResponse>(guardedValue, (value) => StateReasonResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      spokeType: (() { final guardedValue = map['spokeType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uniqueId: (() { final guardedValue = map['uniqueId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
