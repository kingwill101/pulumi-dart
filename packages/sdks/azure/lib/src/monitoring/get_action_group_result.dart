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
  /// One or more `arm_role_receiver` blocks as defined below.
  final List<GetActionGroupArmRoleReceiver> armRoleReceivers;

  /// One or more `automation_runbook_receiver` blocks as defined below.
  final List<GetActionGroupAutomationRunbookReceiver>
  automationRunbookReceivers;

  /// One or more `azure_app_push_receiver` blocks as defined below.
  final List<GetActionGroupAzureAppPushReceiver> azureAppPushReceivers;

  /// One or more `azure_function_receiver` blocks as defined below.
  final List<GetActionGroupAzureFunctionReceiver> azureFunctionReceivers;

  /// One or more `email_receiver` blocks as defined below.
  final List<GetActionGroupEmailReceiver> emailReceivers;

  /// Whether this action group is enabled.
  final bool enabled;

  /// One or more `event_hub_receiver` blocks as defined below.
  final List<GetActionGroupEventHubReceiver> eventHubReceivers;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// One or more `itsm_receiver` blocks as defined below.
  final List<GetActionGroupItsmReceiver> itsmReceivers;

  /// One or more `logic_app_receiver` blocks as defined below.
  final List<GetActionGroupLogicAppReceiver> logicAppReceivers;

  /// The name of the webhook receiver.
  final String name;
  final String resourceGroupName;

  /// The short name of the action group.
  final String shortName;

  /// One or more `sms_receiver` blocks as defined below.
  final List<GetActionGroupSmsReceiver> smsReceivers;

  /// One or more `voice_receiver` blocks as defined below.
  final List<GetActionGroupVoiceReceiver> voiceReceivers;

  /// One or more `webhook_receiver` blocks as defined below.
  final List<GetActionGroupWebhookReceiver> webhookReceivers;

  /// Creates a new [GetActionGroupResult].
  /// [armRoleReceivers] One or more `arm_role_receiver` blocks as defined below.
  /// [automationRunbookReceivers] One or more `automation_runbook_receiver` blocks as defined below.
  /// [azureAppPushReceivers] One or more `azure_app_push_receiver` blocks as defined below.
  /// [azureFunctionReceivers] One or more `azure_function_receiver` blocks as defined below.
  /// [emailReceivers] One or more `email_receiver` blocks as defined below.
  /// [enabled] Whether this action group is enabled.
  /// [eventHubReceivers] One or more `event_hub_receiver` blocks as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [itsmReceivers] One or more `itsm_receiver` blocks as defined below.
  /// [logicAppReceivers] One or more `logic_app_receiver` blocks as defined below.
  /// [name] The name of the webhook receiver.
  /// [resourceGroupName] Required.
  /// [shortName] The short name of the action group.
  /// [smsReceivers] One or more `sms_receiver` blocks as defined below.
  /// [voiceReceivers] One or more `voice_receiver` blocks as defined below.
  /// [webhookReceivers] One or more `webhook_receiver` blocks as defined below.
  GetActionGroupResult({
    required this.armRoleReceivers,
    required this.automationRunbookReceivers,
    required this.azureAppPushReceivers,
    required this.azureFunctionReceivers,
    required this.emailReceivers,
    required this.enabled,
    required this.eventHubReceivers,
    required this.id,
    required this.itsmReceivers,
    required this.logicAppReceivers,
    required this.name,
    required this.resourceGroupName,
    required this.shortName,
    required this.smsReceivers,
    required this.voiceReceivers,
    required this.webhookReceivers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'armRoleReceivers':
          pulumi.Input.encodeList<
            GetActionGroupArmRoleReceiver,
            Map<String, dynamic>
          >(armRoleReceivers, (value) => value.toMap()),
      'automationRunbookReceivers':
          pulumi.Input.encodeList<
            GetActionGroupAutomationRunbookReceiver,
            Map<String, dynamic>
          >(automationRunbookReceivers, (value) => value.toMap()),
      'azureAppPushReceivers':
          pulumi.Input.encodeList<
            GetActionGroupAzureAppPushReceiver,
            Map<String, dynamic>
          >(azureAppPushReceivers, (value) => value.toMap()),
      'azureFunctionReceivers':
          pulumi.Input.encodeList<
            GetActionGroupAzureFunctionReceiver,
            Map<String, dynamic>
          >(azureFunctionReceivers, (value) => value.toMap()),
      'emailReceivers':
          pulumi.Input.encodeList<
            GetActionGroupEmailReceiver,
            Map<String, dynamic>
          >(emailReceivers, (value) => value.toMap()),
      'enabled': enabled,
      'eventHubReceivers':
          pulumi.Input.encodeList<
            GetActionGroupEventHubReceiver,
            Map<String, dynamic>
          >(eventHubReceivers, (value) => value.toMap()),
      'id': id,
      'itsmReceivers':
          pulumi.Input.encodeList<
            GetActionGroupItsmReceiver,
            Map<String, dynamic>
          >(itsmReceivers, (value) => value.toMap()),
      'logicAppReceivers':
          pulumi.Input.encodeList<
            GetActionGroupLogicAppReceiver,
            Map<String, dynamic>
          >(logicAppReceivers, (value) => value.toMap()),
      'name': name,
      'resourceGroupName': resourceGroupName,
      'shortName': shortName,
      'smsReceivers':
          pulumi.Input.encodeList<
            GetActionGroupSmsReceiver,
            Map<String, dynamic>
          >(smsReceivers, (value) => value.toMap()),
      'voiceReceivers':
          pulumi.Input.encodeList<
            GetActionGroupVoiceReceiver,
            Map<String, dynamic>
          >(voiceReceivers, (value) => value.toMap()),
      'webhookReceivers':
          pulumi.Input.encodeList<
            GetActionGroupWebhookReceiver,
            Map<String, dynamic>
          >(webhookReceivers, (value) => value.toMap()),
    };
  }

  factory GetActionGroupResult.fromMap(Map<String, dynamic> map) {
    return GetActionGroupResult(
      armRoleReceivers: pulumi.Input.decodeList<GetActionGroupArmRoleReceiver>(
        map['armRoleReceivers']!,
        (value) => GetActionGroupArmRoleReceiver.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      automationRunbookReceivers:
          pulumi.Input.decodeList<GetActionGroupAutomationRunbookReceiver>(
            map['automationRunbookReceivers']!,
            (value) => GetActionGroupAutomationRunbookReceiver.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      azureAppPushReceivers:
          pulumi.Input.decodeList<GetActionGroupAzureAppPushReceiver>(
            map['azureAppPushReceivers']!,
            (value) => GetActionGroupAzureAppPushReceiver.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      azureFunctionReceivers:
          pulumi.Input.decodeList<GetActionGroupAzureFunctionReceiver>(
            map['azureFunctionReceivers']!,
            (value) => GetActionGroupAzureFunctionReceiver.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      emailReceivers: pulumi.Input.decodeList<GetActionGroupEmailReceiver>(
        map['emailReceivers']!,
        (value) => GetActionGroupEmailReceiver.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      enabled: map['enabled'] as bool,
      eventHubReceivers:
          pulumi.Input.decodeList<GetActionGroupEventHubReceiver>(
            map['eventHubReceivers']!,
            (value) => GetActionGroupEventHubReceiver.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      id: map['id'] as String,
      itsmReceivers: pulumi.Input.decodeList<GetActionGroupItsmReceiver>(
        map['itsmReceivers']!,
        (value) => GetActionGroupItsmReceiver.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      logicAppReceivers:
          pulumi.Input.decodeList<GetActionGroupLogicAppReceiver>(
            map['logicAppReceivers']!,
            (value) => GetActionGroupLogicAppReceiver.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      shortName: map['shortName'] as String,
      smsReceivers: pulumi.Input.decodeList<GetActionGroupSmsReceiver>(
        map['smsReceivers']!,
        (value) => GetActionGroupSmsReceiver.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      voiceReceivers: pulumi.Input.decodeList<GetActionGroupVoiceReceiver>(
        map['voiceReceivers']!,
        (value) => GetActionGroupVoiceReceiver.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      webhookReceivers: pulumi.Input.decodeList<GetActionGroupWebhookReceiver>(
        map['webhookReceivers']!,
        (value) => GetActionGroupWebhookReceiver.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
