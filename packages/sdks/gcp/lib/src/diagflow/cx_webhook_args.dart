// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_webhook_generic_web_service.dart';
import 'cx_webhook_service_directory.dart';

/// {@template pulumi_diagflow_cx_webhook_cx_webhook_args_doc}
/// The set of arguments for CxWebhook.
/// {@endtemplate}
/// {@macro pulumi_diagflow_cx_webhook_cx_webhook_args_doc}
class CxWebhookArgs {
  /// Indicates whether the webhook is disabled.
  final pulumi.Input<bool>? disabled;
  /// The human-readable name of the webhook, unique within the agent.
  final pulumi.Input<String> displayName;
  /// Deprecated. Indicates if automatic spell correction is enabled in detect intent requests.
  final pulumi.Input<bool>? enableSpellCorrection;
  /// Deprecated. Determines whether this agent should log conversation queries.
  final pulumi.Input<bool>? enableStackdriverLogging;
  /// Represents configuration for a generic web service.
  /// Structure is documented below.
  final pulumi.Input<CxWebhookGenericWebService>? genericWebService;
  /// The agent to create a webhook for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
  final pulumi.Input<String>? parent;
  /// Deprecated. Name of the SecuritySettings reference for the agent. Format: projects/<Project ID>/locations/<Location ID>/securitySettings/<Security Settings ID>.
  final pulumi.Input<String>? securitySettings;
  /// Configuration for a Service Directory service.
  /// Structure is documented below.
  final pulumi.Input<CxWebhookServiceDirectory>? serviceDirectory;
  /// Webhook execution timeout.
  final pulumi.Input<String>? timeout;

  /// Creates a new [CxWebhookArgs].
  /// [disabled] Indicates whether the webhook is disabled.
  /// [displayName] The human-readable name of the webhook, unique within the agent.
  /// [enableSpellCorrection] Deprecated. Indicates if automatic spell correction is enabled in detect intent requests.
  /// [enableStackdriverLogging] Deprecated. Determines whether this agent should log conversation queries.
  /// [genericWebService] Represents configuration for a generic web service.
  /// [parent] The agent to create a webhook for.
  /// [securitySettings] Deprecated. Name of the SecuritySettings reference for the agent. Format: projects/<Project ID>/locations/<Location ID>/securitySettings/<Security Settings ID>.
  /// [serviceDirectory] Configuration for a Service Directory service.
  /// [timeout] Webhook execution timeout.
  CxWebhookArgs({
    pulumi.Output<bool>? disabled,
    required pulumi.Output<String> displayName,
    pulumi.Output<bool>? enableSpellCorrection,
    pulumi.Output<bool>? enableStackdriverLogging,
    pulumi.Output<CxWebhookGenericWebService>? genericWebService,
    pulumi.Output<String>? parent,
    pulumi.Output<String>? securitySettings,
    pulumi.Output<CxWebhookServiceDirectory>? serviceDirectory,
    pulumi.Output<String>? timeout,
  }) :
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      displayName = pulumi.Input.asInput<String>(displayName),
      enableSpellCorrection = pulumi.Input.asOptionalInput<bool>(enableSpellCorrection),
      enableStackdriverLogging = pulumi.Input.asOptionalInput<bool>(enableStackdriverLogging),
      genericWebService = pulumi.Input.asOptionalInput<CxWebhookGenericWebService>(genericWebService),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      securitySettings = pulumi.Input.asOptionalInput<String>(securitySettings),
      serviceDirectory = pulumi.Input.asOptionalInput<CxWebhookServiceDirectory>(serviceDirectory),
      timeout = pulumi.Input.asOptionalInput<String>(timeout);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'displayName': displayName,
      'enableSpellCorrection': ?enableSpellCorrection,
      'enableStackdriverLogging': ?enableStackdriverLogging,
      'genericWebService': ?pulumi.Input.mapOptionalInputValue<CxWebhookGenericWebService, Map<String, dynamic>>(genericWebService, (value) => value.toMap()),
      'parent': ?parent,
      'securitySettings': ?securitySettings,
      'serviceDirectory': ?pulumi.Input.mapOptionalInputValue<CxWebhookServiceDirectory, Map<String, dynamic>>(serviceDirectory, (value) => value.toMap()),
      'timeout': ?timeout,
    };
  }

  factory CxWebhookArgs.fromMap(Map<String, dynamic> map) {
    return CxWebhookArgs(
      disabled: map['disabled'] == null ? null : pulumi.Output.create<bool>(map['disabled'] as bool),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      enableSpellCorrection: map['enableSpellCorrection'] == null ? null : pulumi.Output.create<bool>(map['enableSpellCorrection'] as bool),
      enableStackdriverLogging: map['enableStackdriverLogging'] == null ? null : pulumi.Output.create<bool>(map['enableStackdriverLogging'] as bool),
      genericWebService: map['genericWebService'] == null ? null : pulumi.Output.create<CxWebhookGenericWebService>(CxWebhookGenericWebService.fromMap((map['genericWebService'] as Map).cast<String, dynamic>())),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      securitySettings: map['securitySettings'] == null ? null : pulumi.Output.create<String>(map['securitySettings'] as String),
      serviceDirectory: map['serviceDirectory'] == null ? null : pulumi.Output.create<CxWebhookServiceDirectory>(CxWebhookServiceDirectory.fromMap((map['serviceDirectory'] as Map).cast<String, dynamic>())),
      timeout: map['timeout'] == null ? null : pulumi.Output.create<String>(map['timeout'] as String),
    );
  }
}

