// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_attachment_l2_forwarding_appliance_mapping.dart';
import 'interconnect_attachment_l2_forwarding_geneve_header.dart';

class InterconnectAttachmentL2Forwarding {
  /// A map of VLAN tags to appliances and optional inner mapping rules.
  final pulumi.Input<List<InterconnectAttachmentL2ForwardingApplianceMapping>?>? applianceMappings;
  /// The default appliance IP address.
  final pulumi.Input<String?>? defaultApplianceIpAddress;
  /// GeneveHeader related configurations.
  final pulumi.Input<InterconnectAttachmentL2ForwardingGeneveHeader?>? geneveHeader;
  /// URL of the network to which this attachment belongs.
  final pulumi.Input<String?>? network;
  /// The tunnel endpoint IP address.
  final pulumi.Input<String?>? tunnelEndpointIpAddress;

  /// Creates a new [InterconnectAttachmentL2Forwarding].
  /// [applianceMappings] A map of VLAN tags to appliances and optional inner mapping rules.
  /// [defaultApplianceIpAddress] The default appliance IP address.
  /// [geneveHeader] GeneveHeader related configurations.
  /// [network] URL of the network to which this attachment belongs.
  /// [tunnelEndpointIpAddress] The tunnel endpoint IP address.
  const InterconnectAttachmentL2Forwarding({
    this.applianceMappings,
    this.defaultApplianceIpAddress,
    this.geneveHeader,
    this.network,
    this.tunnelEndpointIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applianceMappings': ?pulumi.Input.mapOptionalInputValue<List<InterconnectAttachmentL2ForwardingApplianceMapping>, List<Map<String, dynamic>>>(applianceMappings, (value) => pulumi.Input.encodeList<InterconnectAttachmentL2ForwardingApplianceMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultApplianceIpAddress': ?defaultApplianceIpAddress,
      'geneveHeader': ?pulumi.Input.mapOptionalInputValue<InterconnectAttachmentL2ForwardingGeneveHeader, Map<String, dynamic>>(geneveHeader, (value) => value.toMap()),
      'network': ?network,
      'tunnelEndpointIpAddress': ?tunnelEndpointIpAddress,
    };
  }

  factory InterconnectAttachmentL2Forwarding.fromMap(Map<String, dynamic> map) {
    return InterconnectAttachmentL2Forwarding(
      applianceMappings: (() { final guardedValue = map['applianceMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InterconnectAttachmentL2ForwardingApplianceMapping>(guardedValue, (value) => InterconnectAttachmentL2ForwardingApplianceMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultApplianceIpAddress: (() { final guardedValue = map['defaultApplianceIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      geneveHeader: (() { final guardedValue = map['geneveHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InterconnectAttachmentL2ForwardingGeneveHeader.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tunnelEndpointIpAddress: (() { final guardedValue = map['tunnelEndpointIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
