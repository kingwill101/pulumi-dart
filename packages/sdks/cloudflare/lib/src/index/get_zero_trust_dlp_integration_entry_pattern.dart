// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDlpIntegrationEntryPattern {
  final pulumi.Input<String> regex;
  /// Available values: "luhn".
  final pulumi.Input<String> validation;

  /// Creates a new [GetZeroTrustDlpIntegrationEntryPattern].
  /// [regex] Required.
  /// [validation] Available values: "luhn".
  const GetZeroTrustDlpIntegrationEntryPattern({
    required this.regex,
    required this.validation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regex': regex,
      'validation': validation,
    };
  }

  factory GetZeroTrustDlpIntegrationEntryPattern.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpIntegrationEntryPattern(
      regex: pulumi.Input.fromValue(map['regex'] as String),
      validation: pulumi.Input.fromValue(map['validation'] as String),
    );
  }
}
