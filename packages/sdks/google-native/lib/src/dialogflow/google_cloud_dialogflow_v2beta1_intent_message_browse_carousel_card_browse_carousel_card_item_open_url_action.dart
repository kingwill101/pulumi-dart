// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_browse_carousel_card_browse_carousel_card_item_open_url_action_url_type_hint.dart';

/// Actions on Google action to open a given url.
class GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction {
  /// URL
  final pulumi.Input<String> url;

  /// Optional. Specifies the type of viewer that is used when opening the URL. Defaults to opening via web browser.
  final pulumi.Input<
    GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlActionUrlTypeHint
  >?
  urlTypeHint;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction].
  /// [url] URL
  /// [urlTypeHint] Optional. Specifies the type of viewer that is used when opening the URL. Defaults to opening via web browser.
  GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction({
    required this.url,
    this.urlTypeHint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': url,
      'urlTypeHint':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlActionUrlTypeHint,
            String
          >(urlTypeHint, (value) => value.wireValue),
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction(
      url: pulumi.Input.fromValue(map['url'] as String),
      urlTypeHint: (() {
        final guardedValue = map['urlTypeHint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlActionUrlTypeHint.fromValue(
            guardedValue as String,
          ),
        );
      })(),
    );
  }
}
