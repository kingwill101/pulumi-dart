// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GeneratorSummarizationContextFewShotExampleConversationContextMessageEntry {
  /// Optional. Create time of the message entry.
  final pulumi.Input<String>? createTime;

  /// Optional. The language of the text.
  final pulumi.Input<String>? languageCode;

  /// Optional. Participant role of the message.
  /// Possible values are: `HUMAN_AGENT`, `AUTOMATED_AGENT`, `END_USER`.
  final pulumi.Input<String>? role;

  /// Optional. Transcript content of the message.
  final pulumi.Input<String>? text;

  /// Creates a new [GeneratorSummarizationContextFewShotExampleConversationContextMessageEntry].
  /// [createTime] Optional. Create time of the message entry.
  /// [languageCode] Optional. The language of the text.
  /// [role] Optional. Participant role of the message.
  /// [text] Optional. Transcript content of the message.
  GeneratorSummarizationContextFewShotExampleConversationContextMessageEntry({
    this.createTime,
    this.languageCode,
    this.role,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'languageCode': ?languageCode,
      'role': ?role,
      'text': ?text,
    };
  }

  factory GeneratorSummarizationContextFewShotExampleConversationContextMessageEntry.fromMap(
    Map<String, dynamic> map,
  ) {
    return GeneratorSummarizationContextFewShotExampleConversationContextMessageEntry(
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      languageCode: (() {
        final guardedValue = map['languageCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      role: (() {
        final guardedValue = map['role'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      text: (() {
        final guardedValue = map['text'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
