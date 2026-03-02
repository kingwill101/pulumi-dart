// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_webhook_generic_web_service.dart';
import 'cx_webhook_service_directory.dart';

/// Input properties used for looking up and filtering CxWebhook resources.
class CxWebhookState {
  /// Indicates whether the webhook is disabled.
  final pulumi.Input<bool>? disabled;
  /// The human-readable name of the webhook, unique within the agent.
  final pulumi.Input<String>? displayName;
  /// Deprecated. Indicates if automatic spell correction is enabled in detect intent requests.
  final pulumi.Input<bool>? enableSpellCorrection;
  /// Deprecated. Determines whether this agent should log conversation queries.
  final pulumi.Input<bool>? enableStackdriverLogging;
  /// Represents configuration for a generic web service.
  /// Structure is documented below.
  final pulumi.Input<CxWebhookGenericWebService>? genericWebService;
  /// The unique identifier of the webhook.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/webhooks/<Webhook ID>.
  final pulumi.Input<String>? name;
  /// The agent to create a webhook for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
  final pulumi.Input<String>? parent;
  /// Deprecated. Name of the SecuritySettings reference for the agent. Format: projects/<Project ID>/locations/<Location ID>/securitySettings/<Security Settings ID>.
  final pulumi.Input<String>? securitySettings;
  /// Configuration for a Service Directory service.
  /// Structure is documented below.
  final pulumi.Input<CxWebhookServiceDirectory>? serviceDirectory;
  /// Deprecated. Name of the start flow in this agent. A start flow will be automatically created when the agent is created, and can only be deleted by deleting the agent. Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>.
  final pulumi.Input<String>? startFlow;
  /// Webhook execution timeout.
  final pulumi.Input<String>? timeout;

  /// Creates a new [CxWebhookState].
  /// [disabled] Indicates whether the webhook is disabled.
  /// [displayName] The human-readable name of the webhook, unique within the agent.
  /// [enableSpellCorrection] Deprecated. Indicates if automatic spell correction is enabled in detect intent requests.
  /// [enableStackdriverLogging] Deprecated. Determines whether this agent should log conversation queries.
  /// [genericWebService] Represents configuration for a generic web service.
  /// [name] The unique identifier of the webhook.
  /// [parent] The agent to create a webhook for.
  /// [securitySettings] Deprecated. Name of the SecuritySettings reference for the agent. Format: projects/<Project ID>/locations/<Location ID>/securitySettings/<Security Settings ID>.
  /// [serviceDirectory] Configuration for a Service Directory service.
  /// [startFlow] Deprecated. Name of the start flow in this agent. A start flow will be automatically created when the agent is created, and can only be deleted by deleting the agent. Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>.
  /// [timeout] Webhook execution timeout.
  CxWebhookState({
    this.disabled,
    this.displayName,
    this.enableSpellCorrection,
    this.enableStackdriverLogging,
    this.genericWebService,
    this.name,
    this.parent,
    this.securitySettings,
    this.serviceDirectory,
    this.startFlow,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'displayName': ?displayName,
      'enableSpellCorrection': ?enableSpellCorrection,
      'enableStackdriverLogging': ?enableStackdriverLogging,
      'genericWebService': ?pulumi.Input.mapOptionalInputValue<CxWebhookGenericWebService, Map<String, dynamic>>(genericWebService, (value) => value.toMap()),
      'name': ?name,
      'parent': ?parent,
      'securitySettings': ?securitySettings,
      'serviceDirectory': ?pulumi.Input.mapOptionalInputValue<CxWebhookServiceDirectory, Map<String, dynamic>>(serviceDirectory, (value) => value.toMap()),
      'startFlow': ?startFlow,
      'timeout': ?timeout,
    };
  }

  factory CxWebhookState.fromMap(Map<String, dynamic> map) {
    return CxWebhookState(
      disabled: map['disabled'] == null ? null : (map['disabled']! as bool).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      enableSpellCorrection: map['enableSpellCorrection'] == null ? null : (map['enableSpellCorrection']! as bool).input(),
      enableStackdriverLogging: map['enableStackdriverLogging'] == null ? null : (map['enableStackdriverLogging']! as bool).input(),
      genericWebService: map['genericWebService'] == null ? null : (CxWebhookGenericWebService.fromMap((map['genericWebService']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      parent: map['parent'] == null ? null : (map['parent']! as String).input(),
      securitySettings: map['securitySettings'] == null ? null : (map['securitySettings']! as String).input(),
      serviceDirectory: map['serviceDirectory'] == null ? null : (CxWebhookServiceDirectory.fromMap((map['serviceDirectory']! as Map).cast<String, dynamic>())).input(),
      startFlow: map['startFlow'] == null ? null : (map['startFlow']! as String).input(),
      timeout: map['timeout'] == null ? null : (map['timeout']! as String).input(),
    );
  }
}

