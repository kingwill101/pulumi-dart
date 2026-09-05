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
  final pulumi.Input<bool?>? useCommonAlertSchema;
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
  const ActionGroupAutomationRunbookReceiver({
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
      automationAccountId: pulumi.Input.fromValue(map['automationAccountId'] as String),
      isGlobalRunbook: pulumi.Input.fromValue(map['isGlobalRunbook'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      runbookName: pulumi.Input.fromValue(map['runbookName'] as String),
      serviceUri: pulumi.Input.fromValue(map['serviceUri'] as String),
      useCommonAlertSchema: (() { final guardedValue = map['useCommonAlertSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      webhookResourceId: pulumi.Input.fromValue(map['webhookResourceId'] as String),
    );
  }
}
