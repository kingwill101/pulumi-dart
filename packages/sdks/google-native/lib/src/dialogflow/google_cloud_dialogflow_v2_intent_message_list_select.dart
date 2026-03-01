// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_intent_message_list_select_item.dart';

/// The card for presenting a list of options to select from.
class GoogleCloudDialogflowV2IntentMessageListSelect {
  /// List items.
  final List<GoogleCloudDialogflowV2IntentMessageListSelectItem> items;
  /// Optional. Subtitle of the list.
  final String? subtitle;
  /// Optional. The overall title of the list.
  final String? title;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageListSelect].
  /// [items] List items.
  /// [subtitle] Optional. Subtitle of the list.
  /// [title] Optional. The overall title of the list.
  GoogleCloudDialogflowV2IntentMessageListSelect({
    required this.items,
    this.subtitle,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': pulumi.Input.encodeList<GoogleCloudDialogflowV2IntentMessageListSelectItem, Map<String, dynamic>>(items, (value) => value.toMap()),
      'subtitle': ?subtitle,
      'title': ?title,
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageListSelect.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageListSelect(
      items: pulumi.Input.decodeList<GoogleCloudDialogflowV2IntentMessageListSelectItem>(map['items'], (value) => GoogleCloudDialogflowV2IntentMessageListSelectItem.fromMap((value as Map).cast<String, dynamic>())),
      subtitle: map['subtitle'] == null ? null : map['subtitle'] as String,
      title: map['title'] == null ? null : map['title'] as String,
    );
  }
}

