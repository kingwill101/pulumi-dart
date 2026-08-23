// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describe the owner source of governance rule
class GovernanceRuleOwnerSource {
  /// The owner type for the governance rule owner source
  final pulumi.Input<String>? type;
  /// The source value e.g. tag key like owner name or email address
  final pulumi.Input<String>? value;

  /// Creates a new [GovernanceRuleOwnerSource].
  /// [type] The owner type for the governance rule owner source
  /// [value] The source value e.g. tag key like owner name or email address
  const GovernanceRuleOwnerSource({
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'value': ?value,
    };
  }

  factory GovernanceRuleOwnerSource.fromMap(Map<String, dynamic> map) {
    return GovernanceRuleOwnerSource(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
