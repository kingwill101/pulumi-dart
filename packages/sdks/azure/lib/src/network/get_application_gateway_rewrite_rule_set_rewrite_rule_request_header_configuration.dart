// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationGatewayRewriteRuleSetRewriteRuleRequestHeaderConfiguration {
  /// Header name of the header configuration.
  final String headerName;
  /// Header value of the header configuration.
  final String headerValue;

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

  factory GetApplicationGatewayRewriteRuleSetRewriteRuleRequestHeaderConfiguration.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayRewriteRuleSetRewriteRuleRequestHeaderConfiguration(
      headerName: map['headerName'] as String,
      headerValue: map['headerValue'] as String,
    );
  }
}

