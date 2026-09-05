import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter_args.dart';
import 'filter_body.dart';
import 'filter_state.dart';

/// Accepted Permissions
///
/// - `Firewall Services Read`
/// - `Firewall Services Write`
///
/// &gt; `cloudflare.Filter` is in a deprecation phase until June 15th, 2025.
/// During this time period, this resource is still fully
/// supported but you are strongly advised to move to the
/// `cloudflare.Ruleset` resource. Full details can be found in the
/// developer documentation.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleFilter = new cloudflare.Filter("example_filter", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     bodies: [{
///         description: "Restrict access from these browsers on this address range.",
///         expression: "(http.request.uri.path ~ \".*wp-login.php\" or http.request.uri.path ~ \".*xmlrpc.php\") and ip.addr ne 172.16.22.155",
///         paused: false,
///         ref: "FIL-100",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_filter = cloudflare.Filter("example_filter",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     bodies=[{
///         "description": "Restrict access from these browsers on this address range.",
///         "expression": "(http.request.uri.path ~ \".*wp-login.php\" or http.request.uri.path ~ \".*xmlrpc.php\") and ip.addr ne 172.16.22.155",
///         "paused": False,
///         "ref": "FIL-100",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleFilter = new Cloudflare.Filter("example_filter", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Bodies = new[]
///         {
///             new Cloudflare.Inputs.FilterBodyArgs
///             {
///                 Description = "Restrict access from these browsers on this address range.",
///                 Expression = "(http.request.uri.path ~ \".*wp-login.php\" or http.request.uri.path ~ \".*xmlrpc.php\") and ip.addr ne 172.16.22.155",
///                 Paused = false,
///                 Ref = "FIL-100",
///             },
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
/// 		_, err := cloudflare.NewFilter(ctx, "example_filter", &cloudflare.FilterArgs{
/// 			ZoneId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Bodies: cloudflare.FilterBodyArray{
/// 				&cloudflare.FilterBodyArgs{
/// 					Description: pulumi.String("Restrict access from these browsers on this address range."),
/// 					Expression:  pulumi.String("(http.request.uri.path ~ \".*wp-login.php\" or http.request.uri.path ~ \".*xmlrpc.php\") and ip.addr ne 172.16.22.155"),
/// 					Paused:      pulumi.Bool(false),
/// 					Ref:         pulumi.String("FIL-100"),
/// 				},
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
/// resource "cloudflare_filter" "example_filter" {
///   zone_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   bodies {
///     description = "Restrict access from these browsers on this address range."
///     expression  = "(http.request.uri.path ~ \".*wp-login.php\" or http.request.uri.path ~ \".*xmlrpc.php\") and ip.addr ne 172.16.22.155"
///     paused      = false
///     ref         = "FIL-100"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.Filter;
/// import com.pulumi.cloudflare.FilterArgs;
/// import com.pulumi.cloudflare.inputs.FilterBodyArgs;
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
///         var exampleFilter = new Filter("exampleFilter", FilterArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .bodies(FilterBodyArgs.builder()
///                 .description("Restrict access from these browsers on this address range.")
///                 .expression("(http.request.uri.path ~ \".*wp-login.php\" or http.request.uri.path ~ \".*xmlrpc.php\") and ip.addr ne 172.16.22.155")
///                 .paused(false)
///                 .ref("FIL-100")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleFilter:
///     type: cloudflare:Filter
///     name: example_filter
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       bodies:
///         - description: Restrict access from these browsers on this address range.
///           expression: (http.request.uri.path ~ ".*wp-login.php" or http.request.uri.path ~ ".*xmlrpc.php") and ip.addr ne 172.16.22.155
///           paused: false
///           ref: FIL-100
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/filter:Filter example '<zone_id>/<filter_id>'
/// ```
class Filter extends pulumi.CustomResource {
  late final pulumi.Output<List<FilterBody>> bodies;
  /// An informative summary of the filter.
  late final pulumi.Output<String?> description;
  /// The filter expression. For more information, refer to [Expressions](https://developers.cloudflare.com/ruleset-engine/rules-language/expressions/).
  late final pulumi.Output<String?> expression;
  /// When true, indicates that the filter is currently paused.
  late final pulumi.Output<bool?> paused;
  /// A short reference tag. Allows you to select related filters.
  late final pulumi.Output<String?> ref;
  /// Defines an identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [Filter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Filter]. {@macro pulumi_index_filter_filter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Filter(
    String name, {
    FilterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/filter:Filter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    bodies = registerOutput<List<FilterBody>>('bodies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FilterBody>(guardedValue, (value) => FilterBody.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    expression = registerOutput<String?>('expression');
    paused = registerOutput<bool?>('paused');
    ref = registerOutput<String?>('ref');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [Filter] resource's state with the given [name] and [id].
  static Filter get(
    String name,
    pulumi.Input<String> id, {
    FilterState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Filter._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Filter._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/filter:Filter',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bodies = registerOutput<List<FilterBody>>('bodies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FilterBody>(guardedValue, (value) => FilterBody.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    expression = registerOutput<String?>('expression');
    paused = registerOutput<bool?>('paused');
    ref = registerOutput<String?>('ref');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [Filter] resource.
  Filter.reference(String urn)
    : super(
        'cloudflare:index/filter:Filter',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    bodies = registerOutput<List<FilterBody>>('bodies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FilterBody>(guardedValue, (value) => FilterBody.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    expression = registerOutput<String?>('expression');
    paused = registerOutput<bool?>('paused');
    ref = registerOutput<String?>('ref');
    zoneId = registerOutput<String>('zoneId');
  }
}
