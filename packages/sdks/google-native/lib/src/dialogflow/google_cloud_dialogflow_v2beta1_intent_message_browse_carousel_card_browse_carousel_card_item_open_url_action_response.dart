// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Actions on Google action to open a given url.
class GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlActionResponse {
  /// URL
  final pulumi.Input<String> url;
  /// Optional. Specifies the type of viewer that is used when opening the URL. Defaults to opening via web browser.
  final pulumi.Input<String> urlTypeHint;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlActionResponse].
  /// [url] URL
  /// [urlTypeHint] Optional. Specifies the type of viewer that is used when opening the URL. Defaults to opening via web browser.
  const GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlActionResponse({
    required this.url,
    required this.urlTypeHint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': url,
      'urlTypeHint': urlTypeHint,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlActionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlActionResponse(
      url: pulumi.Input.fromValue(map['url'] as String),
      urlTypeHint: pulumi.Input.fromValue(map['urlTypeHint'] as String),
    );
  }
}
