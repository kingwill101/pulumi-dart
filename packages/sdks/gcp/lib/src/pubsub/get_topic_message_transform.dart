// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_topic_message_transform_ai_inference.dart';
import 'get_topic_message_transform_javascript_udf.dart';

class GetTopicMessageTransform {
  /// AI Inference. Specifies the Vertex AI endpoint that inference
  /// requests built from the Pub/Sub message data and provided parameters will
  /// be sent to.
  final pulumi.Input<List<GetTopicMessageTransformAiInference>> aiInferences;
  /// Controls whether or not to use this transform. If not set or 'false',
  /// the transform will be applied to messages. Default: 'true'.
  final pulumi.Input<bool> disabled;
  /// Javascript User Defined Function. If multiple Javascript UDFs are specified on a resource,
  /// each one must have a unique 'function_name'.
  final pulumi.Input<List<GetTopicMessageTransformJavascriptUdf>> javascriptUdfs;

  /// Creates a new [GetTopicMessageTransform].
  /// [aiInferences] AI Inference. Specifies the Vertex AI endpoint that inference
  /// [disabled] Controls whether or not to use this transform. If not set or 'false',
  /// [javascriptUdfs] Javascript User Defined Function. If multiple Javascript UDFs are specified on a resource,
  const GetTopicMessageTransform({
    required this.aiInferences,
    required this.disabled,
    required this.javascriptUdfs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aiInferences': pulumi.Input.mapInputValue<List<GetTopicMessageTransformAiInference>, List<Map<String, dynamic>>>(aiInferences, (value) => pulumi.Input.encodeList<GetTopicMessageTransformAiInference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'disabled': disabled,
      'javascriptUdfs': pulumi.Input.mapInputValue<List<GetTopicMessageTransformJavascriptUdf>, List<Map<String, dynamic>>>(javascriptUdfs, (value) => pulumi.Input.encodeList<GetTopicMessageTransformJavascriptUdf, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetTopicMessageTransform.fromMap(Map<String, dynamic> map) {
    return GetTopicMessageTransform(
      aiInferences: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTopicMessageTransformAiInference>(map['aiInferences']!, (value) => GetTopicMessageTransformAiInference.fromMap((value as Map).cast<String, dynamic>()))),
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
      javascriptUdfs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTopicMessageTransformJavascriptUdf>(map['javascriptUdfs']!, (value) => GetTopicMessageTransformJavascriptUdf.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
