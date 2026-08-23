// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cell of TableCardRow.
class GoogleCloudDialogflowV2IntentMessageTableCardCell {
  /// Text in this cell.
  final pulumi.Input<String> text;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageTableCardCell].
  /// [text] Text in this cell.
  const GoogleCloudDialogflowV2IntentMessageTableCardCell({
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': text,
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageTableCardCell.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageTableCardCell(
      text: pulumi.Input.fromValue(map['text'] as String),
    );
  }
}
