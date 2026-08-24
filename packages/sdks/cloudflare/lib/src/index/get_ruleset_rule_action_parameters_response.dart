// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesetRuleActionParametersResponse {
  /// The content to return.
  final pulumi.Input<String> content;
  /// The type of the content to return.
  final pulumi.Input<String> contentType;
  /// The status code to return.
  final pulumi.Input<int> statusCode;

  /// Creates a new [GetRulesetRuleActionParametersResponse].
  /// [content] The content to return.
  /// [contentType] The type of the content to return.
  /// [statusCode] The status code to return.
  const GetRulesetRuleActionParametersResponse({
    required this.content,
    required this.contentType,
    required this.statusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'contentType': contentType,
      'statusCode': statusCode,
    };
  }

  factory GetRulesetRuleActionParametersResponse.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersResponse(
      content: pulumi.Input.fromValue(map['content'] as String),
      contentType: pulumi.Input.fromValue(map['contentType'] as String),
      statusCode: pulumi.Input.fromValue((map['statusCode'] as num).toInt()),
    );
  }
}
