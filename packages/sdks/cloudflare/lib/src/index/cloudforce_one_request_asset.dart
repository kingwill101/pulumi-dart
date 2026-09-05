import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloudforce_one_request_asset_args.dart';
import 'cloudforce_one_request_asset_state.dart';

/// Accepted Permissions
///
/// - `Cloudforce One Read`
/// - `Cloudforce One Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleCloudforceOneRequestAsset = new cloudflare.CloudforceOneRequestAsset("example_cloudforce_one_request_asset", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     requestId: "f174e90a-fafe-4643-bbbc-4a0ed4fc8415",
///     page: 0,
///     perPage: 10,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_cloudforce_one_request_asset = cloudflare.CloudforceOneRequestAsset("example_cloudforce_one_request_asset",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     request_id="f174e90a-fafe-4643-bbbc-4a0ed4fc8415",
///     page=0,
///     per_page=10)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleCloudforceOneRequestAsset = new Cloudflare.CloudforceOneRequestAsset("example_cloudforce_one_request_asset", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         RequestId = "f174e90a-fafe-4643-bbbc-4a0ed4fc8415",
///         Page = 0,
///         PerPage = 10,
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
/// 		_, err := cloudflare.NewCloudforceOneRequestAsset(ctx, "example_cloudforce_one_request_asset", &cloudflare.CloudforceOneRequestAssetArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			RequestId: pulumi.String("f174e90a-fafe-4643-bbbc-4a0ed4fc8415"),
/// 			Page:      pulumi.Int(0),
/// 			PerPage:   pulumi.Int(10),
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
/// resource "cloudflare_cloudforceonerequestasset" "example_cloudforce_one_request_asset" {
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   request_id = "f174e90a-fafe-4643-bbbc-4a0ed4fc8415"
///   page       = 0
///   per_page   = 10
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.CloudforceOneRequestAsset;
/// import com.pulumi.cloudflare.CloudforceOneRequestAssetArgs;
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
///         var exampleCloudforceOneRequestAsset = new CloudforceOneRequestAsset("exampleCloudforceOneRequestAsset", CloudforceOneRequestAssetArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .requestId("f174e90a-fafe-4643-bbbc-4a0ed4fc8415")
///             .page(0)
///             .perPage(10)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleCloudforceOneRequestAsset:
///     type: cloudflare:CloudforceOneRequestAsset
///     name: example_cloudforce_one_request_asset
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       requestId: f174e90a-fafe-4643-bbbc-4a0ed4fc8415
///       page: 0
///       perPage: 10
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/cloudforceOneRequestAsset:CloudforceOneRequestAsset example '<account_id>/<request_id>/<asset_id>'
/// ```
class CloudforceOneRequestAsset extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  /// Defines the asset creation time.
  late final pulumi.Output<String> created;
  /// Asset description.
  late final pulumi.Output<String> description;
  /// Asset file type.
  late final pulumi.Output<String> fileType;
  /// Asset name.
  late final pulumi.Output<String> name;
  /// Page number of results.
  late final pulumi.Output<int> page;
  /// Number of results per page.
  late final pulumi.Output<int> perPage;
  /// UUID.
  late final pulumi.Output<String> requestId;
  /// Asset file to upload.
  late final pulumi.Output<String?> source;

  /// Creates a new [CloudforceOneRequestAsset].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CloudforceOneRequestAsset]. {@macro pulumi_index_cloudforce_one_request_asset_cloudforce_one_request_asset_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CloudforceOneRequestAsset(
    String name, {
    CloudforceOneRequestAssetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/cloudforceOneRequestAsset:CloudforceOneRequestAsset',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    created = registerOutput<String>('created');
    description = registerOutput<String>('description');
    fileType = registerOutput<String>('fileType');
    this.name = registerOutput<String>('name');
    page = registerOutput<int>('page');
    perPage = registerOutput<int>('perPage');
    requestId = registerOutput<String>('requestId');
    source = registerOutput<String?>('source');
  }

  /// Gets an existing [CloudforceOneRequestAsset] resource's state with the given [name] and [id].
  static CloudforceOneRequestAsset get(
    String name,
    pulumi.Input<String> id, {
    CloudforceOneRequestAssetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CloudforceOneRequestAsset._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CloudforceOneRequestAsset._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/cloudforceOneRequestAsset:CloudforceOneRequestAsset',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    created = registerOutput<String>('created');
    description = registerOutput<String>('description');
    fileType = registerOutput<String>('fileType');
    this.name = registerOutput<String>('name');
    page = registerOutput<int>('page');
    perPage = registerOutput<int>('perPage');
    requestId = registerOutput<String>('requestId');
    source = registerOutput<String?>('source');
  }

  /// Creates a typed reference to an existing [CloudforceOneRequestAsset] resource.
  CloudforceOneRequestAsset.reference(String urn)
    : super(
        'cloudflare:index/cloudforceOneRequestAsset:CloudforceOneRequestAsset',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    created = registerOutput<String>('created');
    description = registerOutput<String>('description');
    fileType = registerOutput<String>('fileType');
    this.name = registerOutput<String>('name');
    page = registerOutput<int>('page');
    perPage = registerOutput<int>('perPage');
    requestId = registerOutput<String>('requestId');
    source = registerOutput<String?>('source');
  }
}
