// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The quick replies response message.
class GoogleCloudDialogflowV2IntentMessageQuickReplies {
  /// Optional. The collection of quick replies.
  final pulumi.Input<List<String>>? quickReplies;
  /// Optional. The title of the collection of quick replies.
  final pulumi.Input<String>? title;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageQuickReplies].
  /// [quickReplies] Optional. The collection of quick replies.
  /// [title] Optional. The title of the collection of quick replies.
  GoogleCloudDialogflowV2IntentMessageQuickReplies({
    this.quickReplies,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'quickReplies': ?quickReplies,
      'title': ?title,
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageQuickReplies.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageQuickReplies(
      quickReplies: map['quickReplies'] == null ? null : ((map['quickReplies']! as List).cast<String>()).input(),
      title: map['title'] == null ? null : (map['title']! as String).input(),
    );
  }
}

