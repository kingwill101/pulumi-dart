import 'package:pulumi/pulumi.dart' as pulumi;
import 'argo_tiered_caching_args.dart';
import 'argo_tiered_caching_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleArgoTieredCaching = new cloudflare.ArgoTieredCaching("example_argo_tiered_caching", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     value: "on",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_argo_tiered_caching = cloudflare.ArgoTieredCaching("example_argo_tiered_caching",
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
///     var exampleArgoTieredCaching = new Cloudflare.ArgoTieredCaching("example_argo_tiered_caching", new()
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
/// 		_, err := cloudflare.NewArgoTieredCaching(ctx, "example_argo_tiered_caching", &cloudflare.ArgoTieredCachingArgs{
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
/// resource "cloudflare_argotieredcaching" "example_argo_tiered_caching" {
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
/// import com.pulumi.cloudflare.ArgoTieredCaching;
/// import com.pulumi.cloudflare.ArgoTieredCachingArgs;
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
///         var exampleArgoTieredCaching = new ArgoTieredCaching("exampleArgoTieredCaching", ArgoTieredCachingArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .value("on")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleArgoTieredCaching:
///     type: cloudflare:ArgoTieredCaching
///     name: example_argo_tiered_caching
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       value: on
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/argoTieredCaching:ArgoTieredCaching example '<zone_id>'
/// ```
class ArgoTieredCaching extends pulumi.CustomResource {
  /// Whether the setting is editable.
  late final pulumi.Output<bool> editable;
  /// Last time this setting was modified.
  late final pulumi.Output<String> modifiedOn;
  /// Enables Tiered Caching.
  /// Available values: "on", "off".
  late final pulumi.Output<String> value;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [ArgoTieredCaching].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ArgoTieredCaching]. {@macro pulumi_index_argo_tiered_caching_argo_tiered_caching_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ArgoTieredCaching(
    String name, {
    ArgoTieredCachingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/argoTieredCaching:ArgoTieredCaching',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    editable = registerOutput<bool>('editable');
    modifiedOn = registerOutput<String>('modifiedOn');
    value = registerOutput<String>('value');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [ArgoTieredCaching] resource's state with the given [name] and [id].
  static ArgoTieredCaching get(
    String name,
    pulumi.Input<String> id, {
    ArgoTieredCachingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ArgoTieredCaching._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ArgoTieredCaching._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/argoTieredCaching:ArgoTieredCaching',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    editable = registerOutput<bool>('editable');
    modifiedOn = registerOutput<String>('modifiedOn');
    value = registerOutput<String>('value');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [ArgoTieredCaching] resource.
  ArgoTieredCaching.reference(String urn)
    : super(
        'cloudflare:index/argoTieredCaching:ArgoTieredCaching',
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
