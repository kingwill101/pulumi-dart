// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_group_arm_role_receiver.dart';
import 'action_group_automation_runbook_receiver.dart';
import 'action_group_azure_app_push_receiver.dart';
import 'action_group_azure_function_receiver.dart';
import 'action_group_email_receiver.dart';
import 'action_group_event_hub_receiver.dart';
import 'action_group_itsm_receiver.dart';
import 'action_group_logic_app_receiver.dart';
import 'action_group_sms_receiver.dart';
import 'action_group_voice_receiver.dart';
import 'action_group_webhook_receiver.dart';

/// Input properties used for looking up and filtering ActionGroup resources.
class ActionGroupState {
  /// One or more `arm_role_receiver` blocks as defined below.
  final pulumi.Input<List<ActionGroupArmRoleReceiver>>? armRoleReceivers;
  /// One or more `automation_runbook_receiver` blocks as defined below.
  final pulumi.Input<List<ActionGroupAutomationRunbookReceiver>>? automationRunbookReceivers;
  /// One or more `azure_app_push_receiver` blocks as defined below.
  final pulumi.Input<List<ActionGroupAzureAppPushReceiver>>? azureAppPushReceivers;
  /// One or more `azure_function_receiver` blocks as defined below.
  final pulumi.Input<List<ActionGroupAzureFunctionReceiver>>? azureFunctionReceivers;
  /// One or more `email_receiver` blocks as defined below.
  final pulumi.Input<List<ActionGroupEmailReceiver>>? emailReceivers;
  /// Whether this action group is enabled. If an action group is not enabled, then none of its receivers will receive communications. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// One or more `event_hub_receiver` blocks as defined below.
  final pulumi.Input<List<ActionGroupEventHubReceiver>>? eventHubReceivers;
  /// One or more `itsm_receiver` blocks as defined below.
  final pulumi.Input<List<ActionGroupItsmReceiver>>? itsmReceivers;
  /// The Azure Region where the Action Group should exist. Changing this forces a new Action Group to be created. Defaults to `global`.
  final pulumi.Input<String>? location;
  /// One or more `logic_app_receiver` blocks as defined below.
  final pulumi.Input<List<ActionGroupLogicAppReceiver>>? logicAppReceivers;
  /// The name of the Action Group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the Action Group instance. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The short name of the action group. This will be used in SMS messages.
  final pulumi.Input<String>? shortName;
  /// One or more `sms_receiver` blocks as defined below.
  final pulumi.Input<List<ActionGroupSmsReceiver>>? smsReceivers;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// One or more `voice_receiver` blocks as defined below.
  final pulumi.Input<List<ActionGroupVoiceReceiver>>? voiceReceivers;
  /// One or more `webhook_receiver` blocks as defined below.
  final pulumi.Input<List<ActionGroupWebhookReceiver>>? webhookReceivers;

