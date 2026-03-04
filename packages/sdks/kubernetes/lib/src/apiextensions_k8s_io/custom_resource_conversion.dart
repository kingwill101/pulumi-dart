// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'webhook_conversion.dart';

/// CustomResourceConversion describes how to convert different versions of a CR.
class CustomResourceConversion {
  /// strategy specifies how custom resources are converted between versions. Allowed values are: - `"None"`: The converter only change the apiVersion and would not touch any other field in the custom resource. - `"Webhook"`: API Server will call to an external webhook to do the conversion. Additional information
  /// is needed for this option. This requires spec.preserveUnknownFields to be false, and spec.conversion.webhook to be set.
  final pulumi.Input<String> strategy;

  /// webhook describes how to call the conversion webhook. Required when `strategy` is set to `"Webhook"`.
  final pulumi.Input<WebhookConversion>? webhook;

  /// Creates a new [CustomResourceConversion].
  /// [strategy] strategy specifies how custom resources are converted between versions. Allowed values are: - `"None"`: The converter only change the apiVersion and would not touch any other field in the custom resource. - `"Webhook"`: API Server will call to an external webhook to do the conversion. Additional information
  /// [webhook] webhook describes how to call the conversion webhook. Required when `strategy` is set to `"Webhook"`.
  CustomResourceConversion({required this.strategy, this.webhook});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'strategy': strategy,
      'webhook':
          ?pulumi.Input.mapOptionalInputValue<
            WebhookConversion,
            Map<String, dynamic>
          >(webhook, (value) => value.toMap()),
    };
  }

  factory CustomResourceConversion.fromMap(Map<String, dynamic> map) {
    return CustomResourceConversion(
      strategy: pulumi.Input.fromValue(map['strategy'] as String),
      webhook: (() {
        final guardedValue = map['webhook'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WebhookConversion.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
