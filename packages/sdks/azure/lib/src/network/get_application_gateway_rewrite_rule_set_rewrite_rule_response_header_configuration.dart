// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationGatewayRewriteRuleSetRewriteRuleResponseHeaderConfiguration {
  /// Header name of the header configuration.
  final pulumi.Input<String> headerName;
  /// Header value of the header configuration.
  final pulumi.Input<String> headerValue;

  /// Creates a new [GetApplicationGatewayRewriteRuleSetRewriteRuleResponseHeaderConfiguration].
  /// [headerName] Header name of the header configuration.
  /// [headerValue] Header value of the header configuration.
  const GetApplicationGatewayRewriteRuleSetRewriteRuleResponseHeaderConfiguration({
    required this.headerName,
    required this.headerValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': headerName,
      'headerValue': headerValue,
    };
  }

  factory GetApplicationGatewayRewriteRuleSetRewriteRuleResponseHeaderConfiguration.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayRewriteRuleSetRewriteRuleResponseHeaderConfiguration(
      headerName: pulumi.Input.fromValue(map['headerName'] as String),
      headerValue: pulumi.Input.fromValue(map['headerValue'] as String),
    );
  }
}

