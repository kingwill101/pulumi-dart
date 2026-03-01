// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationGatewayRewriteRuleSetRewriteRuleResponseHeaderConfiguration {
  /// Header name of the header configuration.
  final String headerName;
  /// Header value of the header configuration.
  final String headerValue;

  /// Creates a new [GetApplicationGatewayRewriteRuleSetRewriteRuleResponseHeaderConfiguration].
  /// [headerName] Header name of the header configuration.
  /// [headerValue] Header value of the header configuration.
  GetApplicationGatewayRewriteRuleSetRewriteRuleResponseHeaderConfiguration({
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
      headerName: map['headerName'] as String,
      headerValue: map['headerValue'] as String,
    );
  }
}

