// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ActionGroupAutomationRunbookReceiver {
  /// The automation account ID which holds this runbook and authenticates to Azure resources.
  final pulumi.Input<String> automationAccountId;
  /// Indicates whether this instance is global runbook.
  final pulumi.Input<bool> isGlobalRunbook;
  /// The name of the automation runbook receiver.
  final pulumi.Input<String> name;
  /// The name for this runbook.
  final pulumi.Input<String> runbookName;
  /// The URI where webhooks should be sent.
  final pulumi.Input<String> serviceUri;
  /// Enables or disables the common alert schema.
  final pulumi.Input<bool>? useCommonAlertSchema;
  /// The resource id for webhook linked to this runbook.
  final pulumi.Input<String> webhookResourceId;

  /// Creates a new [ActionGroupAutomationRunbookReceiver].
  /// [automationAccountId] The automation account ID which holds this runbook and authenticates to Azure resources.
  /// [isGlobalRunbook] Indicates whether this instance is global runbook.
  /// [name] The name of the automation runbook receiver.
  /// [runbookName] The name for this runbook.
  /// [serviceUri] The URI where webhooks should be sent.
  /// [useCommonAlertSchema] Enables or disables the common alert schema.
  /// [webhookResourceId] The resource id for webhook linked to this runbook.
  ActionGroupAutomationRunbookReceiver({
    required this.automationAccountId,
    required this.isGlobalRunbook,
    required this.name,
    required this.runbookName,
    required this.serviceUri,
    this.useCommonAlertSchema,
    required this.webhookResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountId': automationAccountId,
      'isGlobalRunbook': isGlobalRunbook,
      'name': name,
      'runbookName': runbookName,
      'serviceUri': serviceUri,
      'useCommonAlertSchema': ?useCommonAlertSchema,
      'webhookResourceId': webhookResourceId,
    };
  }

  factory ActionGroupAutomationRunbookReceiver.fromMap(Map<String, dynamic> map) {
    return ActionGroupAutomationRunbookReceiver(
      automationAccountId: (map['automationAccountId'] as String).input(),
      isGlobalRunbook: (map['isGlobalRunbook'] as bool).input(),
      name: (map['name'] as String).input(),
      runbookName: (map['runbookName'] as String).input(),
      serviceUri: (map['serviceUri'] as String).input(),
      useCommonAlertSchema: map['useCommonAlertSchema'] == null ? null : (map['useCommonAlertSchema']! as bool).input(),
      webhookResourceId: (map['webhookResourceId'] as String).input(),
    );
  }
}

