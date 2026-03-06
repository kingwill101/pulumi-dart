// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The text response message.
class GoogleCloudDialogflowCxV3ResponseMessageText {
  /// A collection of text responses.
  final pulumi.Input<List<String>> text;

  /// Creates a new [GoogleCloudDialogflowCxV3ResponseMessageText].
  /// [text] A collection of text responses.
  const GoogleCloudDialogflowCxV3ResponseMessageText({
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': text,
    };
  }

  factory GoogleCloudDialogflowCxV3ResponseMessageText.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3ResponseMessageText(
      text: pulumi.Input.fromValue((map['text'] as List).cast<String>()),
    );
  }
}

