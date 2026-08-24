import 'package:pulumi/pulumi.dart' as pulumi;
import 'argo_smart_routing_args.dart';
import 'argo_smart_routing_state.dart';

/// Accepted Permissions
///
/// - `Zone Settings Read`
/// - `Zone Settings Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleArgoSmartRouting = new cloudflare.ArgoSmartRouting("example_argo_smart_routing", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     value: "on",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_argo_smart_routing = cloudflare.ArgoSmartRouting("example_argo_smart_routing",
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
///     var exampleArgoSmartRouting = new Cloudflare.ArgoSmartRouting("example_argo_smart_routing", new()
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
/// 		_, err := cloudflare.NewArgoSmartRouting(ctx, "example_argo_smart_routing", &cloudflare.ArgoSmartRoutingArgs{
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
/// resource "cloudflare_argosmartrouting" "example_argo_smart_routing" {
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
/// import com.pulumi.cloudflare.ArgoSmartRouting;
/// import com.pulumi.cloudflare.ArgoSmartRoutingArgs;
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
///         var exampleArgoSmartRouting = new ArgoSmartRouting("exampleArgoSmartRouting", ArgoSmartRoutingArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .value("on")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleArgoSmartRouting:
///     type: cloudflare:ArgoSmartRouting
///     name: example_argo_smart_routing
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       value: on
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/argoSmartRouting:ArgoSmartRouting example '<zone_id>'
/// ```
class ArgoSmartRouting extends pulumi.CustomResource {
  /// Specifies if the setting is editable.
  late final pulumi.Output<bool> editable;
  /// Specifies the time when the setting was last modified.
  late final pulumi.Output<String> modifiedOn;
  /// Specifies the enablement value of Argo Smart Routing.
  /// Available values: "on", "off".
  late final pulumi.Output<String> value;
  /// Specifies the zone associated with the API call.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [ArgoSmartRouting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ArgoSmartRouting]. {@macro pulumi_index_argo_smart_routing_argo_smart_routing_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ArgoSmartRouting(
    String name, {
    ArgoSmartRoutingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/argoSmartRouting:ArgoSmartRouting',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    editable = registerOutput<bool>('editable');
    modifiedOn = registerOutput<String>('modifiedOn');
    value = registerOutput<String>('value');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [ArgoSmartRouting] resource's state with the given [name] and [id].
  static ArgoSmartRouting get(
    String name,
    pulumi.Input<String> id, {
    ArgoSmartRoutingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ArgoSmartRouting._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ArgoSmartRouting._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/argoSmartRouting:ArgoSmartRouting',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    editable = registerOutput<bool>('editable');
    modifiedOn = registerOutput<String>('modifiedOn');
    value = registerOutput<String>('value');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [ArgoSmartRouting] resource.
  ArgoSmartRouting.reference(String urn)
    : super(
        'cloudflare:index/argoSmartRouting:ArgoSmartRouting',
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
