// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_action_group_arm_role_receiver.dart';
import 'get_action_group_automation_runbook_receiver.dart';
import 'get_action_group_azure_app_push_receiver.dart';
import 'get_action_group_azure_function_receiver.dart';
import 'get_action_group_email_receiver.dart';
import 'get_action_group_event_hub_receiver.dart';
import 'get_action_group_itsm_receiver.dart';
import 'get_action_group_logic_app_receiver.dart';
import 'get_action_group_sms_receiver.dart';
import 'get_action_group_voice_receiver.dart';
import 'get_action_group_webhook_receiver.dart';

/// Result data returned by getActionGroup.
class GetActionGroupResult {
  /// One or more `armRoleReceiver` blocks as defined below.
  final List<GetActionGroupArmRoleReceiver>? armRoleReceivers;
  /// One or more `automationRunbookReceiver` blocks as defined below.
  final List<GetActionGroupAutomationRunbookReceiver>? automationRunbookReceivers;
  /// One or more `azureAppPushReceiver` blocks as defined below.
  final List<GetActionGroupAzureAppPushReceiver>? azureAppPushReceivers;
  /// One or more `azureFunctionReceiver` blocks as defined below.
  final List<GetActionGroupAzureFunctionReceiver>? azureFunctionReceivers;
  /// One or more `emailReceiver` blocks as defined below.
  final List<GetActionGroupEmailReceiver>? emailReceivers;
  /// Whether this action group is enabled.
  final bool? enabled;
  /// One or more `eventHubReceiver` blocks as defined below.
  final List<GetActionGroupEventHubReceiver>? eventHubReceivers;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// One or more `itsmReceiver` blocks as defined below.
  final List<GetActionGroupItsmReceiver>? itsmReceivers;
  /// One or more `logicAppReceiver` blocks as defined below.
  final List<GetActionGroupLogicAppReceiver>? logicAppReceivers;
  /// The name of the webhook receiver.
  final String? name;
  final String? resourceGroupName;
  /// The short name of the action group.
  final String? shortName;
  /// One or more `smsReceiver` blocks as defined below.
  final List<GetActionGroupSmsReceiver>? smsReceivers;
  /// One or more `voiceReceiver` blocks as defined below.
  final List<GetActionGroupVoiceReceiver>? voiceReceivers;
  /// One or more `webhookReceiver` blocks as defined below.
  final List<GetActionGroupWebhookReceiver>? webhookReceivers;

