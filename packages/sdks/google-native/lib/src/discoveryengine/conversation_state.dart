/// The state of the Conversation.
enum ConversationState {
  stateUnspecified("STATE_UNSPECIFIED"),
  inProgress("IN_PROGRESS"),
  completed("COMPLETED");

  const ConversationState(this.wireValue);
  final String wireValue;

  static ConversationState fromValue(String value) {
    for (final item in ConversationState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConversationState value: $value');
  }
}

