// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_topic_message_transform_javascript_udf.dart';

class GetTopicMessageTransform {
  /// Controls whether or not to use this transform. If not set or 'false',
  /// the transform will be applied to messages. Default: 'true'.
  final bool disabled;
  /// Javascript User Defined Function. If multiple Javascript UDFs are specified on a resource,
  /// each one must have a unique 'function_name'.
  final List<GetTopicMessageTransformJavascriptUdf> javascriptUdfs;

  /// Creates a new [GetTopicMessageTransform].
  /// [disabled] Controls whether or not to use this transform. If not set or 'false',
  /// [javascriptUdfs] Javascript User Defined Function. If multiple Javascript UDFs are specified on a resource,
  GetTopicMessageTransform({
    required this.disabled,
    required this.javascriptUdfs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': disabled,
      'javascriptUdfs': pulumi.Input.encodeList<GetTopicMessageTransformJavascriptUdf, Map<String, dynamic>>(javascriptUdfs, (value) => value.toMap()),
    };
  }

  factory GetTopicMessageTransform.fromMap(Map<String, dynamic> map) {
    return GetTopicMessageTransform(
      disabled: map['disabled'] as bool,
      javascriptUdfs: pulumi.Input.decodeList<GetTopicMessageTransformJavascriptUdf>(map['javascriptUdfs'], (value) => GetTopicMessageTransformJavascriptUdf.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

