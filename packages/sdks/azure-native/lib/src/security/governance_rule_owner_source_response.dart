// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describe the owner source of governance rule
class GovernanceRuleOwnerSourceResponse {
  /// The owner type for the governance rule owner source
  final pulumi.Input<String?>? type;
  /// The source value e.g. tag key like owner name or email address
  final pulumi.Input<String?>? value;

  /// Creates a new [GovernanceRuleOwnerSourceResponse].
  /// [type] The owner type for the governance rule owner source
  /// [value] The source value e.g. tag key like owner name or email address
  const GovernanceRuleOwnerSourceResponse({
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'value': ?value,
    };
  }

  factory GovernanceRuleOwnerSourceResponse.fromMap(Map<String, dynamic> map) {
    return GovernanceRuleOwnerSourceResponse(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
