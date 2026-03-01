// ignore_for_file: unused_element, unnecessary_cast

import 'webhook_client_config_patch.dart';

/// WebhookConversion describes how to call a conversion webhook
class WebhookConversionPatch {
  /// clientConfig is the instructions for how to call the webhook if strategy is `Webhook`.
  final WebhookClientConfigPatch? clientConfig;
  /// conversionReviewVersions is an ordered list of preferred `ConversionReview` versions the Webhook expects. The API server will use the first version in the list which it supports. If none of the versions specified in this list are supported by API server, conversion will fail for the custom resource. If a persisted Webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail.
  final List<String>? conversionReviewVersions;

  /// Creates a new [WebhookConversionPatch].
  /// [clientConfig] clientConfig is the instructions for how to call the webhook if strategy is `Webhook`.
  /// [conversionReviewVersions] conversionReviewVersions is an ordered list of preferred `ConversionReview` versions the Webhook expects. The API server will use the first version in the list which it supports. If none of the versions specified in this list are supported by API server, conversion will fail for the custom resource. If a persisted Webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail.
  WebhookConversionPatch({
    this.clientConfig,
    this.conversionReviewVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientConfig': ?clientConfig == null ? null : clientConfig!.toMap(),
      'conversionReviewVersions': ?conversionReviewVersions,
    };
  }

  factory WebhookConversionPatch.fromMap(Map<String, dynamic> map) {
    return WebhookConversionPatch(
      clientConfig: map['clientConfig'] == null ? null : WebhookClientConfigPatch.fromMap((map['clientConfig'] as Map).cast<String, dynamic>()),
      conversionReviewVersions: map['conversionReviewVersions'] == null ? null : (map['conversionReviewVersions'] as List).cast<String>(),
    );
  }
}

