// ignore_for_file: unused_element, unnecessary_cast


class AllowedUnauthorizedActionsExtensionResponse {
  /// The action.
  final String? action;
  /// The intent.
  final String? intent;

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
      action: map['action'] == null ? null : map['action'] as String,
      intent: map['intent'] == null ? null : map['intent'] as String,
    );
  }
}

