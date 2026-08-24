import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_auto_origin_tls_kex_args.dart';
import 'zone_auto_origin_tls_kex_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZoneAutoOriginTlsKex = new cloudflare.ZoneAutoOriginTlsKex("example_zone_auto_origin_tls_kex", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     enabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zone_auto_origin_tls_kex = cloudflare.ZoneAutoOriginTlsKex("example_zone_auto_origin_tls_kex",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZoneAutoOriginTlsKex = new Cloudflare.ZoneAutoOriginTlsKex("example_zone_auto_origin_tls_kex", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Enabled = true,
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
/// 		_, err := cloudflare.NewZoneAutoOriginTlsKex(ctx, "example_zone_auto_origin_tls_kex", &cloudflare.ZoneAutoOriginTlsKexArgs{
/// 			ZoneId:  pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Enabled: pulumi.Bool(true),
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
/// resource "cloudflare_zoneautoorigintlskex" "example_zone_auto_origin_tls_kex" {
///   zone_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   enabled = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZoneAutoOriginTlsKex;
/// import com.pulumi.cloudflare.ZoneAutoOriginTlsKexArgs;
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
///         var exampleZoneAutoOriginTlsKex = new ZoneAutoOriginTlsKex("exampleZoneAutoOriginTlsKex", ZoneAutoOriginTlsKexArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .enabled(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZoneAutoOriginTlsKex:
///     type: cloudflare:ZoneAutoOriginTlsKex
///     name: example_zone_auto_origin_tls_kex
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       enabled: true
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zoneAutoOriginTlsKex:ZoneAutoOriginTlsKex example '<zone_id>'
/// ```
class ZoneAutoOriginTlsKex extends pulumi.CustomResource {
  /// Controls enablement of Auto-Origin TLS KEX selection for the zone.
  late final pulumi.Output<bool> enabled;
  /// Last time this setting was modified.
  late final pulumi.Output<String> modifiedOn;
  late final pulumi.Output<String> zoneId;

  /// Creates a new [ZoneAutoOriginTlsKex].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZoneAutoOriginTlsKex]. {@macro pulumi_index_zone_auto_origin_tls_kex_zone_auto_origin_tls_kex_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZoneAutoOriginTlsKex(
    String name, {
    ZoneAutoOriginTlsKexArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zoneAutoOriginTlsKex:ZoneAutoOriginTlsKex',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    enabled = registerOutput<bool>('enabled');
    modifiedOn = registerOutput<String>('modifiedOn');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [ZoneAutoOriginTlsKex] resource's state with the given [name] and [id].
  static ZoneAutoOriginTlsKex get(
    String name,
    pulumi.Input<String> id, {
    ZoneAutoOriginTlsKexState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZoneAutoOriginTlsKex._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZoneAutoOriginTlsKex._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zoneAutoOriginTlsKex:ZoneAutoOriginTlsKex',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    enabled = registerOutput<bool>('enabled');
    modifiedOn = registerOutput<String>('modifiedOn');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [ZoneAutoOriginTlsKex] resource.
  ZoneAutoOriginTlsKex.reference(String urn)
    : super(
        'cloudflare:index/zoneAutoOriginTlsKex:ZoneAutoOriginTlsKex',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    enabled = registerOutput<bool>('enabled');
    modifiedOn = registerOutput<String>('modifiedOn');
    zoneId = registerOutput<String>('zoneId');
  }
}
