import 'package:pulumi/pulumi.dart' as pulumi;
import 'ct_alerting_args.dart';
import 'ct_alerting_state.dart';

/// Accepted Permissions
///
/// - `SSL and Certificates Read`
/// - `SSL and Certificates Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleCtAlerting = new cloudflare.CtAlerting("example_ct_alerting", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     enabled: true,
///     emails: [
///         "security@example.com",
///         "admin@example.com",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_ct_alerting = cloudflare.CtAlerting("example_ct_alerting",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     enabled=True,
///     emails=[
///         "security@example.com",
///         "admin@example.com",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleCtAlerting = new Cloudflare.CtAlerting("example_ct_alerting", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Enabled = true,
///         Emails = new[]
///         {
///             "security@example.com",
///             "admin@example.com",
///         },
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
/// 		_, err := cloudflare.NewCtAlerting(ctx, "example_ct_alerting", &cloudflare.CtAlertingArgs{
/// 			ZoneId:  pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Enabled: pulumi.Bool(true),
/// 			Emails: pulumi.StringArray{
/// 				pulumi.String("security@example.com"),
/// 				pulumi.String("admin@example.com"),
/// 			},
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
/// resource "cloudflare_ctalerting" "example_ct_alerting" {
///   zone_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   enabled = true
///   emails  = ["security@example.com", "admin@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.CtAlerting;
/// import com.pulumi.cloudflare.CtAlertingArgs;
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
///         var exampleCtAlerting = new CtAlerting("exampleCtAlerting", CtAlertingArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .enabled(true)
///             .emails(
///                 "security@example.com",
///                 "admin@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleCtAlerting:
///     type: cloudflare:CtAlerting
///     name: example_ct_alerting
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       enabled: true
///       emails:
///         - security@example.com
///         - admin@example.com
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/ctAlerting:CtAlerting example '<zone_id>'
/// ```
class CtAlerting extends pulumi.CustomResource {
  /// Email addresses that receive CT alert notifications for the zone. A maximum of 100 addresses may be configured. Each address must be a valid RFC 5322 email address and must not contain a comma.
  late final pulumi.Output<List<String>?> emails;
  /// Whether CT alerting is enabled for the zone.
  late final pulumi.Output<bool> enabled;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [CtAlerting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CtAlerting]. {@macro pulumi_index_ct_alerting_ct_alerting_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CtAlerting(
    String name, {
    CtAlertingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/ctAlerting:CtAlerting',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    emails = registerOutput<List<String>?>('emails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    enabled = registerOutput<bool>('enabled');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [CtAlerting] resource's state with the given [name] and [id].
  static CtAlerting get(
    String name,
    pulumi.Input<String> id, {
    CtAlertingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CtAlerting._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CtAlerting._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/ctAlerting:CtAlerting',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    emails = registerOutput<List<String>?>('emails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    enabled = registerOutput<bool>('enabled');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [CtAlerting] resource.
  CtAlerting.reference(String urn)
    : super(
        'cloudflare:index/ctAlerting:CtAlerting',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    emails = registerOutput<List<String>?>('emails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    enabled = registerOutput<bool>('enabled');
    zoneId = registerOutput<String>('zoneId');
  }
}
