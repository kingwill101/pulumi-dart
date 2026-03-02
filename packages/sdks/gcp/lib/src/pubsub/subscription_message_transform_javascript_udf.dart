// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SubscriptionMessageTransformJavascriptUdf {
  /// JavaScript code that contains a function `function_name` with the
  /// following signature:
  /// ```
  /// /**
  /// * Transforms a Pub/Sub message.
  /// *
  /// * @return {(Object<string, (string | Object<string, string>)>|null)} - To
  /// * filter a message, return `null`. To transform a message return a map
  /// * with the following keys:
  /// *   - (required) 'data' : {string}
  /// *   - (optional) 'attributes' : {Object<string, string>}
  /// * Returning empty `attributes` will remove all attributes from the
  /// * message.
  /// *
  /// * @param  {(Object<string, (string | Object<string, string>)>} Pub/Sub
  /// * message. Keys:
  /// *   - (required) 'data' : {string}
  /// *   - (required) 'attributes' : {Object<string, string>}
  /// *
  /// * @param  {Object<string, any>} metadata - Pub/Sub message metadata.
  /// * Keys:
  /// *   - (required) 'message_id'  : {string}
  /// *   - (optional) 'publish_time': {string} YYYY-MM-DDTHH:MM:SSZ format
  /// *   - (optional) 'ordering_key': {string}
  /// */
  /// function <function_name>(message, metadata) {
  /// }
  /// ```
  final pulumi.Input<String> code;
  /// Name of the JavaScript function that should be applied to Pub/Sub messages.
  final pulumi.Input<String> functionName;

  /// Creates a new [SubscriptionMessageTransformJavascriptUdf].
  /// [code] JavaScript code that contains a function `function_name` with the
  /// [functionName] Name of the JavaScript function that should be applied to Pub/Sub messages.
  SubscriptionMessageTransformJavascriptUdf({
    required this.code,
    required this.functionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'functionName': functionName,
    };
  }

  factory SubscriptionMessageTransformJavascriptUdf.fromMap(Map<String, dynamic> map) {
    return SubscriptionMessageTransformJavascriptUdf(
      code: (map['code'] as String).input(),
      functionName: (map['functionName'] as String).input(),
    );
  }
}

