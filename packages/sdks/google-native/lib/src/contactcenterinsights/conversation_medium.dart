/// Immutable. The conversation medium, if unspecified will default to PHONE_CALL.
enum ConversationMedium {
  mediumUnspecified("MEDIUM_UNSPECIFIED"),
  phoneCall("PHONE_CALL"),
  chat("CHAT");

  const ConversationMedium(this.wireValue);
  final String wireValue;

  static ConversationMedium fromValue(String value) {
    for (final item in ConversationMedium.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConversationMedium value: $value');
  }
}
