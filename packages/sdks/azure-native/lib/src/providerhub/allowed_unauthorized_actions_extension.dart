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
  const AllowedUnauthorizedActionsExtension({
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
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      intent: (() { final guardedValue = map['intent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
