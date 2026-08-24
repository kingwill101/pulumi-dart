import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_scanning_expression_args.dart';
import 'content_scanning_expression_body.dart';
import 'content_scanning_expression_state.dart';

/// Accepted Permissions
///
/// - `Account WAF Write`
/// - `Zone WAF Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleContentScanningExpression = new cloudflare.ContentScanningExpression("example_content_scanning_expression", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     bodies: [{
///         payload: "lookup_json_string(http.request.body.raw, \"file\")",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_content_scanning_expression = cloudflare.ContentScanningExpression("example_content_scanning_expression",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     bodies=[{
///         "payload": "lookup_json_string(http.request.body.raw, \"file\")",
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
///     var exampleContentScanningExpression = new Cloudflare.ContentScanningExpression("example_content_scanning_expression", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Bodies = new[]
///         {
///             new Cloudflare.Inputs.ContentScanningExpressionBodyArgs
///             {
///                 Payload = "lookup_json_string(http.request.body.raw, \"file\")",
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
/// 		_, err := cloudflare.NewContentScanningExpression(ctx, "example_content_scanning_expression", &cloudflare.ContentScanningExpressionArgs{
/// 			ZoneId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Bodies: cloudflare.ContentScanningExpressionBodyArray{
/// 				&cloudflare.ContentScanningExpressionBodyArgs{
/// 					Payload: pulumi.String("lookup_json_string(http.request.body.raw, \"file\")"),
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
/// resource "cloudflare_contentscanningexpression" "example_content_scanning_expression" {
///   zone_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   bodies {
///     payload = "lookup_json_string(http.request.body.raw, \"file\")"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ContentScanningExpression;
/// import com.pulumi.cloudflare.ContentScanningExpressionArgs;
/// import com.pulumi.cloudflare.inputs.ContentScanningExpressionBodyArgs;
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
///         var exampleContentScanningExpression = new ContentScanningExpression("exampleContentScanningExpression", ContentScanningExpressionArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .bodies(ContentScanningExpressionBodyArgs.builder()
///                 .payload("lookup_json_string(http.request.body.raw, \"file\")")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleContentScanningExpression:
///     type: cloudflare:ContentScanningExpression
///     name: example_content_scanning_expression
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       bodies:
///         - payload: lookup_json_string(http.request.body.raw, "file")
/// ```
///
///
/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class ContentScanningExpression extends pulumi.CustomResource {
  late final pulumi.Output<List<ContentScanningExpressionBody>> bodies;
  /// Defines an identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [ContentScanningExpression].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ContentScanningExpression]. {@macro pulumi_index_content_scanning_expression_content_scanning_expression_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ContentScanningExpression(
    String name, {
    ContentScanningExpressionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/contentScanningExpression:ContentScanningExpression',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    bodies = registerOutput<List<ContentScanningExpressionBody>>('bodies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContentScanningExpressionBody>(guardedValue, (value) => ContentScanningExpressionBody.fromMap((value as Map).cast<String, dynamic>())); });
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [ContentScanningExpression] resource's state with the given [name] and [id].
  static ContentScanningExpression get(
    String name,
    pulumi.Input<String> id, {
    ContentScanningExpressionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ContentScanningExpression._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ContentScanningExpression._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/contentScanningExpression:ContentScanningExpression',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bodies = registerOutput<List<ContentScanningExpressionBody>>('bodies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContentScanningExpressionBody>(guardedValue, (value) => ContentScanningExpressionBody.fromMap((value as Map).cast<String, dynamic>())); });
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [ContentScanningExpression] resource.
  ContentScanningExpression.reference(String urn)
    : super(
        'cloudflare:index/contentScanningExpression:ContentScanningExpression',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    bodies = registerOutput<List<ContentScanningExpressionBody>>('bodies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContentScanningExpressionBody>(guardedValue, (value) => ContentScanningExpressionBody.fromMap((value as Map).cast<String, dynamic>())); });
    zoneId = registerOutput<String>('zoneId');
  }
}
