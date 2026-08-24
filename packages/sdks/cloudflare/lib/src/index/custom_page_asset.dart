import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_page_asset_args.dart';
import 'custom_page_asset_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleCustomPageAsset = new cloudflare.CustomPageAsset("example_custom_page_asset", {
///     description: "Custom 500 error page",
///     name: "my_custom_error_page",
///     url: "https://example.com/error.html",
///     zoneId: "zone_id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_custom_page_asset = cloudflare.CustomPageAsset("example_custom_page_asset",
///     description="Custom 500 error page",
///     name="my_custom_error_page",
///     url="https://example.com/error.html",
///     zone_id="zone_id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleCustomPageAsset = new Cloudflare.CustomPageAsset("example_custom_page_asset", new()
///     {
///         Description = "Custom 500 error page",
///         Name = "my_custom_error_page",
///         Url = "https://example.com/error.html",
///         ZoneId = "zone_id",
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
/// 		_, err := cloudflare.NewCustomPageAsset(ctx, "example_custom_page_asset", &cloudflare.CustomPageAssetArgs{
/// 			Description: pulumi.String("Custom 500 error page"),
/// 			Name:        pulumi.String("my_custom_error_page"),
/// 			Url:         pulumi.String("https://example.com/error.html"),
/// 			ZoneId:      pulumi.String("zone_id"),
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
/// resource "cloudflare_custompageasset" "example_custom_page_asset" {
///   description = "Custom 500 error page"
///   name        = "my_custom_error_page"
///   url         = "https://example.com/error.html"
///   zone_id     = "zone_id"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.CustomPageAsset;
/// import com.pulumi.cloudflare.CustomPageAssetArgs;
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
///         var exampleCustomPageAsset = new CustomPageAsset("exampleCustomPageAsset", CustomPageAssetArgs.builder()
///             .description("Custom 500 error page")
///             .name("my_custom_error_page")
///             .url("https://example.com/error.html")
///             .zoneId("zone_id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleCustomPageAsset:
///     type: cloudflare:CustomPageAsset
///     name: example_custom_page_asset
///     properties:
///       description: Custom 500 error page
///       name: my_custom_error_page
///       url: https://example.com/error.html
///       zoneId: zone_id
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/customPageAsset:CustomPageAsset example '<{accounts|zones}/{account_id|zone_id}>/<asset_name>'
/// ```
class CustomPageAsset extends pulumi.CustomResource {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  late final pulumi.Output<String?> accountId;
  /// A short description of the custom asset.
  late final pulumi.Output<String> description;
  late final pulumi.Output<String> lastUpdated;
  /// The unique name of the custom asset. Can only contain letters (A-Z, a-z), numbers (0-9), and underscores (_).
  late final pulumi.Output<String> name;
  /// The size of the asset content in bytes.
  late final pulumi.Output<int> sizeBytes;
  /// The URL where the asset content is fetched from.
  late final pulumi.Output<String> url;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  late final pulumi.Output<String?> zoneId;

  /// Creates a new [CustomPageAsset].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomPageAsset]. {@macro pulumi_index_custom_page_asset_custom_page_asset_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomPageAsset(
    String name, {
    CustomPageAssetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/customPageAsset:CustomPageAsset',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String?>('accountId');
    description = registerOutput<String>('description');
    lastUpdated = registerOutput<String>('lastUpdated');
    this.name = registerOutput<String>('name');
    sizeBytes = registerOutput<int>('sizeBytes');
    url = registerOutput<String>('url');
    zoneId = registerOutput<String?>('zoneId');
  }

  /// Gets an existing [CustomPageAsset] resource's state with the given [name] and [id].
  static CustomPageAsset get(
    String name,
    pulumi.Input<String> id, {
    CustomPageAssetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CustomPageAsset._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CustomPageAsset._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/customPageAsset:CustomPageAsset',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String?>('accountId');
    description = registerOutput<String>('description');
    lastUpdated = registerOutput<String>('lastUpdated');
    this.name = registerOutput<String>('name');
    sizeBytes = registerOutput<int>('sizeBytes');
    url = registerOutput<String>('url');
    zoneId = registerOutput<String?>('zoneId');
  }

  /// Creates a typed reference to an existing [CustomPageAsset] resource.
  CustomPageAsset.reference(String urn)
    : super(
        'cloudflare:index/customPageAsset:CustomPageAsset',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String?>('accountId');
    description = registerOutput<String>('description');
    lastUpdated = registerOutput<String>('lastUpdated');
    this.name = registerOutput<String>('name');
    sizeBytes = registerOutput<int>('sizeBytes');
    url = registerOutput<String>('url');
    zoneId = registerOutput<String?>('zoneId');
  }
}
