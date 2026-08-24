import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_cache_reserve_args.dart';
import 'zone_cache_reserve_state.dart';

/// Accepted Permissions
///
/// - `Zone Read`
/// - `Zone Settings Read`
/// - `Zone Settings Write`
/// - `Zone Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZoneCacheReserve = new cloudflare.ZoneCacheReserve("example_zone_cache_reserve", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     value: "on",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zone_cache_reserve = cloudflare.ZoneCacheReserve("example_zone_cache_reserve",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     value="on")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZoneCacheReserve = new Cloudflare.ZoneCacheReserve("example_zone_cache_reserve", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Value = "on",
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
/// 		_, err := cloudflare.NewZoneCacheReserve(ctx, "example_zone_cache_reserve", &cloudflare.ZoneCacheReserveArgs{
/// 			ZoneId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Value:  pulumi.String("on"),
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
/// resource "cloudflare_zonecachereserve" "example_zone_cache_reserve" {
///   zone_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   value   = "on"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZoneCacheReserve;
/// import com.pulumi.cloudflare.ZoneCacheReserveArgs;
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
///         var exampleZoneCacheReserve = new ZoneCacheReserve("exampleZoneCacheReserve", ZoneCacheReserveArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .value("on")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZoneCacheReserve:
///     type: cloudflare:ZoneCacheReserve
///     name: example_zone_cache_reserve
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       value: on
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zoneCacheReserve:ZoneCacheReserve example '<zone_id>'
/// ```
class ZoneCacheReserve extends pulumi.CustomResource {
  /// Whether the setting is editable.
  late final pulumi.Output<bool> editable;
  /// Last time this setting was modified.
  late final pulumi.Output<String> modifiedOn;
  /// Value of the Cache Reserve zone setting.
  /// Available values: "on", "off".
  late final pulumi.Output<String> value;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [ZoneCacheReserve].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZoneCacheReserve]. {@macro pulumi_index_zone_cache_reserve_zone_cache_reserve_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZoneCacheReserve(
    String name, {
    ZoneCacheReserveArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zoneCacheReserve:ZoneCacheReserve',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    editable = registerOutput<bool>('editable');
    modifiedOn = registerOutput<String>('modifiedOn');
    value = registerOutput<String>('value');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [ZoneCacheReserve] resource's state with the given [name] and [id].
  static ZoneCacheReserve get(
    String name,
    pulumi.Input<String> id, {
    ZoneCacheReserveState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZoneCacheReserve._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZoneCacheReserve._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zoneCacheReserve:ZoneCacheReserve',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    editable = registerOutput<bool>('editable');
    modifiedOn = registerOutput<String>('modifiedOn');
    value = registerOutput<String>('value');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [ZoneCacheReserve] resource.
  ZoneCacheReserve.reference(String urn)
    : super(
        'cloudflare:index/zoneCacheReserve:ZoneCacheReserve',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    editable = registerOutput<bool>('editable');
    modifiedOn = registerOutput<String>('modifiedOn');
    value = registerOutput<String>('value');
    zoneId = registerOutput<String>('zoneId');
  }
}