  /// Creates a new [GetActionGroupResult].
  /// [armRoleReceivers] One or more `armRoleReceiver` blocks as defined below.
  /// [automationRunbookReceivers] One or more `automationRunbookReceiver` blocks as defined below.
  /// [azureAppPushReceivers] One or more `azureAppPushReceiver` blocks as defined below.
  /// [azureFunctionReceivers] One or more `azureFunctionReceiver` blocks as defined below.
  /// [emailReceivers] One or more `emailReceiver` blocks as defined below.
  /// [enabled] Whether this action group is enabled.
  /// [eventHubReceivers] One or more `eventHubReceiver` blocks as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [itsmReceivers] One or more `itsmReceiver` blocks as defined below.
  /// [logicAppReceivers] One or more `logicAppReceiver` blocks as defined below.
  /// [name] The name of the webhook receiver.
  /// [resourceGroupName] Optional.
  /// [shortName] The short name of the action group.
  /// [smsReceivers] One or more `smsReceiver` blocks as defined below.
  /// [voiceReceivers] One or more `voiceReceiver` blocks as defined below.
  /// [webhookReceivers] One or more `webhookReceiver` blocks as defined below.
  const GetActionGroupResult({
    this.armRoleReceivers,
    this.automationRunbookReceivers,
    this.azureAppPushReceivers,
    this.azureFunctionReceivers,
    this.emailReceivers,
    this.enabled,
    this.eventHubReceivers,
    this.id,
    this.itsmReceivers,
    this.logicAppReceivers,
    this.name,
    this.resourceGroupName,
    this.shortName,
    this.smsReceivers,
    this.voiceReceivers,
    this.webhookReceivers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'armRoleReceivers': ?(() { final guardedValue = armRoleReceivers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetActionGroupArmRoleReceiver, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'automationRunbookReceivers': ?(() { final guardedValue = automationRunbookReceivers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetActionGroupAutomationRunbookReceiver, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'azureAppPushReceivers': ?(() { final guardedValue = azureAppPushReceivers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetActionGroupAzureAppPushReceiver, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'azureFunctionReceivers': ?(() { final guardedValue = azureFunctionReceivers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetActionGroupAzureFunctionReceiver, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'emailReceivers': ?(() { final guardedValue = emailReceivers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetActionGroupEmailReceiver, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'enabled': ?enabled,
      'eventHubReceivers': ?(() { final guardedValue = eventHubReceivers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetActionGroupEventHubReceiver, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'itsmReceivers': ?(() { final guardedValue = itsmReceivers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetActionGroupItsmReceiver, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'logicAppReceivers': ?(() { final guardedValue = logicAppReceivers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetActionGroupLogicAppReceiver, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'shortName': ?shortName,
      'smsReceivers': ?(() { final guardedValue = smsReceivers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetActionGroupSmsReceiver, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'voiceReceivers': ?(() { final guardedValue = voiceReceivers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetActionGroupVoiceReceiver, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'webhookReceivers': ?(() { final guardedValue = webhookReceivers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetActionGroupWebhookReceiver, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetActionGroupResult.fromMap(Map<String, dynamic> map) {
    return GetActionGroupResult(
      armRoleReceivers: (() { final guardedValue = map['armRoleReceivers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetActionGroupArmRoleReceiver>(guardedValue, (value) => GetActionGroupArmRoleReceiver.fromMap((value as Map).cast<String, dynamic>())); })(),
      automationRunbookReceivers: (() { final guardedValue = map['automationRunbookReceivers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetActionGroupAutomationRunbookReceiver>(guardedValue, (value) => GetActionGroupAutomationRunbookReceiver.fromMap((value as Map).cast<String, dynamic>())); })(),
      azureAppPushReceivers: (() { final guardedValue = map['azureAppPushReceivers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetActionGroupAzureAppPushReceiver>(guardedValue, (value) => GetActionGroupAzureAppPushReceiver.fromMap((value as Map).cast<String, dynamic>())); })(),
      azureFunctionReceivers: (() { final guardedValue = map['azureFunctionReceivers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetActionGroupAzureFunctionReceiver>(guardedValue, (value) => GetActionGroupAzureFunctionReceiver.fromMap((value as Map).cast<String, dynamic>())); })(),
      emailReceivers: (() { final guardedValue = map['emailReceivers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetActionGroupEmailReceiver>(guardedValue, (value) => GetActionGroupEmailReceiver.fromMap((value as Map).cast<String, dynamic>())); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      eventHubReceivers: (() { final guardedValue = map['eventHubReceivers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetActionGroupEventHubReceiver>(guardedValue, (value) => GetActionGroupEventHubReceiver.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      itsmReceivers: (() { final guardedValue = map['itsmReceivers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetActionGroupItsmReceiver>(guardedValue, (value) => GetActionGroupItsmReceiver.fromMap((value as Map).cast<String, dynamic>())); })(),
      logicAppReceivers: (() { final guardedValue = map['logicAppReceivers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetActionGroupLogicAppReceiver>(guardedValue, (value) => GetActionGroupLogicAppReceiver.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shortName: (() { final guardedValue = map['shortName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      smsReceivers: (() { final guardedValue = map['smsReceivers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetActionGroupSmsReceiver>(guardedValue, (value) => GetActionGroupSmsReceiver.fromMap((value as Map).cast<String, dynamic>())); })(),
      voiceReceivers: (() { final guardedValue = map['voiceReceivers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetActionGroupVoiceReceiver>(guardedValue, (value) => GetActionGroupVoiceReceiver.fromMap((value as Map).cast<String, dynamic>())); })(),
      webhookReceivers: (() { final guardedValue = map['webhookReceivers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetActionGroupWebhookReceiver>(guardedValue, (value) => GetActionGroupWebhookReceiver.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
