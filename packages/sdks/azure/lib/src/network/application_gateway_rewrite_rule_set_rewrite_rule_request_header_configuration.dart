// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationGatewayRewriteRuleSetRewriteRuleRequestHeaderConfiguration {
  /// Header name of the header configuration.
  final pulumi.Input<String> headerName;

  /// Header value of the header configuration. To delete a request header set this property to an empty string.
  final pulumi.Input<String> headerValue;

  /// Creates a new [ApplicationGatewayRewriteRuleSetRewriteRuleRequestHeaderConfiguration].
  /// [headerName] Header name of the header configuration.
  /// [headerValue] Header value of the header configuration. To delete a request header set this property to an empty string.
  ApplicationGatewayRewriteRuleSetRewriteRuleRequestHeaderConfiguration({
    required this.headerName,
    required this.headerValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': headerName,
      'headerValue': headerValue,
    };
  }

  factory ApplicationGatewayRewriteRuleSetRewriteRuleRequestHeaderConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApplicationGatewayRewriteRuleSetRewriteRuleRequestHeaderConfiguration(
      headerName: pulumi.Input.fromValue(map['headerName'] as String),
      headerValue: pulumi.Input.fromValue(map['headerValue'] as String),
    );
  }
}
