// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustDlpCustomEntryVariant {
  /// For `type: PromptTopic`: A customer-facing explanation of what this predefined AI prompt topic represents.
  final pulumi.Input<String?>? description;
  /// Available values: "Intent", "Content".
  final pulumi.Input<String?>? topicType;
  /// Available values: "custom", "custom*prompt*topic", "predefined", "integration", "exact*data", "document*fingerprint", "wordList".
  final pulumi.Input<String?>? type;

  /// Creates a new [ZeroTrustDlpCustomEntryVariant].
  /// [description] For `type: PromptTopic`: A customer-facing explanation of what this predefined AI prompt topic represents.
  /// [topicType] Available values: "Intent", "Content".
  /// [type] Available values: "custom", "custom*prompt*topic", "predefined", "integration", "exact*data", "document*fingerprint", "wordList".
  const ZeroTrustDlpCustomEntryVariant({
    this.description,
    this.topicType,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'topicType': ?topicType,
      'type': ?type,
    };
  }

  factory ZeroTrustDlpCustomEntryVariant.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpCustomEntryVariant(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topicType: (() { final guardedValue = map['topicType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
