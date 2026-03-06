// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InterconnectAttachmentL2ForwardingApplianceMappingInnerVlanToApplianceMapping {
  /// The inner appliance IP address.
  final pulumi.Input<String>? innerApplianceIpAddress;
  /// List of inner VLAN tags.
  final pulumi.Input<List<String>>? innerVlanTags;

  /// Creates a new [InterconnectAttachmentL2ForwardingApplianceMappingInnerVlanToApplianceMapping].
  /// [innerApplianceIpAddress] The inner appliance IP address.
  /// [innerVlanTags] List of inner VLAN tags.
  const InterconnectAttachmentL2ForwardingApplianceMappingInnerVlanToApplianceMapping({
    this.innerApplianceIpAddress,
    this.innerVlanTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'innerApplianceIpAddress': ?innerApplianceIpAddress,
      'innerVlanTags': ?innerVlanTags,
    };
  }

  factory InterconnectAttachmentL2ForwardingApplianceMappingInnerVlanToApplianceMapping.fromMap(Map<String, dynamic> map) {
    return InterconnectAttachmentL2ForwardingApplianceMappingInnerVlanToApplianceMapping(
      innerApplianceIpAddress: (() { final guardedValue = map['innerApplianceIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      innerVlanTags: (() { final guardedValue = map['innerVlanTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

