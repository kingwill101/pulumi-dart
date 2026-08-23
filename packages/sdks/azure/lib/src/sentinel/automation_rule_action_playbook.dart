// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutomationRuleActionPlaybook {
  /// The ID of the Logic App that defines the playbook's logic.
  final pulumi.Input<String> logicAppId;
  /// The execution order of this action.
  final pulumi.Input<int> order;
  /// The ID of the Tenant that owns the playbook.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [AutomationRuleActionPlaybook].
  /// [logicAppId] The ID of the Logic App that defines the playbook's logic.
  /// [order] The execution order of this action.
  /// [tenantId] The ID of the Tenant that owns the playbook.
  const AutomationRuleActionPlaybook({
    required this.logicAppId,
    required this.order,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logicAppId': logicAppId,
      'order': order,
      'tenantId': ?tenantId,
    };
  }

  factory AutomationRuleActionPlaybook.fromMap(Map<String, dynamic> map) {
    return AutomationRuleActionPlaybook(
      logicAppId: pulumi.Input.fromValue(map['logicAppId'] as String),
      order: pulumi.Input.fromValue(map['order'] as int),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
