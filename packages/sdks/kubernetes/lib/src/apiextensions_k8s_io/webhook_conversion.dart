// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'webhook_client_config.dart';

/// WebhookConversion describes how to call a conversion webhook
class WebhookConversion {
  /// clientConfig is the instructions for how to call the webhook if strategy is `Webhook`.
  final pulumi.Input<WebhookClientConfig>? clientConfig;
  /// conversionReviewVersions is an ordered list of preferred `ConversionReview` versions the Webhook expects. The API server will use the first version in the list which it supports. If none of the versions specified in this list are supported by API server, conversion will fail for the custom resource. If a persisted Webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail.
  final pulumi.Input<List<String>> conversionReviewVersions;

  /// Creates a new [WebhookConversion].
  /// [clientConfig] clientConfig is the instructions for how to call the webhook if strategy is `Webhook`.
  /// [conversionReviewVersions] conversionReviewVersions is an ordered list of preferred `ConversionReview` versions the Webhook expects. The API server will use the first version in the list which it supports. If none of the versions specified in this list are supported by API server, conversion will fail for the custom resource. If a persisted Webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail.
  WebhookConversion({
    this.clientConfig,
    required this.conversionReviewVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientConfig': ?pulumi.Input.mapOptionalInputValue<WebhookClientConfig, Map<String, dynamic>>(clientConfig, (value) => value.toMap()),
      'conversionReviewVersions': conversionReviewVersions,
    };
  }

  factory WebhookConversion.fromMap(Map<String, dynamic> map) {
    return WebhookConversion(
      clientConfig: map['clientConfig'] == null ? null : (WebhookClientConfig.fromMap((map['clientConfig']! as Map).cast<String, dynamic>())).input(),
      conversionReviewVersions: ((map['conversionReviewVersions'] as List).cast<String>()).input(),
    );
  }
}

