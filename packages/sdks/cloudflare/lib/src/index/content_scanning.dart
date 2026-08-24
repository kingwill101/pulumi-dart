import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_scanning_args.dart';
import 'content_scanning_state.dart';

/// Accepted Permissions
///
/// - `Account WAF Read`
/// - `Account WAF Write`
/// - `Zone WAF Read`
/// - `Zone WAF Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleContentScanning = new cloudflare.ContentScanning("example_content_scanning", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     value: "enabled",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_content_scanning = cloudflare.ContentScanning("example_content_scanning",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     value="enabled")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleContentScanning = new Cloudflare.ContentScanning("example_content_scanning", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Value = "enabled",
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
/// 		_, err := cloudflare.NewContentScanning(ctx, "example_content_scanning", &cloudflare.ContentScanningArgs{
/// 			ZoneId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Value:  pulumi.String("enabled"),
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
/// resource "cloudflare_contentscanning" "example_content_scanning" {
///   zone_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   value   = "enabled"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ContentScanning;
/// import com.pulumi.cloudflare.ContentScanningArgs;
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
///         var exampleContentScanning = new ContentScanning("exampleContentScanning", ContentScanningArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .value("enabled")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleContentScanning:
///     type: cloudflare:ContentScanning
///     name: example_content_scanning
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       value: enabled
/// ```
///
///
/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class ContentScanning extends pulumi.CustomResource {
  /// Defines the last modification date (ISO 8601) of the Content Scanning status.
  late final pulumi.Output<String> modified;
  /// The status value for Content Scanning.
  /// Available values: "enabled", "disabled".
  late final pulumi.Output<String> value;
  /// Defines an identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [ContentScanning].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ContentScanning]. {@macro pulumi_index_content_scanning_content_scanning_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ContentScanning(
    String name, {
    ContentScanningArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/contentScanning:ContentScanning',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    modified = registerOutput<String>('modified');
    value = registerOutput<String>('value');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [ContentScanning] resource's state with the given [name] and [id].
  static ContentScanning get(
    String name,
    pulumi.Input<String> id, {
    ContentScanningState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ContentScanning._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ContentScanning._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/contentScanning:ContentScanning',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    modified = registerOutput<String>('modified');
    value = registerOutput<String>('value');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [ContentScanning] resource.
  ContentScanning.reference(String urn)
    : super(
        'cloudflare:index/contentScanning:ContentScanning',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    modified = registerOutput<String>('modified');
    value = registerOutput<String>('value');
    zoneId = registerOutput<String>('zoneId');
  }
}
