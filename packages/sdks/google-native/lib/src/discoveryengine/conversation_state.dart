import 'package:pulumi/pulumi.dart' as pulumi;

/// The state of the Conversation.
enum ConversationState implements pulumi.PulumiEnum<String> {
  stateUnspecified("STATE_UNSPECIFIED"),
  inProgress("IN_PROGRESS"),
  completed("COMPLETED");

  const ConversationState(this.wireValue);
  @override
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
