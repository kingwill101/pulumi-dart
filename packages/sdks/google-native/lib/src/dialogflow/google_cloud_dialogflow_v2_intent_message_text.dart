// ignore_for_file: unused_element, unnecessary_cast


/// The text response message.
class GoogleCloudDialogflowV2IntentMessageText {
  /// Optional. The collection of the agent's responses.
  final List<String>? text;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageText].
  /// [text] Optional. The collection of the agent's responses.
  GoogleCloudDialogflowV2IntentMessageText({
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': ?text,
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageText.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageText(
      text: map['text'] == null ? null : (map['text'] as List).cast<String>(),
    );
  }
}

