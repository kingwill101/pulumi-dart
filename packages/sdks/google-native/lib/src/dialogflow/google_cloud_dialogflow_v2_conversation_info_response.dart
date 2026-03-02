// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents metadata of a conversation.
class GoogleCloudDialogflowV2ConversationInfoResponse {
  /// Optional. The language code of the conversation data within this dataset. See https://cloud.google.com/apis/design/standard_fields for more information. Supports all UTF-8 languages.
  final pulumi.Input<String> languageCode;

  /// Creates a new [GoogleCloudDialogflowV2ConversationInfoResponse].
  /// [languageCode] Optional. The language code of the conversation data within this dataset. See https://cloud.google.com/apis/design/standard_fields for more information. Supports all UTF-8 languages.
  GoogleCloudDialogflowV2ConversationInfoResponse({
    required this.languageCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'languageCode': languageCode,
    };
  }

  factory GoogleCloudDialogflowV2ConversationInfoResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2ConversationInfoResponse(
      languageCode: (map['languageCode'] as String).input(),
    );
  }
}

