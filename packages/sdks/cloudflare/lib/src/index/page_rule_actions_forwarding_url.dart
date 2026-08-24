// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PageRuleActionsForwardingUrl {
  final pulumi.Input<int> statusCode;
  final pulumi.Input<String> url;

  /// Creates a new [PageRuleActionsForwardingUrl].
  /// [statusCode] Required.
  /// [url] Required.
  const PageRuleActionsForwardingUrl({
    required this.statusCode,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statusCode': statusCode,
      'url': url,
    };
  }

  factory PageRuleActionsForwardingUrl.fromMap(Map<String, dynamic> map) {
    return PageRuleActionsForwardingUrl(
      statusCode: pulumi.Input.fromValue((map['statusCode'] as num).toInt()),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
