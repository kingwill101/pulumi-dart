// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_attachment_l2_forwarding_appliance_mapping_inner_vlan_to_appliance_mapping.dart';

class InterconnectAttachmentL2ForwardingApplianceMapping {
  /// The appliance IP address.
  final pulumi.Input<String>? applianceIpAddress;
  /// Structure is documented below.
  final pulumi.Input<List<InterconnectAttachmentL2ForwardingApplianceMappingInnerVlanToApplianceMapping>>? innerVlanToApplianceMappings;
  /// The name of this appliance mapping rule.
  final pulumi.Input<String>? name;
  /// The VLAN tag.
  final pulumi.Input<String>? vlanId;

  /// Creates a new [InterconnectAttachmentL2ForwardingApplianceMapping].
  /// [applianceIpAddress] The appliance IP address.
  /// [innerVlanToApplianceMappings] Structure is documented below.
  /// [name] The name of this appliance mapping rule.
  /// [vlanId] The VLAN tag.
  const InterconnectAttachmentL2ForwardingApplianceMapping({
    this.applianceIpAddress,
    this.innerVlanToApplianceMappings,
    this.name,
    this.vlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applianceIpAddress': ?applianceIpAddress,
      'innerVlanToApplianceMappings': ?pulumi.Input.mapOptionalInputValue<List<InterconnectAttachmentL2ForwardingApplianceMappingInnerVlanToApplianceMapping>, List<Map<String, dynamic>>>(innerVlanToApplianceMappings, (value) => pulumi.Input.encodeList<InterconnectAttachmentL2ForwardingApplianceMappingInnerVlanToApplianceMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'vlanId': ?vlanId,
    };
  }

  factory InterconnectAttachmentL2ForwardingApplianceMapping.fromMap(Map<String, dynamic> map) {
    return InterconnectAttachmentL2ForwardingApplianceMapping(
      applianceIpAddress: (() { final guardedValue = map['applianceIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      innerVlanToApplianceMappings: (() { final guardedValue = map['innerVlanToApplianceMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InterconnectAttachmentL2ForwardingApplianceMappingInnerVlanToApplianceMapping>(guardedValue, (value) => InterconnectAttachmentL2ForwardingApplianceMappingInnerVlanToApplianceMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vlanId: (() { final guardedValue = map['vlanId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

