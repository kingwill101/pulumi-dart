// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationGatewayRewriteRuleSetRewriteRuleRequestHeaderConfiguration {
  /// Header name of the header configuration.
  final pulumi.Input<String> headerName;

  /// Header value of the header configuration.
  final pulumi.Input<String> headerValue;

  /// Creates a new [GetApplicationGatewayRewriteRuleSetRewriteRuleRequestHeaderConfiguration].
  /// [headerName] Header name of the header configuration.
  /// [headerValue] Header value of the header configuration.
  GetApplicationGatewayRewriteRuleSetRewriteRuleRequestHeaderConfiguration({
    required this.headerName,
    required this.headerValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': headerName,
      'headerValue': headerValue,
    };
  }

  factory GetApplicationGatewayRewriteRuleSetRewriteRuleRequestHeaderConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetApplicationGatewayRewriteRuleSetRewriteRuleRequestHeaderConfiguration(
      headerName: pulumi.Input.fromValue(map['headerName'] as String),
      headerValue: pulumi.Input.fromValue(map['headerValue'] as String),
    );
  }
}