  /// Creates a new [ActionGroupState].
  /// [armRoleReceivers] One or more `arm_role_receiver` blocks as defined below.
  /// [automationRunbookReceivers] One or more `automation_runbook_receiver` blocks as defined below.
  /// [azureAppPushReceivers] One or more `azure_app_push_receiver` blocks as defined below.
  /// [azureFunctionReceivers] One or more `azure_function_receiver` blocks as defined below.
  /// [emailReceivers] One or more `email_receiver` blocks as defined below.
  /// [enabled] Whether this action group is enabled. If an action group is not enabled, then none of its receivers will receive communications. Defaults to `true`.
  /// [eventHubReceivers] One or more `event_hub_receiver` blocks as defined below.
  /// [itsmReceivers] One or more `itsm_receiver` blocks as defined below.
  /// [location] The Azure Region where the Action Group should exist. Changing this forces a new Action Group to be created. Defaults to `global`.
  /// [logicAppReceivers] One or more `logic_app_receiver` blocks as defined below.
  /// [name] The name of the Action Group. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the Action Group instance. Changing this forces a new resource to be created.
  /// [shortName] The short name of the action group. This will be used in SMS messages.
  /// [smsReceivers] One or more `sms_receiver` blocks as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  /// [voiceReceivers] One or more `voice_receiver` blocks as defined below.
  /// [webhookReceivers] One or more `webhook_receiver` blocks as defined below.
  ActionGroupState({
    this.armRoleReceivers,
    this.automationRunbookReceivers,
    this.azureAppPushReceivers,
    this.azureFunctionReceivers,
    this.emailReceivers,
    this.enabled,
    this.eventHubReceivers,
    this.itsmReceivers,
    this.location,
    this.logicAppReceivers,
    this.name,
    this.resourceGroupName,
    this.shortName,
    this.smsReceivers,
    this.tags,
    this.voiceReceivers,
    this.webhookReceivers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'armRoleReceivers': ?pulumi.Input.mapOptionalInputValue<List<ActionGroupArmRoleReceiver>, List<Map<String, dynamic>>>(armRoleReceivers, (value) => pulumi.Input.encodeList<ActionGroupArmRoleReceiver, Map<String, dynamic>>(value, (value) => value.toMap())),
      'automationRunbookReceivers': ?pulumi.Input.mapOptionalInputValue<List<ActionGroupAutomationRunbookReceiver>, List<Map<String, dynamic>>>(automationRunbookReceivers, (value) => pulumi.Input.encodeList<ActionGroupAutomationRunbookReceiver, Map<String, dynamic>>(value, (value) => value.toMap())),
      'azureAppPushReceivers': ?pulumi.Input.mapOptionalInputValue<List<ActionGroupAzureAppPushReceiver>, List<Map<String, dynamic>>>(azureAppPushReceivers, (value) => pulumi.Input.encodeList<ActionGroupAzureAppPushReceiver, Map<String, dynamic>>(value, (value) => value.toMap())),
      'azureFunctionReceivers': ?pulumi.Input.mapOptionalInputValue<List<ActionGroupAzureFunctionReceiver>, List<Map<String, dynamic>>>(azureFunctionReceivers, (value) => pulumi.Input.encodeList<ActionGroupAzureFunctionReceiver, Map<String, dynamic>>(value, (value) => value.toMap())),
      'emailReceivers': ?pulumi.Input.mapOptionalInputValue<List<ActionGroupEmailReceiver>, List<Map<String, dynamic>>>(emailReceivers, (value) => pulumi.Input.encodeList<ActionGroupEmailReceiver, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': ?enabled,
      'eventHubReceivers': ?pulumi.Input.mapOptionalInputValue<List<ActionGroupEventHubReceiver>, List<Map<String, dynamic>>>(eventHubReceivers, (value) => pulumi.Input.encodeList<ActionGroupEventHubReceiver, Map<String, dynamic>>(value, (value) => value.toMap())),
      'itsmReceivers': ?pulumi.Input.mapOptionalInputValue<List<ActionGroupItsmReceiver>, List<Map<String, dynamic>>>(itsmReceivers, (value) => pulumi.Input.encodeList<ActionGroupItsmReceiver, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'logicAppReceivers': ?pulumi.Input.mapOptionalInputValue<List<ActionGroupLogicAppReceiver>, List<Map<String, dynamic>>>(logicAppReceivers, (value) => pulumi.Input.encodeList<ActionGroupLogicAppReceiver, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'shortName': ?shortName,
      'smsReceivers': ?pulumi.Input.mapOptionalInputValue<List<ActionGroupSmsReceiver>, List<Map<String, dynamic>>>(smsReceivers, (value) => pulumi.Input.encodeList<ActionGroupSmsReceiver, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'voiceReceivers': ?pulumi.Input.mapOptionalInputValue<List<ActionGroupVoiceReceiver>, List<Map<String, dynamic>>>(voiceReceivers, (value) => pulumi.Input.encodeList<ActionGroupVoiceReceiver, Map<String, dynamic>>(value, (value) => value.toMap())),
      'webhookReceivers': ?pulumi.Input.mapOptionalInputValue<List<ActionGroupWebhookReceiver>, List<Map<String, dynamic>>>(webhookReceivers, (value) => pulumi.Input.encodeList<ActionGroupWebhookReceiver, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ActionGroupState.fromMap(Map<String, dynamic> map) {
    return ActionGroupState(
      armRoleReceivers: map['armRoleReceivers'] == null ? null : (pulumi.Input.decodeList<ActionGroupArmRoleReceiver>(map['armRoleReceivers'], (value) => ActionGroupArmRoleReceiver.fromMap((value as Map).cast<String, dynamic>()))).input(),
      automationRunbookReceivers: map['automationRunbookReceivers'] == null ? null : (pulumi.Input.decodeList<ActionGroupAutomationRunbookReceiver>(map['automationRunbookReceivers'], (value) => ActionGroupAutomationRunbookReceiver.fromMap((value as Map).cast<String, dynamic>()))).input(),
      azureAppPushReceivers: map['azureAppPushReceivers'] == null ? null : (pulumi.Input.decodeList<ActionGroupAzureAppPushReceiver>(map['azureAppPushReceivers'], (value) => ActionGroupAzureAppPushReceiver.fromMap((value as Map).cast<String, dynamic>()))).input(),
      azureFunctionReceivers: map['azureFunctionReceivers'] == null ? null : (pulumi.Input.decodeList<ActionGroupAzureFunctionReceiver>(map['azureFunctionReceivers'], (value) => ActionGroupAzureFunctionReceiver.fromMap((value as Map).cast<String, dynamic>()))).input(),
      emailReceivers: map['emailReceivers'] == null ? null : (pulumi.Input.decodeList<ActionGroupEmailReceiver>(map['emailReceivers'], (value) => ActionGroupEmailReceiver.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      eventHubReceivers: map['eventHubReceivers'] == null ? null : (pulumi.Input.decodeList<ActionGroupEventHubReceiver>(map['eventHubReceivers'], (value) => ActionGroupEventHubReceiver.fromMap((value as Map).cast<String, dynamic>()))).input(),
      itsmReceivers: map['itsmReceivers'] == null ? null : (pulumi.Input.decodeList<ActionGroupItsmReceiver>(map['itsmReceivers'], (value) => ActionGroupItsmReceiver.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      logicAppReceivers: map['logicAppReceivers'] == null ? null : (pulumi.Input.decodeList<ActionGroupLogicAppReceiver>(map['logicAppReceivers'], (value) => ActionGroupLogicAppReceiver.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      shortName: map['shortName'] == null ? null : (map['shortName'] as String).input(),
      smsReceivers: map['smsReceivers'] == null ? null : (pulumi.Input.decodeList<ActionGroupSmsReceiver>(map['smsReceivers'], (value) => ActionGroupSmsReceiver.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      voiceReceivers: map['voiceReceivers'] == null ? null : (pulumi.Input.decodeList<ActionGroupVoiceReceiver>(map['voiceReceivers'], (value) => ActionGroupVoiceReceiver.fromMap((value as Map).cast<String, dynamic>()))).input(),
      webhookReceivers: map['webhookReceivers'] == null ? null : (pulumi.Input.decodeList<ActionGroupWebhookReceiver>(map['webhookReceivers'], (value) => ActionGroupWebhookReceiver.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

