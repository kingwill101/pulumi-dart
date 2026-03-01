// ignore_for_file: unused_element, unnecessary_cast


class ApplicationGatewayRewriteRuleSetRewriteRuleResponseHeaderConfiguration {
  /// Header name of the header configuration.
  final String headerName;
  /// Header value of the header configuration. To delete a response header set this property to an empty string.
  final String headerValue;

  /// Creates a new [ApplicationGatewayRewriteRuleSetRewriteRuleResponseHeaderConfiguration].
  /// [headerName] Header name of the header configuration.
  /// [headerValue] Header value of the header configuration. To delete a response header set this property to an empty string.
  ApplicationGatewayRewriteRuleSetRewriteRuleResponseHeaderConfiguration({
    required this.headerName,
    required this.headerValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': headerName,
      'headerValue': headerValue,
    };
  }

  factory ApplicationGatewayRewriteRuleSetRewriteRuleResponseHeaderConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayRewriteRuleSetRewriteRuleResponseHeaderConfiguration(
      headerName: map['headerName'] as String,
      headerValue: map['headerValue'] as String,
    );
  }
}

