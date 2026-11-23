// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_message_transform_ai_inference.dart';
import 'subscription_message_transform_compression.dart';
import 'subscription_message_transform_javascript_udf.dart';

class SubscriptionMessageTransform {
  /// AI Inference. Specifies the Vertex AI endpoint that inference
  /// requests built from the Pub/Sub message data and provided parameters will
  /// be sent to.
  /// Structure is documented below.
  final pulumi.Input<SubscriptionMessageTransformAiInference?>? aiInference;
  /// Compression/Decompression. Configuration for compressing/decompressing
  /// message data using a user-specified compression algorithm.
  /// Structure is documented below.
  final pulumi.Input<SubscriptionMessageTransformCompression?>? compression;
  /// Controls whether or not to use this transform. If not set or `false`,
  /// the transform will be applied to messages. Default: `true`.
  final pulumi.Input<bool?>? disabled;
  /// Javascript User Defined Function. If multiple Javascript UDFs are specified on a resource,
  /// each one must have a unique `functionName`.
  /// Structure is documented below.
  final pulumi.Input<SubscriptionMessageTransformJavascriptUdf?>? javascriptUdf;

  /// Creates a new [SubscriptionMessageTransform].
  /// [aiInference] AI Inference. Specifies the Vertex AI endpoint that inference
  /// [compression] Compression/Decompression. Configuration for compressing/decompressing
  /// [disabled] Controls whether or not to use this transform. If not set or `false`,
  /// [javascriptUdf] Javascript User Defined Function. If multiple Javascript UDFs are specified on a resource,
  const SubscriptionMessageTransform({
    this.aiInference,
    this.compression,
    this.disabled,
    this.javascriptUdf,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aiInference': ?pulumi.Input.mapOptionalInputValue<SubscriptionMessageTransformAiInference, Map<String, dynamic>>(aiInference, (value) => value.toMap()),
      'compression': ?pulumi.Input.mapOptionalInputValue<SubscriptionMessageTransformCompression, Map<String, dynamic>>(compression, (value) => value.toMap()),
      'disabled': ?disabled,
      'javascriptUdf': ?pulumi.Input.mapOptionalInputValue<SubscriptionMessageTransformJavascriptUdf, Map<String, dynamic>>(javascriptUdf, (value) => value.toMap()),
    };
  }

  factory SubscriptionMessageTransform.fromMap(Map<String, dynamic> map) {
    return SubscriptionMessageTransform(
      aiInference: (() { final guardedValue = map['aiInference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubscriptionMessageTransformAiInference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      compression: (() { final guardedValue = map['compression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubscriptionMessageTransformCompression.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      javascriptUdf: (() { final guardedValue = map['javascriptUdf']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubscriptionMessageTransformJavascriptUdf.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
