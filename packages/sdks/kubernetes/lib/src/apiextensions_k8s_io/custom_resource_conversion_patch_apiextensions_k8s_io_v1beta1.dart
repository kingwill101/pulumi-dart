// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'webhook_client_config_patch_apiextensions_k8s_io_v1beta1.dart';

/// CustomResourceConversion describes how to convert different versions of a CR.
class CustomResourceConversionPatchApiextensionsK8sIoV1beta1 {
  /// conversionReviewVersions is an ordered list of preferred `ConversionReview` versions the Webhook expects. The API server will use the first version in the list which it supports. If none of the versions specified in this list are supported by API server, conversion will fail for the custom resource. If a persisted Webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail. Defaults to `["v1beta1"]`.
  final pulumi.Input<List<String>>? conversionReviewVersions;
  /// strategy specifies how custom resources are converted between versions. Allowed values are: - `None`: The converter only change the apiVersion and would not touch any other field in the custom resource. - `Webhook`: API Server will call to an external webhook to do the conversion. Additional information
  /// is needed for this option. This requires spec.preserveUnknownFields to be false, and spec.conversion.webhookClientConfig to be set.
  final pulumi.Input<String>? strategy;
  /// webhookClientConfig is the instructions for how to call the webhook if strategy is `Webhook`. Required when `strategy` is set to `Webhook`.
  final pulumi.Input<WebhookClientConfigPatchApiextensionsK8sIoV1beta1>? webhookClientConfig;

  /// Creates a new [CustomResourceConversionPatchApiextensionsK8sIoV1beta1].
  /// [conversionReviewVersions] conversionReviewVersions is an ordered list of preferred `ConversionReview` versions the Webhook expects. The API server will use the first version in the list which it supports. If none of the versions specified in this list are supported by API server, conversion will fail for the custom resource. If a persisted Webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail. Defaults to `["v1beta1"]`.
  /// [strategy] strategy specifies how custom resources are converted between versions. Allowed values are: - `None`: The converter only change the apiVersion and would not touch any other field in the custom resource. - `Webhook`: API Server will call to an external webhook to do the conversion. Additional information
  /// [webhookClientConfig] webhookClientConfig is the instructions for how to call the webhook if strategy is `Webhook`. Required when `strategy` is set to `Webhook`.
  CustomResourceConversionPatchApiextensionsK8sIoV1beta1({
    this.conversionReviewVersions,
    this.strategy,
    this.webhookClientConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversionReviewVersions': ?conversionReviewVersions,
      'strategy': ?strategy,
      'webhookClientConfig': ?pulumi.Input.mapOptionalInputValue<WebhookClientConfigPatchApiextensionsK8sIoV1beta1, Map<String, dynamic>>(webhookClientConfig, (value) => value.toMap()),
    };
  }

  factory CustomResourceConversionPatchApiextensionsK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return CustomResourceConversionPatchApiextensionsK8sIoV1beta1(
      conversionReviewVersions: (() { final guardedValue = map['conversionReviewVersions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      strategy: (() { final guardedValue = map['strategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webhookClientConfig: (() { final guardedValue = map['webhookClientConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebhookClientConfigPatchApiextensionsK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

