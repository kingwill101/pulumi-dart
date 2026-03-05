// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_message_transform_javascript_udf.dart';

class TopicMessageTransform {
  /// Controls whether or not to use this transform. If not set or `false`,
  /// the transform will be applied to messages. Default: `true`.
  final pulumi.Input<bool>? disabled;
  /// Javascript User Defined Function. If multiple Javascript UDFs are specified on a resource,
  /// each one must have a unique `function_name`.
  /// Structure is documented below.
  final pulumi.Input<TopicMessageTransformJavascriptUdf>? javascriptUdf;

  /// Creates a new [TopicMessageTransform].
  /// [disabled] Controls whether or not to use this transform. If not set or `false`,
  /// [javascriptUdf] Javascript User Defined Function. If multiple Javascript UDFs are specified on a resource,
  TopicMessageTransform({
    this.disabled,
    this.javascriptUdf,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'javascriptUdf': ?pulumi.Input.mapOptionalInputValue<TopicMessageTransformJavascriptUdf, Map<String, dynamic>>(javascriptUdf, (value) => value.toMap()),
    };
  }

  factory TopicMessageTransform.fromMap(Map<String, dynamic> map) {
    return TopicMessageTransform(
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      javascriptUdf: (() { final guardedValue = map['javascriptUdf']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TopicMessageTransformJavascriptUdf.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

