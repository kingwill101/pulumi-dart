// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The text response message.
class GoogleCloudDialogflowCxV3beta1ResponseMessageText {
  /// A collection of text responses.
  final pulumi.Input<List<String>> text;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1ResponseMessageText].
  /// [text] A collection of text responses.
  GoogleCloudDialogflowCxV3beta1ResponseMessageText({
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': text,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1ResponseMessageText.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1ResponseMessageText(
      text: ((map['text'] as List).cast<String>()).input(),
    );
  }
}

