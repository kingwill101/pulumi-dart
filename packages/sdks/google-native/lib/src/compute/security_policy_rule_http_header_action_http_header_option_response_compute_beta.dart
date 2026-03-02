// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponseComputeBeta {
  /// The name of the header to set.
  final pulumi.Input<String> headerName;
  /// The value to set the named header to.
  final pulumi.Input<String> headerValue;

  /// Creates a new [SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponseComputeBeta].
  /// [headerName] The name of the header to set.
  /// [headerValue] The value to set the named header to.
  SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponseComputeBeta({
    required this.headerName,
    required this.headerValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': headerName,
      'headerValue': headerValue,
    };
  }

  factory SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponseComputeBeta(
      headerName: (map['headerName'] as String).input(),
      headerValue: (map['headerValue'] as String).input(),
    );
  }
}

