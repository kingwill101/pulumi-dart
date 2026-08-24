// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustDlpIntegrationEntryVariant {
  /// A customer-facing explanation of what this predefined AI prompt topic represents.
  final pulumi.Input<String?>? description;
  /// Available values: "Intent", "Content".
  final pulumi.Input<String?>? topicType;
  /// Available values: "PromptTopic", "General".
  final pulumi.Input<String?>? type;

  /// Creates a new [ZeroTrustDlpIntegrationEntryVariant].
  /// [description] A customer-facing explanation of what this predefined AI prompt topic represents.
  /// [topicType] Available values: "Intent", "Content".
  /// [type] Available values: "PromptTopic", "General".
  const ZeroTrustDlpIntegrationEntryVariant({
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

  factory ZeroTrustDlpIntegrationEntryVariant.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpIntegrationEntryVariant(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topicType: (() { final guardedValue = map['topicType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
