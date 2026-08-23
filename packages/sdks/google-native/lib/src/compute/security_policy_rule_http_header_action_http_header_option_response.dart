// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponse {
  /// The name of the header to set.
  final pulumi.Input<String> headerName;
  /// The value to set the named header to.
  final pulumi.Input<String> headerValue;

  /// Creates a new [SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponse].
  /// [headerName] The name of the header to set.
  /// [headerValue] The value to set the named header to.
  const SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponse({
    required this.headerName,
    required this.headerValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': headerName,
      'headerValue': headerValue,
    };
  }

  factory SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponse.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponse(
      headerName: pulumi.Input.fromValue(map['headerName'] as String),
      headerValue: pulumi.Input.fromValue(map['headerValue'] as String),
    );
  }
}
