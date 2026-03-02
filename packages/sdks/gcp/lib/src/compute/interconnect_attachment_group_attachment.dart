// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InterconnectAttachmentGroupAttachment {
  /// (Optional)
  final pulumi.Input<String>? attachment;
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> name;

  /// Creates a new [InterconnectAttachmentGroupAttachment].
  /// [attachment] (Optional)
  /// [name] The identifier for this object. Format specified above.
  InterconnectAttachmentGroupAttachment({
    this.attachment,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachment': ?attachment,
      'name': name,
    };
  }

  factory InterconnectAttachmentGroupAttachment.fromMap(Map<String, dynamic> map) {
    return InterconnectAttachmentGroupAttachment(
      attachment: map['attachment'] == null ? null : (map['attachment'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

