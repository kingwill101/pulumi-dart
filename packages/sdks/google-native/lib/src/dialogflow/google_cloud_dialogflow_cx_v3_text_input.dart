// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the natural language text to be processed.
class GoogleCloudDialogflowCxV3TextInput {
  /// The UTF-8 encoded natural language text to be processed. Text length must not exceed 256 characters.
  final pulumi.Input<String> text;

  /// Creates a new [GoogleCloudDialogflowCxV3TextInput].
  /// [text] The UTF-8 encoded natural language text to be processed. Text length must not exceed 256 characters.
  GoogleCloudDialogflowCxV3TextInput({required this.text});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'text': text};
  }

  factory GoogleCloudDialogflowCxV3TextInput.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3TextInput(
      text: pulumi.Input.fromValue(map['text'] as String),
    );
  }
}
