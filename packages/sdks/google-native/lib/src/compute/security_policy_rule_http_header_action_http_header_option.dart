// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityPolicyRuleHttpHeaderActionHttpHeaderOption {
  /// The name of the header to set.
  final pulumi.Input<String>? headerName;
  /// The value to set the named header to.
  final pulumi.Input<String>? headerValue;

  /// Creates a new [SecurityPolicyRuleHttpHeaderActionHttpHeaderOption].
  /// [headerName] The name of the header to set.
  /// [headerValue] The value to set the named header to.
  SecurityPolicyRuleHttpHeaderActionHttpHeaderOption({
    this.headerName,
    this.headerValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': ?headerName,
      'headerValue': ?headerValue,
    };
  }

  factory SecurityPolicyRuleHttpHeaderActionHttpHeaderOption.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleHttpHeaderActionHttpHeaderOption(
      headerName: map['headerName'] == null ? null : (map['headerName']! as String).input(),
      headerValue: map['headerValue'] == null ? null : (map['headerValue']! as String).input(),
    );
  }
}

