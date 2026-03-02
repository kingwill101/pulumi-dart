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
  AllowedUnauthorizedActionsExtensionResponse({
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
      action: map['action'] == null ? null : (map['action'] as String).input(),
      intent: map['intent'] == null ? null : (map['intent'] as String).input(),
    );
  }
}

