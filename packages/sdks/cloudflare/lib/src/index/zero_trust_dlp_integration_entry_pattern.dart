// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustDlpIntegrationEntryPattern {
  final pulumi.Input<String?>? regex;
  /// Available values: "luhn".
  final pulumi.Input<String?>? validation;

  /// Creates a new [ZeroTrustDlpIntegrationEntryPattern].
  /// [regex] Optional.
  /// [validation] Available values: "luhn".
  const ZeroTrustDlpIntegrationEntryPattern({
    this.regex,
    this.validation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regex': ?regex,
      'validation': ?validation,
    };
  }

  factory ZeroTrustDlpIntegrationEntryPattern.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpIntegrationEntryPattern(
      regex: (() { final guardedValue = map['regex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validation: (() { final guardedValue = map['validation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
