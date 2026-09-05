import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_hostname_fallback_origin_args.dart';
import 'custom_hostname_fallback_origin_state.dart';

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
/// const exampleCustomHostnameFallbackOrigin = new cloudflare.CustomHostnameFallbackOrigin("example_custom_hostname_fallback_origin", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     origin: "fallback.example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_custom_hostname_fallback_origin = cloudflare.CustomHostnameFallbackOrigin("example_custom_hostname_fallback_origin",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     origin="fallback.example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleCustomHostnameFallbackOrigin = new Cloudflare.CustomHostnameFallbackOrigin("example_custom_hostname_fallback_origin", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Origin = "fallback.example.com",
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
/// 		_, err := cloudflare.NewCustomHostnameFallbackOrigin(ctx, "example_custom_hostname_fallback_origin", &cloudflare.CustomHostnameFallbackOriginArgs{
/// 			ZoneId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Origin: pulumi.String("fallback.example.com"),
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
/// resource "cloudflare_customhostnamefallbackorigin" "example_custom_hostname_fallback_origin" {
///   zone_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   origin  = "fallback.example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.CustomHostnameFallbackOrigin;
/// import com.pulumi.cloudflare.CustomHostnameFallbackOriginArgs;
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
///         var exampleCustomHostnameFallbackOrigin = new CustomHostnameFallbackOrigin("exampleCustomHostnameFallbackOrigin", CustomHostnameFallbackOriginArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .origin("fallback.example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleCustomHostnameFallbackOrigin:
///     type: cloudflare:CustomHostnameFallbackOrigin
///     name: example_custom_hostname_fallback_origin
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       origin: fallback.example.com
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/customHostnameFallbackOrigin:CustomHostnameFallbackOrigin example '<zone_id>'
/// ```
class CustomHostnameFallbackOrigin extends pulumi.CustomResource {
  /// This is the time the fallback origin was created.
  late final pulumi.Output<String> createdAt;
  /// These are errors that were encountered while trying to activate a fallback origin.
  late final pulumi.Output<List<String>> errors;
  /// Your origin hostname that requests to your custom hostnames will be sent to.
  late final pulumi.Output<String> origin;
  /// Status of the fallback origin's activation.
  /// Available values: "initializing", "pending*deployment", "pending*deletion", "active", "deployment*timed*out", "deletion*timed*out".
  late final pulumi.Output<String> status;
  /// This is the time the fallback origin was updated.
  late final pulumi.Output<String> updatedAt;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [CustomHostnameFallbackOrigin].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomHostnameFallbackOrigin]. {@macro pulumi_index_custom_hostname_fallback_origin_custom_hostname_fallback_origin_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomHostnameFallbackOrigin(
    String name, {
    CustomHostnameFallbackOriginArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/customHostnameFallbackOrigin:CustomHostnameFallbackOrigin',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    createdAt = registerOutput<String>('createdAt');
    errors = registerOutput<List<String>>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    origin = registerOutput<String>('origin');
    status = registerOutput<String>('status');
    updatedAt = registerOutput<String>('updatedAt');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [CustomHostnameFallbackOrigin] resource's state with the given [name] and [id].
  static CustomHostnameFallbackOrigin get(
    String name,
    pulumi.Input<String> id, {
    CustomHostnameFallbackOriginState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CustomHostnameFallbackOrigin._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CustomHostnameFallbackOrigin._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/customHostnameFallbackOrigin:CustomHostnameFallbackOrigin',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    errors = registerOutput<List<String>>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    origin = registerOutput<String>('origin');
    status = registerOutput<String>('status');
    updatedAt = registerOutput<String>('updatedAt');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [CustomHostnameFallbackOrigin] resource.
  CustomHostnameFallbackOrigin.reference(String urn)
    : super(
        'cloudflare:index/customHostnameFallbackOrigin:CustomHostnameFallbackOrigin',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createdAt = registerOutput<String>('createdAt');
    errors = registerOutput<List<String>>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    origin = registerOutput<String>('origin');
    status = registerOutput<String>('status');
    updatedAt = registerOutput<String>('updatedAt');
    zoneId = registerOutput<String>('zoneId');
  }
}
