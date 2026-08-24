// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class R2BucketEventNotificationRule {
  /// Array of R2 object actions that will trigger notifications.
  final pulumi.Input<List<String>> actions;
  /// A description that can be used to identify the event notification rule after creation.
  final pulumi.Input<String?>? description;
  /// Notifications will be sent only for objects with this prefix.
  final pulumi.Input<String?>? prefix;
  /// Notifications will be sent only for objects with this suffix.
  final pulumi.Input<String?>? suffix;

  /// Creates a new [R2BucketEventNotificationRule].
  /// [actions] Array of R2 object actions that will trigger notifications.
  /// [description] A description that can be used to identify the event notification rule after creation.
  /// [prefix] Notifications will be sent only for objects with this prefix.
  /// [suffix] Notifications will be sent only for objects with this suffix.
  const R2BucketEventNotificationRule({
    required this.actions,
    this.description,
    this.prefix,
    this.suffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions,
      'description': ?description,
      'prefix': ?prefix,
      'suffix': ?suffix,
    };
  }

  factory R2BucketEventNotificationRule.fromMap(Map<String, dynamic> map) {
    return R2BucketEventNotificationRule(
      actions: pulumi.Input.fromValue((map['actions'] as List).cast<String>()),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      suffix: (() { final guardedValue = map['suffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
