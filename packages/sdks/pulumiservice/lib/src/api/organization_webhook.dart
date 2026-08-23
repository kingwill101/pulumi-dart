import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_webhook_args.dart';

/// Creates a new webhook for an organization to notify external services when events occur. Webhooks can be configured to fire on stack events (created, deleted, update succeeded/failed), deployment events (queued, started, succeeded, failed), drift detection events, and policy violation events (mandatory, advisory).
///
/// The `format` field accepts: `raw` (default), `slack`, `ms_teams`, or `pulumi_deployments`.
///
/// The `filters` field accepts a list of event types to subscribe to. See the [webhook event filtering documentation](https://www.pulumi.com/docs/pulumi-cloud/webhooks/#event-filtering) for available filters.
///
/// The optional `secret` field sets the HMAC key for signature verification via the `Pulumi-Webhook-Signature` header. See the [webhook headers documentation](https://www.pulumi.com/docs/pulumi-cloud/webhooks/#headers) for details.
class OrganizationWebhook extends pulumi.CustomResource {
  /// Whether the webhook is active and will receive deliveries.
  late final pulumi.Output<bool> active;
  /// The human-readable display name shown in the UI.
  late final pulumi.Output<String> displayName;
  /// The environment name. Set when the webhook is scoped to a specific environment.
  late final pulumi.Output<String?> envName;
  /// Specific event types this webhook subscribes to. If empty, all events are delivered.
  late final pulumi.Output<List<String>?> filters;
  /// The format of the webhook payload (e.g., 'raw', 'slack', 'ms_teams').
  late final pulumi.Output<String?> format;
  /// Event groups this webhook subscribes to (e.g., 'stacks', 'deployments').
  late final pulumi.Output<List<String>?> groups;
  /// HasSecret is true if the webhook has a secret. This is used to determine whether
  /// to show that there is a secret in the UI.
  late final pulumi.Output<bool> hasSecret;
  /// The unique identifier name for the webhook within its scope. Optional on creation; if omitted, the service generates a short random name. Always populated in responses.
  late final pulumi.Output<String?> name;
  /// The organization that owns this webhook.
  late final pulumi.Output<String> organizationName;
  /// The URL to which webhook payloads are delivered.
  late final pulumi.Output<String> payloadUrl;
  /// The project name. Set when the webhook is scoped to a specific stack.
  late final pulumi.Output<String?> projectName;
  /// Secret will be omitted when returned from the service.
  late final pulumi.Output<String?> secret;
  /// SecretCiphertext is the ciphertext value of the webhook's secret.
  /// It's used to check whether the secret was changed by the PSP
  late final pulumi.Output<String> secretCiphertext;
  /// The stack name. Set when the webhook is scoped to a specific stack.
  late final pulumi.Output<String?> stackName;

  /// Creates a new [OrganizationWebhook].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationWebhook]. {@macro pulumi_api_organization_webhook_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationWebhook(
    String name, {
    OrganizationWebhookArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api:OrganizationWebhook',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    active = registerOutput<bool>('active');
    displayName = registerOutput<String>('displayName');
    envName = registerOutput<String?>('envName');
    filters = registerOutput<List<String>?>('filters');
    format = registerOutput<String?>('format');
    groups = registerOutput<List<String>?>('groups');
    hasSecret = registerOutput<bool>('hasSecret');
    this.name = registerOutput<String?>('name');
    organizationName = registerOutput<String>('organizationName');
    payloadUrl = registerOutput<String>('payloadUrl');
    projectName = registerOutput<String?>('projectName');
    secret = registerOutput<String?>('secret');
    secretCiphertext = registerOutput<String>('secretCiphertext');
    stackName = registerOutput<String?>('stackName');
  }
}
