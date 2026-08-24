// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustDlpPredefinedEntryPattern {
  final pulumi.Input<String?>? regex;
  /// Available values: "luhn".
  final pulumi.Input<String?>? validation;

  /// Creates a new [ZeroTrustDlpPredefinedEntryPattern].
  /// [regex] Optional.
  /// [validation] Available values: "luhn".
  const ZeroTrustDlpPredefinedEntryPattern({
    this.regex,
    this.validation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regex': ?regex,
      'validation': ?validation,
    };
  }

  factory ZeroTrustDlpPredefinedEntryPattern.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpPredefinedEntryPattern(
      regex: (() { final guardedValue = map['regex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validation: (() { final guardedValue = map['validation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
