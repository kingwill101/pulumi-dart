// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Webhook resources.
class WebhookState {
  /// The name of the automation account in which the Webhook is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? automationAccountName;
  /// Controls if Webhook is enabled. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Timestamp when the webhook expires. Changing this forces a new resource to be created.
  final pulumi.Input<String>? expiryTime;
  /// Specifies the name of the Webhook. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Map of input parameters passed to runbook.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The name of the resource group in which the Webhook is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Name of the hybrid worker group the Webhook job will run on.
  final pulumi.Input<String>? runOnWorkerGroup;
  /// Name of the Automation Runbook to execute by Webhook.
  final pulumi.Input<String>? runbookName;
  /// URI to initiate the webhook. Can be generated using [Generate URI API](https://docs.microsoft.com/rest/api/automation/webhook/generate-uri). By default, new URI is generated on each new resource creation. Changing this forces a new resource to be created.
  final pulumi.Input<String>? uri;

  /// Creates a new [WebhookState].
  /// [automationAccountName] The name of the automation account in which the Webhook is created. Changing this forces a new resource to be created.
  /// [enabled] Controls if Webhook is enabled. Defaults to `true`.
  /// [expiryTime] Timestamp when the webhook expires. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Webhook. Changing this forces a new resource to be created.
  /// [parameters] Map of input parameters passed to runbook.
  /// [resourceGroupName] The name of the resource group in which the Webhook is created. Changing this forces a new resource to be created.
  /// [runOnWorkerGroup] Name of the hybrid worker group the Webhook job will run on.
  /// [runbookName] Name of the Automation Runbook to execute by Webhook.
  /// [uri] URI to initiate the webhook. Can be generated using [Generate URI API](https://docs.microsoft.com/rest/api/automation/webhook/generate-uri). By default, new URI is generated on each new resource creation. Changing this forces a new resource to be created.
  WebhookState({
    this.automationAccountName,
    this.enabled,
    this.expiryTime,
    this.name,
    this.parameters,
    this.resourceGroupName,
    this.runOnWorkerGroup,
    this.runbookName,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': ?automationAccountName,
      'enabled': ?enabled,
      'expiryTime': ?expiryTime,
      'name': ?name,
      'parameters': ?parameters,
      'resourceGroupName': ?resourceGroupName,
      'runOnWorkerGroup': ?runOnWorkerGroup,
      'runbookName': ?runbookName,
      'uri': ?uri,
    };
  }

  factory WebhookState.fromMap(Map<String, dynamic> map) {
    return WebhookState(
      automationAccountName: map['automationAccountName'] == null ? null : (map['automationAccountName'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      expiryTime: map['expiryTime'] == null ? null : (map['expiryTime'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters'] as Map).cast<String, String>()).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      runOnWorkerGroup: map['runOnWorkerGroup'] == null ? null : (map['runOnWorkerGroup'] as String).input(),
      runbookName: map['runbookName'] == null ? null : (map['runbookName'] as String).input(),
      uri: map['uri'] == null ? null : (map['uri'] as String).input(),
    );
  }
}

