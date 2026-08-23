// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cell of TableCardRow.
class GoogleCloudDialogflowV2IntentMessageTableCardCellResponse {
  /// Text in this cell.
  final pulumi.Input<String> text;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageTableCardCellResponse].
  /// [text] Text in this cell.
  const GoogleCloudDialogflowV2IntentMessageTableCardCellResponse({
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': text,
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageTableCardCellResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageTableCardCellResponse(
      text: pulumi.Input.fromValue(map['text'] as String),
    );
  }
}
