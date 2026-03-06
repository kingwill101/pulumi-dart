// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_carousel_select_item_response.dart';

/// The card for presenting a carousel of options to select from.
class GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectResponse {
  /// Carousel items.
  final pulumi.Input<List<GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItemResponse>> items;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectResponse].
  /// [items] Carousel items.
  const GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectResponse({
    required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItemResponse>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectResponse(
      items: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItemResponse>(map['items']!, (value) => GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItemResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

