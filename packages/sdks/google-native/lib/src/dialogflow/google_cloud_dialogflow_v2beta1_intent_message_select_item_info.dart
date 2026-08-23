// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Additional info about the select item for when it is triggered in a dialog.
class GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo {
  /// A unique key that will be sent back to the agent if this response is given.
  final pulumi.Input<String> key;
  /// Optional. A list of synonyms that can also be used to trigger this item in dialog.
  final pulumi.Input<List<String>>? synonyms;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo].
  /// [key] A unique key that will be sent back to the agent if this response is given.
  /// [synonyms] Optional. A list of synonyms that can also be used to trigger this item in dialog.
  const GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo({
    required this.key,
    this.synonyms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'synonyms': ?synonyms,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo(
      key: pulumi.Input.fromValue(map['key'] as String),
      synonyms: (() { final guardedValue = map['synonyms']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
