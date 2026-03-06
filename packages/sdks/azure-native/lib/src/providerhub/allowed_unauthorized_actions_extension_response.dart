// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AllowedUnauthorizedActionsExtensionResponse {
  /// The action.
  final pulumi.Input<String>? action;
  /// The intent.
  final pulumi.Input<String>? intent;

  /// Creates a new [AllowedUnauthorizedActionsExtensionResponse].
  /// [action] The action.
  /// [intent] The intent.
  const AllowedUnauthorizedActionsExtensionResponse({
    this.action,
    this.intent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'intent': ?intent,
    };
  }

  factory AllowedUnauthorizedActionsExtensionResponse.fromMap(Map<String, dynamic> map) {
    return AllowedUnauthorizedActionsExtensionResponse(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      intent: (() { final guardedValue = map['intent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

