// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustDlpEntryPattern {
  final pulumi.Input<String> regex;
  /// Available values: "luhn".
  final pulumi.Input<String?>? validation;

  /// Creates a new [ZeroTrustDlpEntryPattern].
  /// [regex] Required.
  /// [validation] Available values: "luhn".
  const ZeroTrustDlpEntryPattern({
    required this.regex,
    this.validation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regex': regex,
      'validation': ?validation,
    };
  }

  factory ZeroTrustDlpEntryPattern.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpEntryPattern(
      regex: pulumi.Input.fromValue(map['regex'] as String),
      validation: (() { final guardedValue = map['validation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
