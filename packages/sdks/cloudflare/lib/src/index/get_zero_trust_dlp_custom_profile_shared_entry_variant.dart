// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDlpCustomProfileSharedEntryVariant {
  /// A customer-facing explanation of what this predefined AI prompt topic represents.
  final pulumi.Input<String> description;
  /// Available values: "Intent", "Content".
  final pulumi.Input<String> topicType;
  /// Available values: "PromptTopic", "General".
  final pulumi.Input<String> type;

  /// Creates a new [GetZeroTrustDlpCustomProfileSharedEntryVariant].
  /// [description] A customer-facing explanation of what this predefined AI prompt topic represents.
  /// [topicType] Available values: "Intent", "Content".
  /// [type] Available values: "PromptTopic", "General".
  const GetZeroTrustDlpCustomProfileSharedEntryVariant({
    required this.description,
    required this.topicType,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'topicType': topicType,
      'type': type,
    };
  }

  factory GetZeroTrustDlpCustomProfileSharedEntryVariant.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpCustomProfileSharedEntryVariant(
      description: pulumi.Input.fromValue(map['description'] as String),
      topicType: pulumi.Input.fromValue(map['topicType'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
