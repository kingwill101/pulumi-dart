// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'intake_vlan_attachment.dart';
import 'network_config_bandwidth.dart';
import 'network_config_service_cidr.dart';
import 'network_config_type.dart';

/// Configuration parameters for a new network.
class NetworkConfig {
  /// Interconnect bandwidth. Set only when type is CLIENT.
  final pulumi.Input<NetworkConfigBandwidth>? bandwidth;
  /// CIDR range of the network.
  final pulumi.Input<String>? cidr;
  /// The GCP service of the network. Available gcp_service are in https://cloud.google.com/bare-metal/docs/bms-planning.
  final pulumi.Input<String>? gcpService;
  /// A transient unique identifier to identify a volume within an ProvisioningConfig request.
  final pulumi.Input<String>? id;
  /// The JumboFramesEnabled option for customer to set.
  final pulumi.Input<bool>? jumboFramesEnabled;
  /// Service CIDR, if any.
  final pulumi.Input<NetworkConfigServiceCidr>? serviceCidr;
  /// The type of this network, either Client or Private.
  final pulumi.Input<NetworkConfigType>? type;
  /// User note field, it can be used by customers to add additional information for the BMS Ops team .
  final pulumi.Input<String>? userNote;
  /// List of VLAN attachments. As of now there are always 2 attachments, but it is going to change in the future (multi vlan).
  final pulumi.Input<List<IntakeVlanAttachment>>? vlanAttachments;
  /// Whether the VLAN attachment pair is located in the same project.
  final pulumi.Input<bool>? vlanSameProject;

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
  const NetworkConfig({
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
      'bandwidth': ?pulumi.Input.mapOptionalInputValue<NetworkConfigBandwidth, String>(bandwidth, (value) => value.wireValue),
      'cidr': ?cidr,
      'gcpService': ?gcpService,
      'id': ?id,
      'jumboFramesEnabled': ?jumboFramesEnabled,
      'serviceCidr': ?pulumi.Input.mapOptionalInputValue<NetworkConfigServiceCidr, String>(serviceCidr, (value) => value.wireValue),
      'type': ?pulumi.Input.mapOptionalInputValue<NetworkConfigType, String>(type, (value) => value.wireValue),
      'userNote': ?userNote,
      'vlanAttachments': ?pulumi.Input.mapOptionalInputValue<List<IntakeVlanAttachment>, List<Map<String, dynamic>>>(vlanAttachments, (value) => pulumi.Input.encodeList<IntakeVlanAttachment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vlanSameProject': ?vlanSameProject,
    };
  }

  factory NetworkConfig.fromMap(Map<String, dynamic> map) {
    return NetworkConfig(
      bandwidth: (() { final guardedValue = map['bandwidth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkConfigBandwidth.fromValue(guardedValue as String)); })(),
      cidr: (() { final guardedValue = map['cidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gcpService: (() { final guardedValue = map['gcpService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jumboFramesEnabled: (() { final guardedValue = map['jumboFramesEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serviceCidr: (() { final guardedValue = map['serviceCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkConfigServiceCidr.fromValue(guardedValue as String)); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkConfigType.fromValue(guardedValue as String)); })(),
      userNote: (() { final guardedValue = map['userNote']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vlanAttachments: (() { final guardedValue = map['vlanAttachments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IntakeVlanAttachment>(guardedValue, (value) => IntakeVlanAttachment.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vlanSameProject: (() { final guardedValue = map['vlanSameProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
