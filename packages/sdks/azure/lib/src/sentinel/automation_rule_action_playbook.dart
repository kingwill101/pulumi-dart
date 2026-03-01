// ignore_for_file: unused_element, unnecessary_cast


class AutomationRuleActionPlaybook {
  /// The ID of the Logic App that defines the playbook's logic.
  final String logicAppId;
  /// The execution order of this action.
  final int order;
  /// The ID of the Tenant that owns the playbook.
  final String? tenantId;

  /// Creates a new [AutomationRuleActionPlaybook].
  /// [logicAppId] The ID of the Logic App that defines the playbook's logic.
  /// [order] The execution order of this action.
  /// [tenantId] The ID of the Tenant that owns the playbook.
  AutomationRuleActionPlaybook({
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
      logicAppId: map['logicAppId'] as String,
      order: map['order'] as int,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

