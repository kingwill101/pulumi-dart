// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QaQuestionQaQuestionDataOptionsConversationDataOptions {
  /// Whether to include the per turn Dialogflow interaction data in conversation
  /// transcript.
  final pulumi.Input<bool?>? includeDialogflowInteractionData;

  /// Creates a new [QaQuestionQaQuestionDataOptionsConversationDataOptions].
  /// [includeDialogflowInteractionData] Whether to include the per turn Dialogflow interaction data in conversation
  const QaQuestionQaQuestionDataOptionsConversationDataOptions({
    this.includeDialogflowInteractionData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeDialogflowInteractionData': ?includeDialogflowInteractionData,
    };
  }

  factory QaQuestionQaQuestionDataOptionsConversationDataOptions.fromMap(Map<String, dynamic> map) {
    return QaQuestionQaQuestionDataOptionsConversationDataOptions(
      includeDialogflowInteractionData: (() { final guardedValue = map['includeDialogflowInteractionData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
