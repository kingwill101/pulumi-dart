// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetActionGroupAutomationRunbookReceiver {
  /// The automation account ID which holds this runbook and authenticates to Azure resources.
  final pulumi.Input<String> automationAccountId;
  /// Indicates whether this instance is global runbook.
  final pulumi.Input<bool> isGlobalRunbook;
  /// Specifies the name of the Action Group.
  final pulumi.Input<String> name;
  /// The name for this runbook.
  final pulumi.Input<String> runbookName;
  /// The URI where webhooks should be sent.
  final pulumi.Input<String> serviceUri;
  /// Indicates whether to use common alert schema.
  final pulumi.Input<bool> useCommonAlertSchema;
  /// The resource id for webhook linked to this runbook.
  final pulumi.Input<String> webhookResourceId;

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
      automationAccountId: (map['automationAccountId'] as String).input(),
      isGlobalRunbook: (map['isGlobalRunbook'] as bool).input(),
      name: (map['name'] as String).input(),
      runbookName: (map['runbookName'] as String).input(),
      serviceUri: (map['serviceUri'] as String).input(),
      useCommonAlertSchema: (map['useCommonAlertSchema'] as bool).input(),
      webhookResourceId: (map['webhookResourceId'] as String).input(),
    );
  }
}

