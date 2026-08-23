// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Rule used to validate strings.
class EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex {
  /// Whether the regex matcher is applied exclusively (if true, matching values will be rejected).
  final pulumi.Input<bool>? exclusive;
  /// The regex applied to the input value(s).
  final pulumi.Input<String>? regex;

  /// Creates a new [EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex].
  /// [exclusive] Whether the regex matcher is applied exclusively (if true, matching values will be rejected).
  /// [regex] The regex applied to the input value(s).
  const EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex({
    this.exclusive,
    this.regex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusive': ?exclusive,
      'regex': ?regex,
    };
  }

  factory EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex(
      exclusive: (() { final guardedValue = map['exclusive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      regex: (() { final guardedValue = map['regex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
