// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'intake_vlan_attachment.dart';
import 'network_config_bandwidth.dart';
import 'network_config_service_cidr.dart';
import 'network_config_type.dart';

/// Configuration parameters for a new network.
class NetworkConfig {
  /// Interconnect bandwidth. Set only when type is CLIENT.
  final NetworkConfigBandwidth? bandwidth;
  /// CIDR range of the network.
  final String? cidr;
  /// The GCP service of the network. Available gcp_service are in https://cloud.google.com/bare-metal/docs/bms-planning.
  final String? gcpService;
  /// A transient unique identifier to identify a volume within an ProvisioningConfig request.
  final String? id;
  /// The JumboFramesEnabled option for customer to set.
  final bool? jumboFramesEnabled;
  /// Service CIDR, if any.
  final NetworkConfigServiceCidr? serviceCidr;
  /// The type of this network, either Client or Private.
  final NetworkConfigType? type;
  /// User note field, it can be used by customers to add additional information for the BMS Ops team .
  final String? userNote;
  /// List of VLAN attachments. As of now there are always 2 attachments, but it is going to change in the future (multi vlan).
  final List<IntakeVlanAttachment>? vlanAttachments;
  /// Whether the VLAN attachment pair is located in the same project.
  final bool? vlanSameProject;

  /// Creates a new [NetworkConfig].
  /// [bandwidth] Interconnect bandwidth. Set only when type is CLIENT.
  /// [cidr] CIDR range of the network.
  /// [gcpService] The GCP service of the network. Available gcp_service are in https://cloud.google.com/bare-metal/docs/bms-planning.
  /// [id] A transient unique identifier to identify a volume within an ProvisioningConfig request.
  /// [jumboFramesEnabled] The JumboFramesEnabled option for customer to set.
  /// [serviceCidr] Service CIDR, if any.
  /// [type] The type of this network, either Client or Private.
  /// [userNote] User note field, it can be used by customers to add additional information for the BMS Ops team .
  /// [vlanAttachments] List of VLAN attachments. As of now there are always 2 attachments, but it is going to change in the future (multi vlan).
  /// [vlanSameProject] Whether the VLAN attachment pair is located in the same project.
  NetworkConfig({
    this.bandwidth,
    this.cidr,
    this.gcpService,
    this.id,
    this.jumboFramesEnabled,
    this.serviceCidr,
    this.type,
    this.userNote,
    this.vlanAttachments,
    this.vlanSameProject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': ?bandwidth == null ? null : bandwidth!.value,
      'cidr': ?cidr,
      'gcpService': ?gcpService,
      'id': ?id,
      'jumboFramesEnabled': ?jumboFramesEnabled,
      'serviceCidr': ?serviceCidr == null ? null : serviceCidr!.value,
      'type': ?type == null ? null : type!.value,
      'userNote': ?userNote,
      'vlanAttachments': ?vlanAttachments == null ? null : pulumi.Input.encodeList<IntakeVlanAttachment, Map<String, dynamic>>(vlanAttachments!, (value) => value.toMap()),
      'vlanSameProject': ?vlanSameProject,
    };
  }

  factory NetworkConfig.fromMap(Map<String, dynamic> map) {
    return NetworkConfig(
      bandwidth: map['bandwidth'] == null ? null : NetworkConfigBandwidth.fromValue(map['bandwidth'] as String),
      cidr: map['cidr'] == null ? null : map['cidr'] as String,
      gcpService: map['gcpService'] == null ? null : map['gcpService'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      jumboFramesEnabled: map['jumboFramesEnabled'] == null ? null : map['jumboFramesEnabled'] as bool,
      serviceCidr: map['serviceCidr'] == null ? null : NetworkConfigServiceCidr.fromValue(map['serviceCidr'] as String),
      type: map['type'] == null ? null : NetworkConfigType.fromValue(map['type'] as String),
      userNote: map['userNote'] == null ? null : map['userNote'] as String,
      vlanAttachments: map['vlanAttachments'] == null ? null : pulumi.Input.decodeList<IntakeVlanAttachment>(map['vlanAttachments'], (value) => IntakeVlanAttachment.fromMap((value as Map).cast<String, dynamic>())),
      vlanSameProject: map['vlanSameProject'] == null ? null : map['vlanSameProject'] as bool,
    );
  }
}

