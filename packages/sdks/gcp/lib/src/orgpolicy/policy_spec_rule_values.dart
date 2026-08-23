// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicySpecRuleValues {
  /// List of values allowed at this resource.
  final pulumi.Input<List<String>>? allowedValues;
  /// List of values denied at this resource.
  final pulumi.Input<List<String>>? deniedValues;

  /// Creates a new [PolicySpecRuleValues].
  /// [allowedValues] List of values allowed at this resource.
  /// [deniedValues] List of values denied at this resource.
  const PolicySpecRuleValues({
    this.allowedValues,
    this.deniedValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedValues': ?allowedValues,
      'deniedValues': ?deniedValues,
    };
  }

  factory PolicySpecRuleValues.fromMap(Map<String, dynamic> map) {
    return PolicySpecRuleValues(
      allowedValues: (() { final guardedValue = map['allowedValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      deniedValues: (() { final guardedValue = map['deniedValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
