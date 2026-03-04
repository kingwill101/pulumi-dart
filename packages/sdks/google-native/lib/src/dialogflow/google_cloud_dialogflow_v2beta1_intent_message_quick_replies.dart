// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The quick replies response message.
class GoogleCloudDialogflowV2beta1IntentMessageQuickReplies {
  /// Optional. The collection of quick replies.
  final pulumi.Input<List<String>>? quickReplies;

  /// Optional. The title of the collection of quick replies.
  final pulumi.Input<String>? title;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageQuickReplies].
  /// [quickReplies] Optional. The collection of quick replies.
  /// [title] Optional. The title of the collection of quick replies.
  GoogleCloudDialogflowV2beta1IntentMessageQuickReplies({
    this.quickReplies,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'quickReplies': ?quickReplies, 'title': ?title};
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageQuickReplies.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2beta1IntentMessageQuickReplies(
      quickReplies: (() {
        final guardedValue = map['quickReplies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      title: (() {
        final guardedValue = map['title'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
