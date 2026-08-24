import 'package:pulumi/pulumi.dart' as pulumi;
import 'tiered_cache_args.dart';
import 'tiered_cache_state.dart';

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
/// const exampleTieredCache = new cloudflare.TieredCache("example_tiered_cache", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     value: "on",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_tiered_cache = cloudflare.TieredCache("example_tiered_cache",
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
///     var exampleTieredCache = new Cloudflare.TieredCache("example_tiered_cache", new()
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
/// 		_, err := cloudflare.NewTieredCache(ctx, "example_tiered_cache", &cloudflare.TieredCacheArgs{
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
/// resource "cloudflare_tieredcache" "example_tiered_cache" {
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
/// import com.pulumi.cloudflare.TieredCache;
/// import com.pulumi.cloudflare.TieredCacheArgs;
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
///         var exampleTieredCache = new TieredCache("exampleTieredCache", TieredCacheArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .value("on")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleTieredCache:
///     type: cloudflare:TieredCache
///     name: example_tiered_cache
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       value: on
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/tieredCache:TieredCache example '<zone_id>'
/// ```
class TieredCache extends pulumi.CustomResource {
  /// Whether the setting is editable.
  late final pulumi.Output<bool> editable;
  /// Last time this setting was modified.
  late final pulumi.Output<String> modifiedOn;
  /// Enable or disable the Smart Tiered Cache.
  /// Available values: "on", "off".
  late final pulumi.Output<String> value;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [TieredCache].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TieredCache]. {@macro pulumi_index_tiered_cache_tiered_cache_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TieredCache(
    String name, {
    TieredCacheArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/tieredCache:TieredCache',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    editable = registerOutput<bool>('editable');
    modifiedOn = registerOutput<String>('modifiedOn');
    value = registerOutput<String>('value');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [TieredCache] resource's state with the given [name] and [id].
  static TieredCache get(
    String name,
    pulumi.Input<String> id, {
    TieredCacheState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TieredCache._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  TieredCache._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/tieredCache:TieredCache',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    editable = registerOutput<bool>('editable');
    modifiedOn = registerOutput<String>('modifiedOn');
    value = registerOutput<String>('value');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [TieredCache] resource.
  TieredCache.reference(String urn)
    : super(
        'cloudflare:index/tieredCache:TieredCache',
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
