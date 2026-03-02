// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InterconnectAttachmentL2ForwardingGeneveHeader {
  /// VNI is a 24-bit unique virtual network identifier.
  final pulumi.Input<int>? vni;

  /// Creates a new [InterconnectAttachmentL2ForwardingGeneveHeader].
  /// [vni] VNI is a 24-bit unique virtual network identifier.
  InterconnectAttachmentL2ForwardingGeneveHeader({
    this.vni,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vni': ?vni,
    };
  }

  factory InterconnectAttachmentL2ForwardingGeneveHeader.fromMap(Map<String, dynamic> map) {
    return InterconnectAttachmentL2ForwardingGeneveHeader(
      vni: map['vni'] == null ? null : (map['vni']! as int).input(),
    );
  }
}

