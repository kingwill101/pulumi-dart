// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// InterconnectAttachment that this route applies to.
class InterconnectAttachmentResponse {
  /// Optional. Cloud region to install this policy-based route on interconnect attachment. Use `all` to install it on all interconnect attachments.
  final pulumi.Input<String> region;

  /// Creates a new [InterconnectAttachmentResponse].
  /// [region] Optional. Cloud region to install this policy-based route on interconnect attachment. Use `all` to install it on all interconnect attachments.
  InterconnectAttachmentResponse({required this.region});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'region': region};
  }

  factory InterconnectAttachmentResponse.fromMap(Map<String, dynamic> map) {
    return InterconnectAttachmentResponse(
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
