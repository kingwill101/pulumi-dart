import 'package:pulumi/pulumi.dart' as pulumi;
import 'regional_tiered_cache_args.dart';
import 'regional_tiered_cache_state.dart';

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
/// const exampleRegionalTieredCache = new cloudflare.RegionalTieredCache("example_regional_tiered_cache", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     value: "on",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_regional_tiered_cache = cloudflare.RegionalTieredCache("example_regional_tiered_cache",
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
///     var exampleRegionalTieredCache = new Cloudflare.RegionalTieredCache("example_regional_tiered_cache", new()
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
/// 		_, err := cloudflare.NewRegionalTieredCache(ctx, "example_regional_tiered_cache", &cloudflare.RegionalTieredCacheArgs{
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
/// resource "cloudflare_regionaltieredcache" "example_regional_tiered_cache" {
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
/// import com.pulumi.cloudflare.RegionalTieredCache;
/// import com.pulumi.cloudflare.RegionalTieredCacheArgs;
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
///         var exampleRegionalTieredCache = new RegionalTieredCache("exampleRegionalTieredCache", RegionalTieredCacheArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .value("on")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleRegionalTieredCache:
///     type: cloudflare:RegionalTieredCache
///     name: example_regional_tiered_cache
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       value: on
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/regionalTieredCache:RegionalTieredCache example '<zone_id>'
/// ```
class RegionalTieredCache extends pulumi.CustomResource {
  /// Whether the setting is editable.
  late final pulumi.Output<bool> editable;
  /// Last time this setting was modified.
  late final pulumi.Output<String> modifiedOn;
  /// Value of the Regional Tiered Cache zone setting.
  /// Available values: "on", "off".
  late final pulumi.Output<String> value;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [RegionalTieredCache].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionalTieredCache]. {@macro pulumi_index_regional_tiered_cache_regional_tiered_cache_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionalTieredCache(
    String name, {
    RegionalTieredCacheArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/regionalTieredCache:RegionalTieredCache',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    editable = registerOutput<bool>('editable');
    modifiedOn = registerOutput<String>('modifiedOn');
    value = registerOutput<String>('value');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [RegionalTieredCache] resource's state with the given [name] and [id].
  static RegionalTieredCache get(
    String name,
    pulumi.Input<String> id, {
    RegionalTieredCacheState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RegionalTieredCache._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RegionalTieredCache._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/regionalTieredCache:RegionalTieredCache',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    editable = registerOutput<bool>('editable');
    modifiedOn = registerOutput<String>('modifiedOn');
    value = registerOutput<String>('value');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [RegionalTieredCache] resource.
  RegionalTieredCache.reference(String urn)
    : super(
        'cloudflare:index/regionalTieredCache:RegionalTieredCache',
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
