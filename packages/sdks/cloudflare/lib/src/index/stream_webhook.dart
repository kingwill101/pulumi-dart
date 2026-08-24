import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_webhook_args.dart';
import 'stream_webhook_state.dart';

/// Accepted Permissions
///
/// - `Stream Read`
/// - `Stream Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleStreamWebhook = new cloudflare.StreamWebhook("example_stream_webhook", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     notificationUrl: "https://example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_stream_webhook = cloudflare.StreamWebhook("example_stream_webhook",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     notification_url="https://example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleStreamWebhook = new Cloudflare.StreamWebhook("example_stream_webhook", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         NotificationUrl = "https://example.com",
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
/// 		_, err := cloudflare.NewStreamWebhook(ctx, "example_stream_webhook", &cloudflare.StreamWebhookArgs{
/// 			AccountId:       pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			NotificationUrl: pulumi.String("https://example.com"),
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
/// resource "cloudflare_streamwebhook" "example_stream_webhook" {
///   account_id       = "023e105f4ecef8ad9ca31a8372d0c353"
///   notification_url = "https://example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.StreamWebhook;
/// import com.pulumi.cloudflare.StreamWebhookArgs;
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
///         var exampleStreamWebhook = new StreamWebhook("exampleStreamWebhook", StreamWebhookArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .notificationUrl("https://example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleStreamWebhook:
///     type: cloudflare:StreamWebhook
///     name: example_stream_webhook
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       notificationUrl: https://example.com
/// ```
///
///
/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class StreamWebhook extends pulumi.CustomResource {
  /// The account identifier tag.
  late final pulumi.Output<String> accountId;
  /// The date and time the webhook was last modified.
  late final pulumi.Output<String> modified;
  /// The URL where webhooks will be sent.
  late final pulumi.Output<String?> notificationUrl;
  /// The secret used to verify webhook signatures.
  late final pulumi.Output<String> secret;

  /// Creates a new [StreamWebhook].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StreamWebhook]. {@macro pulumi_index_stream_webhook_stream_webhook_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StreamWebhook(
    String name, {
    StreamWebhookArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/streamWebhook:StreamWebhook',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
          additionalSecretOutputs: const ['secret'],
        ) {
    accountId = registerOutput<String>('accountId');
    modified = registerOutput<String>('modified');
    notificationUrl = registerOutput<String?>('notificationUrl');
    secret = registerOutput<String>('secret', isSecret: true);
  }

  /// Gets an existing [StreamWebhook] resource's state with the given [name] and [id].
  static StreamWebhook get(
    String name,
    pulumi.Input<String> id, {
    StreamWebhookState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return StreamWebhook._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  StreamWebhook._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/streamWebhook:StreamWebhook',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    modified = registerOutput<String>('modified');
    notificationUrl = registerOutput<String?>('notificationUrl');
    secret = registerOutput<String>('secret', isSecret: true);
  }

  /// Creates a typed reference to an existing [StreamWebhook] resource.
  StreamWebhook.reference(String urn)
    : super(
        'cloudflare:index/streamWebhook:StreamWebhook',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['secret'],
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    modified = registerOutput<String>('modified');
    notificationUrl = registerOutput<String?>('notificationUrl');
    secret = registerOutput<String>('secret', isSecret: true);
  }
}
