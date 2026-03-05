// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_list_select_item.dart';

/// The card for presenting a list of options to select from.
class GoogleCloudDialogflowV2beta1IntentMessageListSelect {
  /// List items.
  final pulumi.Input<List<GoogleCloudDialogflowV2beta1IntentMessageListSelectItem>> items;
  /// Optional. Subtitle of the list.
  final pulumi.Input<String>? subtitle;
  /// Optional. The overall title of the list.
  final pulumi.Input<String>? title;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageListSelect].
  /// [items] List items.
  /// [subtitle] Optional. Subtitle of the list.
  /// [title] Optional. The overall title of the list.
  GoogleCloudDialogflowV2beta1IntentMessageListSelect({
    required this.items,
    this.subtitle,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowV2beta1IntentMessageListSelectItem>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2beta1IntentMessageListSelectItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subtitle': ?subtitle,
      'title': ?title,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageListSelect.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageListSelect(
      items: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowV2beta1IntentMessageListSelectItem>(map['items']!, (value) => GoogleCloudDialogflowV2beta1IntentMessageListSelectItem.fromMap((value as Map).cast<String, dynamic>()))),
      subtitle: (() { final guardedValue = map['subtitle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

