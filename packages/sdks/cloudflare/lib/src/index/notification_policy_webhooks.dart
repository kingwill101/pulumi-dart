import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_policy_webhooks_args.dart';
import 'notification_policy_webhooks_state.dart';

/// Accepted Permissions
///
/// - `Account Settings Read`
/// - `Account Settings Write`
/// - `Notifications Read`
/// - `Notifications Write`
/// - `Zero Trust: PII Read`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleNotificationPolicyWebhooks = new cloudflare.NotificationPolicyWebhooks("example_notification_policy_webhooks", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     name: "Slack Webhook",
///     url: "https://hooks.slack.com/services/Ds3fdBFbV/456464Gdd",
///     secret: "secret",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_notification_policy_webhooks = cloudflare.NotificationPolicyWebhooks("example_notification_policy_webhooks",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     name="Slack Webhook",
///     url="https://hooks.slack.com/services/Ds3fdBFbV/456464Gdd",
///     secret="secret")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleNotificationPolicyWebhooks = new Cloudflare.NotificationPolicyWebhooks("example_notification_policy_webhooks", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Name = "Slack Webhook",
///         Url = "https://hooks.slack.com/services/Ds3fdBFbV/456464Gdd",
///         Secret = "secret",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudflare.NewNotificationPolicyWebhooks(ctx, "example_notification_policy_webhooks", &cloudflare.NotificationPolicyWebhooksArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Name:      pulumi.String("Slack Webhook"),
/// 			Url:       pulumi.String("https://hooks.slack.com/services/Ds3fdBFbV/456464Gdd"),
/// 			Secret:    pulumi.String("secret"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_notificationpolicywebhooks" "example_notification_policy_webhooks" {
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   name       = "Slack Webhook"
///   url        = "https://hooks.slack.com/services/Ds3fdBFbV/456464Gdd"
///   secret     = "secret"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.NotificationPolicyWebhooks;
/// import com.pulumi.cloudflare.NotificationPolicyWebhooksArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var exampleNotificationPolicyWebhooks = new NotificationPolicyWebhooks("exampleNotificationPolicyWebhooks", NotificationPolicyWebhooksArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .name("Slack Webhook")
///             .url("https://hooks.slack.com/services/Ds3fdBFbV/456464Gdd")
///             .secret("secret")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleNotificationPolicyWebhooks:
///     type: cloudflare:NotificationPolicyWebhooks
///     name: example_notification_policy_webhooks
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       name: Slack Webhook
///       url: https://hooks.slack.com/services/Ds3fdBFbV/456464Gdd
///       secret: secret
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/notificationPolicyWebhooks:NotificationPolicyWebhooks example '<account_id>/<webhook_id>'
/// ```
class NotificationPolicyWebhooks extends pulumi.CustomResource {
  /// The account id
  late final pulumi.Output<String> accountId;
  /// Timestamp of when the webhook destination was created.
  late final pulumi.Output<String> createdAt;
  /// Timestamp of the last time an attempt to dispatch a notification to this webhook failed.
  late final pulumi.Output<String> lastFailure;
  /// Timestamp of the last time Cloudflare was able to successfully dispatch a notification using this webhook.
  late final pulumi.Output<String> lastSuccess;
  /// The name of the webhook destination. This will be included in the request body when you receive a webhook notification.
  late final pulumi.Output<String> name;
  /// Optional secret that will be passed in the `cf-webhook-auth` header when dispatching generic webhook notifications or formatted for supported destinations. Secrets are not returned in any API response body.
  late final pulumi.Output<String?> secret;
  /// Type of webhook endpoint.
  /// Available values: "datadog", "discord", "feishu", "gchat", "generic", "opsgenie", "slack", "splunk".
  late final pulumi.Output<String> type;
  /// The POST endpoint to call when dispatching a notification.
  late final pulumi.Output<String> url;

  /// Creates a new [NotificationPolicyWebhooks].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NotificationPolicyWebhooks]. {@macro pulumi_index_notification_policy_webhooks_notification_policy_webhooks_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NotificationPolicyWebhooks(
    String name, {
    NotificationPolicyWebhooksArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/notificationPolicyWebhooks:NotificationPolicyWebhooks',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
          additionalSecretOutputs: const ['secret'],
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    lastFailure = registerOutput<String>('lastFailure');
    lastSuccess = registerOutput<String>('lastSuccess');
    this.name = registerOutput<String>('name');
    secret = registerOutput<String?>('secret', isSecret: true);
    type = registerOutput<String>('type');
    url = registerOutput<String>('url');
  }

  /// Gets an existing [NotificationPolicyWebhooks] resource's state with the given [name] and [id].
  static NotificationPolicyWebhooks get(
    String name,
    pulumi.Input<String> id, {
    NotificationPolicyWebhooksState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return NotificationPolicyWebhooks._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  NotificationPolicyWebhooks._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/notificationPolicyWebhooks:NotificationPolicyWebhooks',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    lastFailure = registerOutput<String>('lastFailure');
    lastSuccess = registerOutput<String>('lastSuccess');
    this.name = registerOutput<String>('name');
    secret = registerOutput<String?>('secret', isSecret: true);
    type = registerOutput<String>('type');
    url = registerOutput<String>('url');
  }

  /// Creates a typed reference to an existing [NotificationPolicyWebhooks] resource.
  NotificationPolicyWebhooks.reference(String urn)
    : super(
        'cloudflare:index/notificationPolicyWebhooks:NotificationPolicyWebhooks',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['secret'],
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    lastFailure = registerOutput<String>('lastFailure');
    lastSuccess = registerOutput<String>('lastSuccess');
    this.name = registerOutput<String>('name');
    secret = registerOutput<String?>('secret', isSecret: true);
    type = registerOutput<String>('type');
    url = registerOutput<String>('url');
  }
}
