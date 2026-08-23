// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_stacks_webhook_api_stacks_args_doc}
/// The set of arguments for Webhook.
/// {@endtemplate}
/// {@macro pulumi_api_stacks_webhook_api_stacks_args_doc}
class WebhookApiStacksArgs {
  /// Whether the webhook is active and will receive deliveries.
  final pulumi.Input<bool> active;
  /// The human-readable display name shown in the UI.
  final pulumi.Input<String> displayName;
  /// The environment name. Set when the webhook is scoped to a specific environment.
  final pulumi.Input<String>? envName;
  /// Specific event types this webhook subscribes to. If empty, all events are delivered.
  final pulumi.Input<List<String>>? filters;
  /// The format of the webhook payload (e.g., 'raw', 'slack', 'ms_teams').
  final pulumi.Input<String>? format;
  /// Event groups this webhook subscribes to (e.g., 'stacks', 'deployments').
  final pulumi.Input<List<String>>? groups;
  /// The unique identifier name for the webhook within its scope. Optional on creation; if omitted, the service generates a short random name. Always populated in responses.
  final pulumi.Input<String>? name;
  /// The organization that owns this webhook.
  final pulumi.Input<String> organizationName;
  /// The URL to which webhook payloads are delivered.
  final pulumi.Input<String> payloadUrl;
  /// The project name. Set when the webhook is scoped to a specific stack.
  final pulumi.Input<String> projectName;
  /// Secret will be omitted when returned from the service.
  final pulumi.Input<String>? secret;
  /// The stack name. Set when the webhook is scoped to a specific stack.
  final pulumi.Input<String> stackName;

  /// Creates a new [WebhookApiStacksArgs].
  /// [active] Whether the webhook is active and will receive deliveries.
  /// [displayName] The human-readable display name shown in the UI.
  /// [envName] The environment name. Set when the webhook is scoped to a specific environment.
  /// [filters] Specific event types this webhook subscribes to. If empty, all events are delivered.
  /// [format] The format of the webhook payload (e.g., 'raw', 'slack', 'ms_teams').
  /// [groups] Event groups this webhook subscribes to (e.g., 'stacks', 'deployments').
  /// [name] The unique identifier name for the webhook within its scope. Optional on creation; if omitted, the service generates a short random name. Always populated in responses.
  /// [organizationName] The organization that owns this webhook.
  /// [payloadUrl] The URL to which webhook payloads are delivered.
  /// [projectName] The project name. Set when the webhook is scoped to a specific stack.
  /// [secret] Secret will be omitted when returned from the service.
  /// [stackName] The stack name. Set when the webhook is scoped to a specific stack.
  const WebhookApiStacksArgs({
    required this.active,
    required this.displayName,
    this.envName,
    this.filters,
    this.format,
    this.groups,
    this.name,
    required this.organizationName,
    required this.payloadUrl,
    required this.projectName,
    this.secret,
    required this.stackName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': active,
      'displayName': displayName,
      'envName': ?envName,
      'filters': ?filters,
      'format': ?format,
      'groups': ?groups,
      'name': ?name,
      'organizationName': organizationName,
      'payloadUrl': payloadUrl,
      'projectName': projectName,
      'secret': ?secret,
      'stackName': stackName,
    };
  }

  factory WebhookApiStacksArgs.fromMap(Map<String, dynamic> map) {
    return WebhookApiStacksArgs(
      active: pulumi.Input.fromValue(map['active'] as bool),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      envName: (() { final guardedValue = map['envName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groups: (() { final guardedValue = map['groups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationName: pulumi.Input.fromValue(map['organizationName'] as String),
      payloadUrl: pulumi.Input.fromValue(map['payloadUrl'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stackName: pulumi.Input.fromValue(map['stackName'] as String),
    );
  }
}
