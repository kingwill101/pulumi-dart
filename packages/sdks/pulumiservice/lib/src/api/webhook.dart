import 'package:pulumi/pulumi.dart' as pulumi;
import 'webhook_args.dart';

/// Creates a new webhook for a Pulumi ESC environment. Webhooks allow external services to be notified when environment events occur, such as updates or opens. The request body specifies the webhook configuration including the destination URL, event filters, and format. Returns 400 if the organization name in the request body does not match the URL path parameter. Returns 409 if a webhook with the same name already exists.
class Webhook extends pulumi.CustomResource {
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

  /// Creates a new [Webhook].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Webhook]. {@macro pulumi_api_esc_webhook_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Webhook(
    String name, {
    WebhookArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api/esc:Webhook',
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
