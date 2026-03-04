// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_list_select_item_response.dart';

/// The card for presenting a list of options to select from.
class GoogleCloudDialogflowV2beta1IntentMessageListSelectResponse {
  /// List items.
  final pulumi.Input<
    List<GoogleCloudDialogflowV2beta1IntentMessageListSelectItemResponse>
  >
  items;

  /// Optional. Subtitle of the list.
  final pulumi.Input<String> subtitle;

  /// Optional. The overall title of the list.
  final pulumi.Input<String> title;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageListSelectResponse].
  /// [items] List items.
  /// [subtitle] Optional. Subtitle of the list.
  /// [title] Optional. The overall title of the list.
  GoogleCloudDialogflowV2beta1IntentMessageListSelectResponse({
    required this.items,
    required this.subtitle,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items':
          pulumi.Input.mapInputValue<
            List<
              GoogleCloudDialogflowV2beta1IntentMessageListSelectItemResponse
            >,
            List<Map<String, dynamic>>
          >(
            items,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudDialogflowV2beta1IntentMessageListSelectItemResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'subtitle': subtitle,
      'title': title,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageListSelectResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2beta1IntentMessageListSelectResponse(
      items: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GoogleCloudDialogflowV2beta1IntentMessageListSelectItemResponse
        >(
          map['items']!,
          (value) =>
              GoogleCloudDialogflowV2beta1IntentMessageListSelectItemResponse.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      subtitle: pulumi.Input.fromValue(map['subtitle'] as String),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}
