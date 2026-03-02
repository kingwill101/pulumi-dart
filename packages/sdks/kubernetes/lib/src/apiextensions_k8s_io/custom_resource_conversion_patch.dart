// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'webhook_conversion_patch.dart';

/// CustomResourceConversion describes how to convert different versions of a CR.
class CustomResourceConversionPatch {
  /// strategy specifies how custom resources are converted between versions. Allowed values are: - `"None"`: The converter only change the apiVersion and would not touch any other field in the custom resource. - `"Webhook"`: API Server will call to an external webhook to do the conversion. Additional information
  /// is needed for this option. This requires spec.preserveUnknownFields to be false, and spec.conversion.webhook to be set.
  final pulumi.Input<String>? strategy;
  /// webhook describes how to call the conversion webhook. Required when `strategy` is set to `"Webhook"`.
  final pulumi.Input<WebhookConversionPatch>? webhook;

  /// Creates a new [CustomResourceConversionPatch].
  /// [strategy] strategy specifies how custom resources are converted between versions. Allowed values are: - `"None"`: The converter only change the apiVersion and would not touch any other field in the custom resource. - `"Webhook"`: API Server will call to an external webhook to do the conversion. Additional information
  /// [webhook] webhook describes how to call the conversion webhook. Required when `strategy` is set to `"Webhook"`.
  CustomResourceConversionPatch({
    this.strategy,
    this.webhook,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'strategy': ?strategy,
      'webhook': ?pulumi.Input.mapOptionalInputValue<WebhookConversionPatch, Map<String, dynamic>>(webhook, (value) => value.toMap()),
    };
  }

  factory CustomResourceConversionPatch.fromMap(Map<String, dynamic> map) {
    return CustomResourceConversionPatch(
      strategy: map['strategy'] == null ? null : (map['strategy'] as String).input(),
      webhook: map['webhook'] == null ? null : (WebhookConversionPatch.fromMap((map['webhook'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

