// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AllowedUnauthorizedActionsExtension {
  /// The action.
  final pulumi.Input<String>? action;
  /// The intent.
  final pulumi.Input<String>? intent;

  /// Creates a new [AllowedUnauthorizedActionsExtension].
  /// [action] The action.
  /// [intent] The intent.
  AllowedUnauthorizedActionsExtension({
    this.action,
    this.intent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'intent': ?intent,
    };
  }

  factory AllowedUnauthorizedActionsExtension.fromMap(Map<String, dynamic> map) {
    return AllowedUnauthorizedActionsExtension(
      action: map['action'] == null ? null : (map['action'] as String).input(),
      intent: map['intent'] == null ? null : (map['intent'] as String).input(),
    );
  }
}

