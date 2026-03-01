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
    pulumi.Output<bool>? disabled,
    pulumi.Output<String>? displayName,
    pulumi.Output<bool>? enableSpellCorrection,
    pulumi.Output<bool>? enableStackdriverLogging,
    pulumi.Output<CxWebhookGenericWebService>? genericWebService,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parent,
    pulumi.Output<String>? securitySettings,
    pulumi.Output<CxWebhookServiceDirectory>? serviceDirectory,
    pulumi.Output<String>? startFlow,
    pulumi.Output<String>? timeout,
  }) :
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      enableSpellCorrection = pulumi.Input.asOptionalInput<bool>(enableSpellCorrection),
      enableStackdriverLogging = pulumi.Input.asOptionalInput<bool>(enableStackdriverLogging),
      genericWebService = pulumi.Input.asOptionalInput<CxWebhookGenericWebService>(genericWebService),
      name = pulumi.Input.asOptionalInput<String>(name),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      securitySettings = pulumi.Input.asOptionalInput<String>(securitySettings),
      serviceDirectory = pulumi.Input.asOptionalInput<CxWebhookServiceDirectory>(serviceDirectory),
      startFlow = pulumi.Input.asOptionalInput<String>(startFlow),
      timeout = pulumi.Input.asOptionalInput<String>(timeout);

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
      disabled: map['disabled'] == null ? null : pulumi.Output.create<bool>(map['disabled'] as bool),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      enableSpellCorrection: map['enableSpellCorrection'] == null ? null : pulumi.Output.create<bool>(map['enableSpellCorrection'] as bool),
      enableStackdriverLogging: map['enableStackdriverLogging'] == null ? null : pulumi.Output.create<bool>(map['enableStackdriverLogging'] as bool),
      genericWebService: map['genericWebService'] == null ? null : pulumi.Output.create<CxWebhookGenericWebService>(CxWebhookGenericWebService.fromMap((map['genericWebService'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      securitySettings: map['securitySettings'] == null ? null : pulumi.Output.create<String>(map['securitySettings'] as String),
      serviceDirectory: map['serviceDirectory'] == null ? null : pulumi.Output.create<CxWebhookServiceDirectory>(CxWebhookServiceDirectory.fromMap((map['serviceDirectory'] as Map).cast<String, dynamic>())),
      startFlow: map['startFlow'] == null ? null : pulumi.Output.create<String>(map['startFlow'] as String),
      timeout: map['timeout'] == null ? null : pulumi.Output.create<String>(map['timeout'] as String),
    );
  }
}

