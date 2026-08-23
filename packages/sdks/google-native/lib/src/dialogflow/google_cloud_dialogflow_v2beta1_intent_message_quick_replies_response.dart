// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The quick replies response message.
class GoogleCloudDialogflowV2beta1IntentMessageQuickRepliesResponse {
  /// Optional. The collection of quick replies.
  final pulumi.Input<List<String>> quickReplies;
  /// Optional. The title of the collection of quick replies.
  final pulumi.Input<String> title;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageQuickRepliesResponse].
  /// [quickReplies] Optional. The collection of quick replies.
  /// [title] Optional. The title of the collection of quick replies.
  const GoogleCloudDialogflowV2beta1IntentMessageQuickRepliesResponse({
    required this.quickReplies,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'quickReplies': quickReplies,
      'title': title,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageQuickRepliesResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageQuickRepliesResponse(
      quickReplies: pulumi.Input.fromValue((map['quickReplies'] as List).cast<String>()),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}
