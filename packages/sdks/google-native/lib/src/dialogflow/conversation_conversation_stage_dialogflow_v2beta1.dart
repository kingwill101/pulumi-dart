/// The stage of a conversation. It indicates whether the virtual agent or a human agent is handling the conversation. If the conversation is created with the conversation profile that has Dialogflow config set, defaults to ConversationStage.VIRTUAL_AGENT_STAGE; Otherwise, defaults to ConversationStage.HUMAN_ASSIST_STAGE. If the conversation is created with the conversation profile that has Dialogflow config set but explicitly sets conversation_stage to ConversationStage.HUMAN_ASSIST_STAGE, it skips ConversationStage.VIRTUAL_AGENT_STAGE stage and directly goes to ConversationStage.HUMAN_ASSIST_STAGE.
enum ConversationConversationStageDialogflowV2beta1 {
  conversationStageUnspecified("CONVERSATION_STAGE_UNSPECIFIED"),
  virtualAgentStage("VIRTUAL_AGENT_STAGE"),
  humanAssistStage("HUMAN_ASSIST_STAGE");

  const ConversationConversationStageDialogflowV2beta1(this.wireValue);
  final String wireValue;

  static ConversationConversationStageDialogflowV2beta1 fromValue(String value) {
    for (final item in ConversationConversationStageDialogflowV2beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConversationConversationStageDialogflowV2beta1 value: $value');
  }
}
