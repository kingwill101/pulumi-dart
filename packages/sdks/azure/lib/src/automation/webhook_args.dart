// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_webhook_webhook_args_doc}
/// The set of arguments for Webhook.
/// {@endtemplate}
/// {@macro pulumi_automation_webhook_webhook_args_doc}
class WebhookArgs {
  /// The name of the automation account in which the Webhook is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> automationAccountName;
  /// Controls if Webhook is enabled. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Timestamp when the webhook expires. Changing this forces a new resource to be created.
  final pulumi.Input<String> expiryTime;
  /// Specifies the name of the Webhook. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Map of input parameters passed to runbook.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The name of the resource group in which the Webhook is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the hybrid worker group the Webhook job will run on.
  final pulumi.Input<String>? runOnWorkerGroup;
  /// Name of the Automation Runbook to execute by Webhook.
  final pulumi.Input<String> runbookName;
  /// URI to initiate the webhook. Can be generated using [Generate URI API](https://docs.microsoft.com/rest/api/automation/webhook/generate-uri). By default, new URI is generated on each new resource creation. Changing this forces a new resource to be created.
  final pulumi.Input<String>? uri;

  /// Creates a new [WebhookArgs].
  /// [automationAccountName] The name of the automation account in which the Webhook is created. Changing this forces a new resource to be created.
  /// [enabled] Controls if Webhook is enabled. Defaults to `true`.
  /// [expiryTime] Timestamp when the webhook expires. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Webhook. Changing this forces a new resource to be created.
  /// [parameters] Map of input parameters passed to runbook.
  /// [resourceGroupName] The name of the resource group in which the Webhook is created. Changing this forces a new resource to be created.
  /// [runOnWorkerGroup] Name of the hybrid worker group the Webhook job will run on.
  /// [runbookName] Name of the Automation Runbook to execute by Webhook.
  /// [uri] URI to initiate the webhook. Can be generated using [Generate URI API](https://docs.microsoft.com/rest/api/automation/webhook/generate-uri). By default, new URI is generated on each new resource creation. Changing this forces a new resource to be created.
  WebhookArgs({
    required this.automationAccountName,
    this.enabled,
    required this.expiryTime,
    this.name,
    this.parameters,
    required this.resourceGroupName,
    this.runOnWorkerGroup,
    required this.runbookName,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'enabled': ?enabled,
      'expiryTime': expiryTime,
      'name': ?name,
      'parameters': ?parameters,
      'resourceGroupName': resourceGroupName,
      'runOnWorkerGroup': ?runOnWorkerGroup,
      'runbookName': runbookName,
      'uri': ?uri,
    };
  }

  factory WebhookArgs.fromMap(Map<String, dynamic> map) {
    return WebhookArgs(
      automationAccountName: pulumi.Input.fromValue(map['automationAccountName'] as String),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expiryTime: pulumi.Input.fromValue(map['expiryTime'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      runOnWorkerGroup: (() { final guardedValue = map['runOnWorkerGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runbookName: pulumi.Input.fromValue(map['runbookName'] as String),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

