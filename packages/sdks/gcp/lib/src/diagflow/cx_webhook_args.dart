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
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;.
  final pulumi.Input<String>? parent;
  /// Deprecated. Name of the SecuritySettings reference for the agent. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/securitySettings/&lt;Security Settings ID&gt;.
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
  /// [securitySettings] Deprecated. Name of the SecuritySettings reference for the agent. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/securitySettings/&lt;Security Settings ID&gt;.
  /// [serviceDirectory] Configuration for a Service Directory service.
  /// [timeout] Webhook execution timeout.
  CxWebhookArgs({
    this.disabled,
    required this.displayName,
    this.enableSpellCorrection,
    this.enableStackdriverLogging,
    this.genericWebService,
    this.parent,
    this.securitySettings,
    this.serviceDirectory,
    this.timeout,
  });

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
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      enableSpellCorrection: (() { final guardedValue = map['enableSpellCorrection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableStackdriverLogging: (() { final guardedValue = map['enableStackdriverLogging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      genericWebService: (() { final guardedValue = map['genericWebService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxWebhookGenericWebService.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securitySettings: (() { final guardedValue = map['securitySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceDirectory: (() { final guardedValue = map['serviceDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxWebhookServiceDirectory.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

