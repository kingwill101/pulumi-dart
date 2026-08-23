// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_intent_message_carousel_select_item_response.dart';

/// The card for presenting a carousel of options to select from.
class GoogleCloudDialogflowV2IntentMessageCarouselSelectResponse {
  /// Carousel items.
  final pulumi.Input<List<GoogleCloudDialogflowV2IntentMessageCarouselSelectItemResponse>> items;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageCarouselSelectResponse].
  /// [items] Carousel items.
  const GoogleCloudDialogflowV2IntentMessageCarouselSelectResponse({
    required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowV2IntentMessageCarouselSelectItemResponse>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2IntentMessageCarouselSelectItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageCarouselSelectResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageCarouselSelectResponse(
      items: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowV2IntentMessageCarouselSelectItemResponse>(map['items']!, (value) => GoogleCloudDialogflowV2IntentMessageCarouselSelectItemResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
