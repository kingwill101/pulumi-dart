// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cell of TableCardRow.
class GoogleCloudDialogflowV2beta1IntentMessageTableCardCell {
  /// Text in this cell.
  final pulumi.Input<String> text;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageTableCardCell].
  /// [text] Text in this cell.
  const GoogleCloudDialogflowV2beta1IntentMessageTableCardCell({
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': text,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageTableCardCell.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageTableCardCell(
      text: pulumi.Input.fromValue(map['text'] as String),
    );
  }
}
