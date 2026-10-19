import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_casb_webhook_args.dart';
import 'zero_trust_casb_webhook_header.dart';
import 'zero_trust_casb_webhook_state.dart';

/// Accepted Permissions
///
/// - `Zero Trust Read`
/// - `Zero Trust Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustCasbWebhook = new cloudflare.ZeroTrustCasbWebhook("example_zero_trust_casb_webhook", {
///     accountId: "46148281d8a93d002ef242d8b0d5f9f6",
///     authenticationType: "Bearer Auth",
///     destinationUrl: "https://example.com/webhook",
///     label: "Send to Slack",
///     headers: [
///         {
///             key: "Authorization",
///             value: "Bearer token123",
///         },
///         {
///             key: "X-Custom-Header",
///             value: "value",
///         },
///     ],
///     signingSecret: "my-secret-key",
///     status: "enabled",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_casb_webhook = cloudflare.ZeroTrustCasbWebhook("example_zero_trust_casb_webhook",
///     account_id="46148281d8a93d002ef242d8b0d5f9f6",
///     authentication_type="Bearer Auth",
///     destination_url="https://example.com/webhook",
///     label="Send to Slack",
///     headers=[
///         {
///             "key": "Authorization",
///             "value": "Bearer token123",
///         },
///         {
///             "key": "X-Custom-Header",
///             "value": "value",
///         },
///     ],
///     signing_secret="my-secret-key",
///     status="enabled")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustCasbWebhook = new Cloudflare.ZeroTrustCasbWebhook("example_zero_trust_casb_webhook", new()
///     {
///         AccountId = "46148281d8a93d002ef242d8b0d5f9f6",
///         AuthenticationType = "Bearer Auth",
///         DestinationUrl = "https://example.com/webhook",
///         Label = "Send to Slack",
///         Headers = new[]
///         {
///             new Cloudflare.Inputs.ZeroTrustCasbWebhookHeaderArgs
///             {
///                 Key = "Authorization",
///                 Value = "Bearer token123",
///             },
///             new Cloudflare.Inputs.ZeroTrustCasbWebhookHeaderArgs
///             {
///                 Key = "X-Custom-Header",
///                 Value = "value",
///             },
///         },
///         SigningSecret = "my-secret-key",
///         Status = "enabled",
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
/// 		_, err := cloudflare.NewZeroTrustCasbWebhook(ctx, "example_zero_trust_casb_webhook", &cloudflare.ZeroTrustCasbWebhookArgs{
/// 			AccountId:          pulumi.String("46148281d8a93d002ef242d8b0d5f9f6"),
/// 			AuthenticationType: pulumi.String("Bearer Auth"),
/// 			DestinationUrl:     pulumi.String("https://example.com/webhook"),
/// 			Label:              pulumi.String("Send to Slack"),
/// 			Headers: cloudflare.ZeroTrustCasbWebhookHeaderArray{
/// 				&cloudflare.ZeroTrustCasbWebhookHeaderArgs{
/// 					Key:   pulumi.String("Authorization"),
/// 					Value: pulumi.String("Bearer token123"),
/// 				},
/// 				&cloudflare.ZeroTrustCasbWebhookHeaderArgs{
/// 					Key:   pulumi.String("X-Custom-Header"),
/// 					Value: pulumi.String("value"),
/// 				},
/// 			},
/// 			SigningSecret: pulumi.String("my-secret-key"),
/// 			Status:        pulumi.String("enabled"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_zero_trust_casb_webhook" "example_zero_trust_casb_webhook" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id          = "46148281d8a93d002ef242d8b0d5f9f6"
///   authentication_type = "Bearer Auth"
///   destination_url     = "https://example.com/webhook"
///   label               = "Send to Slack"
///   headers {
///     key   = "Authorization"
///     value = "Bearer token123"
///   }
///   headers {
///     key   = "X-Custom-Header"
///     value = "value"
///   }
///   signing_secret = "my-secret-key"
///   status         = "enabled"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustCasbWebhook;
/// import com.pulumi.cloudflare.ZeroTrustCasbWebhookArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustCasbWebhookHeaderArgs;
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
///         var exampleZeroTrustCasbWebhook = new ZeroTrustCasbWebhook("exampleZeroTrustCasbWebhook", ZeroTrustCasbWebhookArgs.builder()
///             .accountId("46148281d8a93d002ef242d8b0d5f9f6")
///             .authenticationType("Bearer Auth")
///             .destinationUrl("https://example.com/webhook")
///             .label("Send to Slack")
///             .headers(
///                 ZeroTrustCasbWebhookHeaderArgs.builder()
///                     .key("Authorization")
///                     .value("Bearer token123")
///                     .build(),
///                 ZeroTrustCasbWebhookHeaderArgs.builder()
///                     .key("X-Custom-Header")
///                     .value("value")
///                     .build())
///             .signingSecret("my-secret-key")
///             .status("enabled")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustCasbWebhook:
///     type: cloudflare:ZeroTrustCasbWebhook
///     name: example_zero_trust_casb_webhook
///     properties:
///       accountId: 46148281d8a93d002ef242d8b0d5f9f6
///       authenticationType: Bearer Auth
///       destinationUrl: https://example.com/webhook
///       label: Send to Slack
///       headers:
///         - key: Authorization
///           value: Bearer token123
///         - key: X-Custom-Header
///           value: value
///       signingSecret: my-secret-key
///       status: enabled
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustCasbWebhook:ZeroTrustCasbWebhook example '<account_id>/<webhook_id>'
/// ```
class ZeroTrustCasbWebhook extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  /// Type of authentication used for the webhook.
  /// Available values: "Basic Auth", "None", "Bearer Auth", "Static Headers", "HMAC-Signing".
  late final pulumi.Output<String> authenticationType;
  /// Timestamp when the webhook configuration was created.
  late final pulumi.Output<String> createdAt;
  /// Target URL for the webhook configuration. Where resulting data will be sent.
  late final pulumi.Output<String> destinationUrl;
  /// List of custom headers to include in webhook requests.
  late final pulumi.Output<List<ZeroTrustCasbWebhookHeader>?> headers;
  /// Account-specified display label for the webhook configuration.
  late final pulumi.Output<String> label;
  /// Secret key used for HMAC signing when authenticationType is "HMAC-Signing".
  late final pulumi.Output<String?> signingSecret;
  /// Status of the webhook configuration. Defaults to enabled when omitted.
  /// Available values: "enabled", "disabled".
  late final pulumi.Output<String> status;
  /// Timestamp when the webhook configuration was last updated.
  late final pulumi.Output<String> updatedAt;
  /// Version number of the configuration.
  late final pulumi.Output<int> version;

  /// Creates a new [ZeroTrustCasbWebhook].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustCasbWebhook]. {@macro pulumi_index_zero_trust_casb_webhook_zero_trust_casb_webhook_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustCasbWebhook(
    String name, {
    ZeroTrustCasbWebhookArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustCasbWebhook:ZeroTrustCasbWebhook',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.22.1').merge(options),
          additionalSecretOutputs: const ['signingSecret'],
        ) {
    accountId = registerOutput<String>('accountId');
    authenticationType = registerOutput<String>('authenticationType');
    createdAt = registerOutput<String>('createdAt');
    destinationUrl = registerOutput<String>('destinationUrl');
    headers = registerOutput<List<ZeroTrustCasbWebhookHeader>?>('headers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustCasbWebhookHeader>(guardedValue, (value) => ZeroTrustCasbWebhookHeader.fromMap((value as Map).cast<String, dynamic>())); });
    label = registerOutput<String>('label');
    signingSecret = registerOutput<String?>('signingSecret', isSecret: true);
    status = registerOutput<String>('status');
    updatedAt = registerOutput<String>('updatedAt');
    version = registerOutput<int>('version');
  }

  /// Gets an existing [ZeroTrustCasbWebhook] resource's state with the given [name] and [id].
  static ZeroTrustCasbWebhook get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustCasbWebhookState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustCasbWebhook._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustCasbWebhook._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustCasbWebhook:ZeroTrustCasbWebhook',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    authenticationType = registerOutput<String>('authenticationType');
    createdAt = registerOutput<String>('createdAt');
    destinationUrl = registerOutput<String>('destinationUrl');
    headers = registerOutput<List<ZeroTrustCasbWebhookHeader>?>('headers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustCasbWebhookHeader>(guardedValue, (value) => ZeroTrustCasbWebhookHeader.fromMap((value as Map).cast<String, dynamic>())); });
    label = registerOutput<String>('label');
    signingSecret = registerOutput<String?>('signingSecret', isSecret: true);
    status = registerOutput<String>('status');
    updatedAt = registerOutput<String>('updatedAt');
    version = registerOutput<int>('version');
  }

  /// Creates a typed reference to an existing [ZeroTrustCasbWebhook] resource.
  ZeroTrustCasbWebhook.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustCasbWebhook:ZeroTrustCasbWebhook',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['signingSecret'],
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    authenticationType = registerOutput<String>('authenticationType');
    createdAt = registerOutput<String>('createdAt');
    destinationUrl = registerOutput<String>('destinationUrl');
    headers = registerOutput<List<ZeroTrustCasbWebhookHeader>?>('headers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustCasbWebhookHeader>(guardedValue, (value) => ZeroTrustCasbWebhookHeader.fromMap((value as Map).cast<String, dynamic>())); });
    label = registerOutput<String>('label');
    signingSecret = registerOutput<String?>('signingSecret', isSecret: true);
    status = registerOutput<String>('status');
    updatedAt = registerOutput<String>('updatedAt');
    version = registerOutput<int>('version');
  }
}
