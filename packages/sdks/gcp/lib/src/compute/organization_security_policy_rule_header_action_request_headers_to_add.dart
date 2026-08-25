// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrganizationSecurityPolicyRuleHeaderActionRequestHeadersToAdd {
  /// The name of the header to set.
  final pulumi.Input<String?>? headerName;
  /// The value to set the named header to.
  final pulumi.Input<String?>? headerValue;

  /// Creates a new [OrganizationSecurityPolicyRuleHeaderActionRequestHeadersToAdd].
  /// [headerName] The name of the header to set.
  /// [headerValue] The value to set the named header to.
  const OrganizationSecurityPolicyRuleHeaderActionRequestHeadersToAdd({
    this.headerName,
    this.headerValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': ?headerName,
      'headerValue': ?headerValue,
    };
  }

  factory OrganizationSecurityPolicyRuleHeaderActionRequestHeadersToAdd.fromMap(Map<String, dynamic> map) {
    return OrganizationSecurityPolicyRuleHeaderActionRequestHeadersToAdd(
      headerName: (() { final guardedValue = map['headerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headerValue: (() { final guardedValue = map['headerValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
