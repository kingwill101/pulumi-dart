import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_tag_gateway_args.dart';
import 'google_tag_gateway_state.dart';

/// Accepted Permissions
///
/// - `Zaraz Admin`
/// - `Zaraz Edit`
/// - `Zaraz Read`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleGoogleTagGateway = new cloudflare.GoogleTagGateway("example_google_tag_gateway", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     enabled: true,
///     endpoint: "/metrics",
///     hideOriginalIp: true,
///     measurementId: "GTM-P2F3N47Q",
///     setUpTag: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_google_tag_gateway = cloudflare.GoogleTagGateway("example_google_tag_gateway",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     enabled=True,
///     endpoint="/metrics",
///     hide_original_ip=True,
///     measurement_id="GTM-P2F3N47Q",
///     set_up_tag=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleGoogleTagGateway = new Cloudflare.GoogleTagGateway("example_google_tag_gateway", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Enabled = true,
///         Endpoint = "/metrics",
///         HideOriginalIp = true,
///         MeasurementId = "GTM-P2F3N47Q",
///         SetUpTag = true,
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
/// 		_, err := cloudflare.NewGoogleTagGateway(ctx, "example_google_tag_gateway", &cloudflare.GoogleTagGatewayArgs{
/// 			ZoneId:         pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Enabled:        pulumi.Bool(true),
/// 			Endpoint:       pulumi.String("/metrics"),
/// 			HideOriginalIp: pulumi.Bool(true),
/// 			MeasurementId:  pulumi.String("GTM-P2F3N47Q"),
/// 			SetUpTag:       pulumi.Bool(true),
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
/// resource "cloudflare_googletaggateway" "example_google_tag_gateway" {
///   zone_id          = "023e105f4ecef8ad9ca31a8372d0c353"
///   enabled          = true
///   endpoint         = "/metrics"
///   hide_original_ip = true
///   measurement_id   = "GTM-P2F3N47Q"
///   set_up_tag       = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.GoogleTagGateway;
/// import com.pulumi.cloudflare.GoogleTagGatewayArgs;
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
///         var exampleGoogleTagGateway = new GoogleTagGateway("exampleGoogleTagGateway", GoogleTagGatewayArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .enabled(true)
///             .endpoint("/metrics")
///             .hideOriginalIp(true)
///             .measurementId("GTM-P2F3N47Q")
///             .setUpTag(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleGoogleTagGateway:
///     type: cloudflare:GoogleTagGateway
///     name: example_google_tag_gateway
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       enabled: true
///       endpoint: /metrics
///       hideOriginalIp: true
///       measurementId: GTM-P2F3N47Q
///       setUpTag: true
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/googleTagGateway:GoogleTagGateway example '<zone_id>'
/// ```
class GoogleTagGateway extends pulumi.CustomResource {
  /// Enables or disables Google Tag Gateway for this zone.
  late final pulumi.Output<bool> enabled;
  /// Specifies the endpoint path for proxying Google Tag Manager requests. Use an absolute path starting with '/', with no nested paths and alphanumeric characters only (e.g. /metrics).
  late final pulumi.Output<String> endpoint;
  /// Hides the original client IP address from Google when enabled.
  late final pulumi.Output<bool> hideOriginalIp;
  /// Specify the Google Tag Manager container or measurement ID (e.g. GTM-XXXXXXX or G-XXXXXXXXXX).
  late final pulumi.Output<String> measurementId;
  /// Set up the associated Google Tag on the zone automatically when enabled.
  late final pulumi.Output<bool?> setUpTag;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [GoogleTagGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GoogleTagGateway]. {@macro pulumi_index_google_tag_gateway_google_tag_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GoogleTagGateway(
    String name, {
    GoogleTagGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/googleTagGateway:GoogleTagGateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    enabled = registerOutput<bool>('enabled');
    endpoint = registerOutput<String>('endpoint');
    hideOriginalIp = registerOutput<bool>('hideOriginalIp');
    measurementId = registerOutput<String>('measurementId');
    setUpTag = registerOutput<bool?>('setUpTag');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [GoogleTagGateway] resource's state with the given [name] and [id].
  static GoogleTagGateway get(
    String name,
    pulumi.Input<String> id, {
    GoogleTagGatewayState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return GoogleTagGateway._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  GoogleTagGateway._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/googleTagGateway:GoogleTagGateway',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    enabled = registerOutput<bool>('enabled');
    endpoint = registerOutput<String>('endpoint');
    hideOriginalIp = registerOutput<bool>('hideOriginalIp');
    measurementId = registerOutput<String>('measurementId');
    setUpTag = registerOutput<bool?>('setUpTag');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [GoogleTagGateway] resource.
  GoogleTagGateway.reference(String urn)
    : super(
        'cloudflare:index/googleTagGateway:GoogleTagGateway',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    enabled = registerOutput<bool>('enabled');
    endpoint = registerOutput<String>('endpoint');
    hideOriginalIp = registerOutput<bool>('hideOriginalIp');
    measurementId = registerOutput<String>('measurementId');
    setUpTag = registerOutput<bool?>('setUpTag');
    zoneId = registerOutput<String>('zoneId');
  }
}
