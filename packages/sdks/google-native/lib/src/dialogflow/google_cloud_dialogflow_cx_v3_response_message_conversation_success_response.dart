// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates that the conversation succeeded, i.e., the bot handled the issue that the customer talked to it about. Dialogflow only uses this to determine which conversations should be counted as successful and doesn't process the metadata in this message in any way. Note that Dialogflow also considers conversations that get to the conversation end page as successful even if they don't return ConversationSuccess. You may set this, for example: * In the entry_fulfillment of a Page if entering the page indicates that the conversation succeeded. * In a webhook response when you determine that you handled the customer issue.
class GoogleCloudDialogflowCxV3ResponseMessageConversationSuccessResponse {
  /// Custom metadata. Dialogflow doesn't impose any structure on this.
  final pulumi.Input<Map<String, String>> metadata;

  /// Creates a new [GoogleCloudDialogflowCxV3ResponseMessageConversationSuccessResponse].
  /// [metadata] Custom metadata. Dialogflow doesn't impose any structure on this.
  const GoogleCloudDialogflowCxV3ResponseMessageConversationSuccessResponse({
    required this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': metadata,
    };
  }

  factory GoogleCloudDialogflowCxV3ResponseMessageConversationSuccessResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3ResponseMessageConversationSuccessResponse(
      metadata: pulumi.Input.fromValue((map['metadata'] as Map).cast<String, String>()),
    );
  }
}

