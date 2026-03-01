// ignore_for_file: unused_element, unnecessary_cast


class GetActionGroupAutomationRunbookReceiver {
  /// The automation account ID which holds this runbook and authenticates to Azure resources.
  final String automationAccountId;
  /// Indicates whether this instance is global runbook.
  final bool isGlobalRunbook;
  /// Specifies the name of the Action Group.
  final String name;
  /// The name for this runbook.
  final String runbookName;
  /// The URI where webhooks should be sent.
  final String serviceUri;
  /// Indicates whether to use common alert schema.
  final bool useCommonAlertSchema;
  /// The resource id for webhook linked to this runbook.
  final String webhookResourceId;

  /// Creates a new [GetActionGroupAutomationRunbookReceiver].
  /// [automationAccountId] The automation account ID which holds this runbook and authenticates to Azure resources.
  /// [isGlobalRunbook] Indicates whether this instance is global runbook.
  /// [name] Specifies the name of the Action Group.
  /// [runbookName] The name for this runbook.
  /// [serviceUri] The URI where webhooks should be sent.
  /// [useCommonAlertSchema] Indicates whether to use common alert schema.
  /// [webhookResourceId] The resource id for webhook linked to this runbook.
  GetActionGroupAutomationRunbookReceiver({
    required this.automationAccountId,
    required this.isGlobalRunbook,
    required this.name,
    required this.runbookName,
    required this.serviceUri,
    required this.useCommonAlertSchema,
    required this.webhookResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountId': automationAccountId,
      'isGlobalRunbook': isGlobalRunbook,
      'name': name,
      'runbookName': runbookName,
      'serviceUri': serviceUri,
      'useCommonAlertSchema': useCommonAlertSchema,
      'webhookResourceId': webhookResourceId,
    };
  }

  factory GetActionGroupAutomationRunbookReceiver.fromMap(Map<String, dynamic> map) {
    return GetActionGroupAutomationRunbookReceiver(
      automationAccountId: map['automationAccountId'] as String,
      isGlobalRunbook: map['isGlobalRunbook'] as bool,
      name: map['name'] as String,
      runbookName: map['runbookName'] as String,
      serviceUri: map['serviceUri'] as String,
      useCommonAlertSchema: map['useCommonAlertSchema'] as bool,
      webhookResourceId: map['webhookResourceId'] as String,
    );
  }
}

