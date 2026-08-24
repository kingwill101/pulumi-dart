import 'package:pulumi/pulumi.dart' as pulumi;
import 'share_resource_args.dart';
import 'share_resource_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleShareResource = new cloudflare.ShareResource("example_share_resource", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     shareId: "3fd85f74b32742f1bff64a85009dda07",
///     meta: {},
///     resourceAccountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     resourceId: "023e105f4ecef8ad9ca31a8372d0c353",
///     resourceType: "custom-ruleset",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_share_resource = cloudflare.ShareResource("example_share_resource",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     share_id="3fd85f74b32742f1bff64a85009dda07",
///     meta={},
///     resource_account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     resource_id="023e105f4ecef8ad9ca31a8372d0c353",
///     resource_type="custom-ruleset")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleShareResource = new Cloudflare.ShareResource("example_share_resource", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         ShareId = "3fd85f74b32742f1bff64a85009dda07",
///         Meta = null,
///         ResourceAccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         ResourceId = "023e105f4ecef8ad9ca31a8372d0c353",
///         ResourceType = "custom-ruleset",
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
/// 		_, err := cloudflare.NewShareResource(ctx, "example_share_resource", &cloudflare.ShareResourceArgs{
/// 			AccountId:         pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			ShareId:           pulumi.String("3fd85f74b32742f1bff64a85009dda07"),
/// 			Meta:              pulumi.String{},
/// 			ResourceAccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			ResourceId:        pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			ResourceType:      pulumi.String("custom-ruleset"),
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
/// resource "cloudflare_shareresource" "example_share_resource" {
///   account_id          = "023e105f4ecef8ad9ca31a8372d0c353"
///   share_id            = "3fd85f74b32742f1bff64a85009dda07"
///   meta                = {}
///   resource_account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   resource_id         = "023e105f4ecef8ad9ca31a8372d0c353"
///   resource_type       = "custom-ruleset"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ShareResource;
/// import com.pulumi.cloudflare.ShareResourceArgs;
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
///         var exampleShareResource = new ShareResource("exampleShareResource", ShareResourceArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .shareId("3fd85f74b32742f1bff64a85009dda07")
///             .meta(Map.ofEntries(
///             ))
///             .resourceAccountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .resourceId("023e105f4ecef8ad9ca31a8372d0c353")
///             .resourceType("custom-ruleset")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleShareResource:
///     type: cloudflare:ShareResource
///     name: example_share_resource
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       shareId: 3fd85f74b32742f1bff64a85009dda07
///       meta: {}
///       resourceAccountId: 023e105f4ecef8ad9ca31a8372d0c353
///       resourceId: 023e105f4ecef8ad9ca31a8372d0c353
///       resourceType: custom-ruleset
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/shareResource:ShareResource example '<account_id>/<share_id>/<share_resource_id>'
/// ```
class ShareResourceResource extends pulumi.CustomResource {
  /// Account identifier.
  late final pulumi.Output<String> accountId;
  /// When the share was created.
  late final pulumi.Output<String> created;
  /// Resource Metadata.
  late final pulumi.Output<String> meta;
  /// When the share was modified.
  late final pulumi.Output<String> modified;
  /// Account identifier.
  late final pulumi.Output<String> resourceAccountId;
  /// Share Resource identifier.
  late final pulumi.Output<String> resourceId;
  /// Resource Type.
  /// Available values: "custom-ruleset", "gateway-policy", "gateway-destination-ip", "gateway-block-page-settings", "gateway-extended-email-matching", "idp-federation-grant".
  late final pulumi.Output<String> resourceType;
  /// Resource Version.
  late final pulumi.Output<int> resourceVersion;
  /// Share identifier tag.
  late final pulumi.Output<String> shareId;
  /// Resource Status.
  /// Available values: "active", "deleting", "deleted".
  late final pulumi.Output<String> status;

  /// Creates a new [ShareResourceResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ShareResourceResource]. {@macro pulumi_index_share_resource_share_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ShareResourceResource(
    String name, {
    ShareResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/shareResource:ShareResource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    created = registerOutput<String>('created');
    meta = registerOutput<String>('meta');
    modified = registerOutput<String>('modified');
    resourceAccountId = registerOutput<String>('resourceAccountId');
    resourceId = registerOutput<String>('resourceId');
    resourceType = registerOutput<String>('resourceType');
    resourceVersion = registerOutput<int>('resourceVersion');
    shareId = registerOutput<String>('shareId');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [ShareResourceResource] resource's state with the given [name] and [id].
  static ShareResourceResource get(
    String name,
    pulumi.Input<String> id, {
    ShareResourceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ShareResourceResource._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ShareResourceResource._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/shareResource:ShareResource',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    created = registerOutput<String>('created');
    meta = registerOutput<String>('meta');
    modified = registerOutput<String>('modified');
    resourceAccountId = registerOutput<String>('resourceAccountId');
    resourceId = registerOutput<String>('resourceId');
    resourceType = registerOutput<String>('resourceType');
    resourceVersion = registerOutput<int>('resourceVersion');
    shareId = registerOutput<String>('shareId');
    status = registerOutput<String>('status');
  }

  /// Creates a typed reference to an existing [ShareResourceResource] resource.
  ShareResourceResource.reference(String urn)
    : super(
        'cloudflare:index/shareResource:ShareResource',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    created = registerOutput<String>('created');
    meta = registerOutput<String>('meta');
    modified = registerOutput<String>('modified');
    resourceAccountId = registerOutput<String>('resourceAccountId');
    resourceId = registerOutput<String>('resourceId');
    resourceType = registerOutput<String>('resourceType');
    resourceVersion = registerOutput<int>('resourceVersion');
    shareId = registerOutput<String>('shareId');
    status = registerOutput<String>('status');
  }
}
