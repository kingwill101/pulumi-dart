// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_carousel_select_item.dart';

/// The card for presenting a carousel of options to select from.
class GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect {
  /// Carousel items.
  final pulumi.Input<List<GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem>> items;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect].
  /// [items] Carousel items.
  const GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect({
    required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect(
      items: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem>(map['items']!, (value) => GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
