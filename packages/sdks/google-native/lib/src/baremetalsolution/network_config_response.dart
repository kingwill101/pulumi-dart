// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'intake_vlan_attachment_response.dart';

/// Configuration parameters for a new network.
class NetworkConfigResponse {
  /// Interconnect bandwidth. Set only when type is CLIENT.
  final pulumi.Input<String> bandwidth;
  /// CIDR range of the network.
  final pulumi.Input<String> cidr;
  /// The GCP service of the network. Available gcp_service are in https://cloud.google.com/bare-metal/docs/bms-planning.
  final pulumi.Input<String> gcpService;
  /// The JumboFramesEnabled option for customer to set.
  final pulumi.Input<bool> jumboFramesEnabled;
  /// The name of the network config.
  final pulumi.Input<String> name;
  /// Service CIDR, if any.
  final pulumi.Input<String> serviceCidr;
  /// The type of this network, either Client or Private.
  final pulumi.Input<String> type;
  /// User note field, it can be used by customers to add additional information for the BMS Ops team .
  final pulumi.Input<String> userNote;
  /// List of VLAN attachments. As of now there are always 2 attachments, but it is going to change in the future (multi vlan).
  final pulumi.Input<List<IntakeVlanAttachmentResponse>> vlanAttachments;
  /// Whether the VLAN attachment pair is located in the same project.
  final pulumi.Input<bool> vlanSameProject;

  /// Creates a new [NetworkConfigResponse].
  /// [bandwidth] Interconnect bandwidth. Set only when type is CLIENT.
  /// [cidr] CIDR range of the network.
  /// [gcpService] The GCP service of the network. Available gcp_service are in https://cloud.google.com/bare-metal/docs/bms-planning.
  /// [jumboFramesEnabled] The JumboFramesEnabled option for customer to set.
  /// [name] The name of the network config.
  /// [serviceCidr] Service CIDR, if any.
  /// [type] The type of this network, either Client or Private.
  /// [userNote] User note field, it can be used by customers to add additional information for the BMS Ops team .
  /// [vlanAttachments] List of VLAN attachments. As of now there are always 2 attachments, but it is going to change in the future (multi vlan).
  /// [vlanSameProject] Whether the VLAN attachment pair is located in the same project.
  NetworkConfigResponse({
    required this.bandwidth,
    required this.cidr,
    required this.gcpService,
    required this.jumboFramesEnabled,
    required this.name,
    required this.serviceCidr,
    required this.type,
    required this.userNote,
    required this.vlanAttachments,
    required this.vlanSameProject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': bandwidth,
      'cidr': cidr,
      'gcpService': gcpService,
      'jumboFramesEnabled': jumboFramesEnabled,
      'name': name,
      'serviceCidr': serviceCidr,
      'type': type,
      'userNote': userNote,
      'vlanAttachments': pulumi.Input.mapInputValue<List<IntakeVlanAttachmentResponse>, List<Map<String, dynamic>>>(vlanAttachments, (value) => pulumi.Input.encodeList<IntakeVlanAttachmentResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vlanSameProject': vlanSameProject,
    };
  }

  factory NetworkConfigResponse.fromMap(Map<String, dynamic> map) {
    return NetworkConfigResponse(
      bandwidth: (map['bandwidth'] as String).input(),
      cidr: (map['cidr'] as String).input(),
      gcpService: (map['gcpService'] as String).input(),
      jumboFramesEnabled: (map['jumboFramesEnabled'] as bool).input(),
      name: (map['name'] as String).input(),
      serviceCidr: (map['serviceCidr'] as String).input(),
      type: (map['type'] as String).input(),
      userNote: (map['userNote'] as String).input(),
      vlanAttachments: (pulumi.Input.decodeList<IntakeVlanAttachmentResponse>(map['vlanAttachments'], (value) => IntakeVlanAttachmentResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vlanSameProject: (map['vlanSameProject'] as bool).input(),
    );
  }
}

