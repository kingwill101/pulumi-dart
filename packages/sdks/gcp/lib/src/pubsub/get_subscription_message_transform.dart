// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subscription_message_transform_ai_inference.dart';
import 'get_subscription_message_transform_javascript_udf.dart';

class GetSubscriptionMessageTransform {
  /// AI Inference. Specifies the Vertex AI endpoint that inference
  /// requests built from the Pub/Sub message data and provided parameters will
  /// be sent to.
  final pulumi.Input<List<GetSubscriptionMessageTransformAiInference>> aiInferences;
  /// Controls whether or not to use this transform. If not set or 'false',
  /// the transform will be applied to messages. Default: 'true'.
  final pulumi.Input<bool> disabled;
  /// Javascript User Defined Function. If multiple Javascript UDFs are specified on a resource,
  /// each one must have a unique 'function_name'.
  final pulumi.Input<List<GetSubscriptionMessageTransformJavascriptUdf>> javascriptUdfs;

  /// Creates a new [GetSubscriptionMessageTransform].
  /// [aiInferences] AI Inference. Specifies the Vertex AI endpoint that inference
  /// [disabled] Controls whether or not to use this transform. If not set or 'false',
  /// [javascriptUdfs] Javascript User Defined Function. If multiple Javascript UDFs are specified on a resource,
  const GetSubscriptionMessageTransform({
    required this.aiInferences,
    required this.disabled,
    required this.javascriptUdfs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aiInferences': pulumi.Input.mapInputValue<List<GetSubscriptionMessageTransformAiInference>, List<Map<String, dynamic>>>(aiInferences, (value) => pulumi.Input.encodeList<GetSubscriptionMessageTransformAiInference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'disabled': disabled,
      'javascriptUdfs': pulumi.Input.mapInputValue<List<GetSubscriptionMessageTransformJavascriptUdf>, List<Map<String, dynamic>>>(javascriptUdfs, (value) => pulumi.Input.encodeList<GetSubscriptionMessageTransformJavascriptUdf, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetSubscriptionMessageTransform.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionMessageTransform(
      aiInferences: pulumi.Input.fromValue(pulumi.Input.decodeList<GetSubscriptionMessageTransformAiInference>(map['aiInferences']!, (value) => GetSubscriptionMessageTransformAiInference.fromMap((value as Map).cast<String, dynamic>()))),
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
      javascriptUdfs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetSubscriptionMessageTransformJavascriptUdf>(map['javascriptUdfs']!, (value) => GetSubscriptionMessageTransformJavascriptUdf.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
