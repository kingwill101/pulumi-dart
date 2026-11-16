// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiSecurityCustomTopicsTopic {
  /// Unique label identifier. Must contain only lowercase letters (a–z), digits (0–9), and hyphens.
  final pulumi.Input<String> label;
  /// Description of the topic category. Must contain 2–50 UTF-8 bytes. Text in any language is supported, including spaces, numbers, punctuation, and symbols. Tabs, line breaks, invalid text, and invisible formatting characters are not allowed.
  final pulumi.Input<String> topic;

  /// Creates a new [AiSecurityCustomTopicsTopic].
  /// [label] Unique label identifier. Must contain only lowercase letters (a–z), digits (0–9), and hyphens.
  /// [topic] Description of the topic category. Must contain 2–50 UTF-8 bytes. Text in any language is supported, including spaces, numbers, punctuation, and symbols. Tabs, line breaks, invalid text, and invisible formatting characters are not allowed.
  const AiSecurityCustomTopicsTopic({
    required this.label,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': label,
      'topic': topic,
    };
  }

  factory AiSecurityCustomTopicsTopic.fromMap(Map<String, dynamic> map) {
    return AiSecurityCustomTopicsTopic(
      label: pulumi.Input.fromValue(map['label'] as String),
      topic: pulumi.Input.fromValue(map['topic'] as String),
    );
  }
}
