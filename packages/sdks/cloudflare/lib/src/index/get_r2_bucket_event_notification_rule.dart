// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetR2BucketEventNotificationRule {
  /// Array of R2 object actions that will trigger notifications.
  final pulumi.Input<List<String>> actions;
  /// Timestamp when the rule was created.
  final pulumi.Input<String> createdAt;
  /// A description that can be used to identify the event notification rule after creation.
  final pulumi.Input<String> description;
  /// Notifications will be sent only for objects with this prefix.
  final pulumi.Input<String> prefix;
  /// Rule ID.
  final pulumi.Input<String> ruleId;
  /// Notifications will be sent only for objects with this suffix.
  final pulumi.Input<String> suffix;

  /// Creates a new [GetR2BucketEventNotificationRule].
  /// [actions] Array of R2 object actions that will trigger notifications.
  /// [createdAt] Timestamp when the rule was created.
  /// [description] A description that can be used to identify the event notification rule after creation.
  /// [prefix] Notifications will be sent only for objects with this prefix.
  /// [ruleId] Rule ID.
  /// [suffix] Notifications will be sent only for objects with this suffix.
  const GetR2BucketEventNotificationRule({
    required this.actions,
    required this.createdAt,
    required this.description,
    required this.prefix,
    required this.ruleId,
    required this.suffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions,
      'createdAt': createdAt,
      'description': description,
      'prefix': prefix,
      'ruleId': ruleId,
      'suffix': suffix,
    };
  }

  factory GetR2BucketEventNotificationRule.fromMap(Map<String, dynamic> map) {
    return GetR2BucketEventNotificationRule(
      actions: pulumi.Input.fromValue((map['actions'] as List).cast<String>()),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
      ruleId: pulumi.Input.fromValue(map['ruleId'] as String),
      suffix: pulumi.Input.fromValue(map['suffix'] as String),
    );
  }
}
