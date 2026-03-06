// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSubscriptionMessageTransformJavascriptUdf {
  /// JavaScript code that contains a function 'function_name' with the
  /// following signature:
  /// '''
  /// /**
  /// * Transforms a Pub/Sub message.
  /// *
  /// * @return {(Object&lt;string, (string | Object&lt;string, string&gt;)&gt;|null)} - To
  /// * filter a message, return 'null'. To transform a message return a map
  /// * with the following keys:
  /// *   - (required) 'data' : {string}
  /// *   - (optional) 'attributes' : {Object&lt;string, string&gt;}
  /// * Returning empty 'attributes' will remove all attributes from the
  /// * message.
  /// *
  /// * @param  {(Object&lt;string, (string | Object&lt;string, string&gt;)&gt;} Pub/Sub
  /// * message. Keys:
  /// *   - (required) 'data' : {string}
  /// *   - (required) 'attributes' : {Object&lt;string, string&gt;}
  /// *
  /// * @param  {Object&lt;string, any&gt;} metadata - Pub/Sub message metadata.
  /// * Keys:
  /// *   - (required) 'message_id'  : {string}
  /// *   - (optional) 'publish_time': {string} YYYY-MM-DDTHH:MM:SSZ format
  /// *   - (optional) 'ordering_key': {string}
  /// */
  /// function &lt;function_name&gt;(message, metadata) {
  /// }
  /// '''
  final pulumi.Input<String> code;
  /// Name of the JavaScript function that should be applied to Pub/Sub messages.
  final pulumi.Input<String> functionName;

  /// Creates a new [GetSubscriptionMessageTransformJavascriptUdf].
  /// [code] JavaScript code that contains a function 'function_name' with the
  /// [functionName] Name of the JavaScript function that should be applied to Pub/Sub messages.
  const GetSubscriptionMessageTransformJavascriptUdf({
    required this.code,
    required this.functionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'functionName': functionName,
    };
  }

  factory GetSubscriptionMessageTransformJavascriptUdf.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionMessageTransformJavascriptUdf(
      code: pulumi.Input.fromValue(map['code'] as String),
      functionName: pulumi.Input.fromValue(map['functionName'] as String),
    );
  }
}

