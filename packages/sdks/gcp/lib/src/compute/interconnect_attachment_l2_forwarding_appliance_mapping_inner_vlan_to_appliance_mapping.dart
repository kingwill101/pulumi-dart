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
  InterconnectAttachmentL2ForwardingApplianceMappingInnerVlanToApplianceMapping({
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
      innerApplianceIpAddress: map['innerApplianceIpAddress'] == null ? null : (map['innerApplianceIpAddress']! as String).input(),
      innerVlanTags: map['innerVlanTags'] == null ? null : ((map['innerVlanTags']! as List).cast<String>()).input(),
    );
  }
}

