// ignore_for_file: unused_element, unnecessary_cast


class AllowedUnauthorizedActionsExtension {
  /// The action.
  final String? action;
  /// The intent.
  final String? intent;

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
      action: map['action'] == null ? null : map['action'] as String,
      intent: map['intent'] == null ? null : map['intent'] as String,
    );
  }
}

