/// The state of the Conversation.
enum ConversationStateDiscoveryengineV1beta {
  stateUnspecified("STATE_UNSPECIFIED"),
  inProgress("IN_PROGRESS"),
  completed("COMPLETED");

  const ConversationStateDiscoveryengineV1beta(this.wireValue);
  final String wireValue;

  static ConversationStateDiscoveryengineV1beta fromValue(String value) {
    for (final item in ConversationStateDiscoveryengineV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConversationStateDiscoveryengineV1beta value: $value');
  }
}
