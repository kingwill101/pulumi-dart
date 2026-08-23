// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InterconnectAttachmentParams {
  /// Resource manager tags to be bound to the interconnect attachment. Tag keys and values have the
  /// same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id},
  /// and values are in the format tagValues/456.
  ///
  /// &lt;a name="nestedL2Forwarding"&gt;&lt;/a&gt;The `l2Forwarding` block supports:
  final pulumi.Input<Map<String, String>>? resourceManagerTags;

  /// Creates a new [InterconnectAttachmentParams].
  /// [resourceManagerTags] Resource manager tags to be bound to the interconnect attachment. Tag keys and values have the
  const InterconnectAttachmentParams({
    this.resourceManagerTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceManagerTags': ?resourceManagerTags,
    };
  }

  factory InterconnectAttachmentParams.fromMap(Map<String, dynamic> map) {
    return InterconnectAttachmentParams(
      resourceManagerTags: (() { final guardedValue = map['resourceManagerTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
