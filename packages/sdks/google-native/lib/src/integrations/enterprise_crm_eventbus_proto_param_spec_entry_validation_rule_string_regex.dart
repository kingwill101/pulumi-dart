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
  EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex({
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
      exclusive: map['exclusive'] == null ? null : (map['exclusive'] as bool).input(),
      regex: map['regex'] == null ? null : (map['regex'] as String).input(),
    );
  }
}

