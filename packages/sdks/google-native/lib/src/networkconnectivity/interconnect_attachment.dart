// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// InterconnectAttachment that this route applies to.
class InterconnectAttachment {
  /// Optional. Cloud region to install this policy-based route on interconnect attachment. Use `all` to install it on all interconnect attachments.
  final pulumi.Input<String>? region;

  /// Creates a new [InterconnectAttachment].
  /// [region] Optional. Cloud region to install this policy-based route on interconnect attachment. Use `all` to install it on all interconnect attachments.
  InterconnectAttachment({
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
    };
  }

  factory InterconnectAttachment.fromMap(Map<String, dynamic> map) {
    return InterconnectAttachment(
      region: map['region'] == null ? null : (map['region']! as String).input(),
    );
  }
}

