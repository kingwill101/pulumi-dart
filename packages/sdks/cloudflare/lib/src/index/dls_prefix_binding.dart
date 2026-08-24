import 'package:pulumi/pulumi.dart' as pulumi;
import 'dls_prefix_binding_args.dart';
import 'dls_prefix_binding_state.dart';

/// Accepted Permissions
///
/// - `DLS: Read`
/// - `DLS: Write`
/// - `IP Prefixes: Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleDlsPrefixBinding = new cloudflare.DlsPrefixBinding("example_dls_prefix_binding", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     cidr: "10.0.1.0/24",
///     prefixId: "a1b2c3d4-e5f6-7890-abcd-ef1234567890",
///     regionKey: "eu",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_dls_prefix_binding = cloudflare.DlsPrefixBinding("example_dls_prefix_binding",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     cidr="10.0.1.0/24",
///     prefix_id="a1b2c3d4-e5f6-7890-abcd-ef1234567890",
///     region_key="eu")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleDlsPrefixBinding = new Cloudflare.DlsPrefixBinding("example_dls_prefix_binding", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Cidr = "10.0.1.0/24",
///         PrefixId = "a1b2c3d4-e5f6-7890-abcd-ef1234567890",
///         RegionKey = "eu",
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
/// 		_, err := cloudflare.NewDlsPrefixBinding(ctx, "example_dls_prefix_binding", &cloudflare.DlsPrefixBindingArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Cidr:      pulumi.String("10.0.1.0/24"),
/// 			PrefixId:  pulumi.String("a1b2c3d4-e5f6-7890-abcd-ef1234567890"),
/// 			RegionKey: pulumi.String("eu"),
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
/// resource "cloudflare_dlsprefixbinding" "example_dls_prefix_binding" {
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   cidr       = "10.0.1.0/24"
///   prefix_id  = "a1b2c3d4-e5f6-7890-abcd-ef1234567890"
///   region_key = "eu"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.DlsPrefixBinding;
/// import com.pulumi.cloudflare.DlsPrefixBindingArgs;
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
///         var exampleDlsPrefixBinding = new DlsPrefixBinding("exampleDlsPrefixBinding", DlsPrefixBindingArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .cidr("10.0.1.0/24")
///             .prefixId("a1b2c3d4-e5f6-7890-abcd-ef1234567890")
///             .regionKey("eu")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleDlsPrefixBinding:
///     type: cloudflare:DlsPrefixBinding
///     name: example_dls_prefix_binding
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       cidr: 10.0.1.0/24
///       prefixId: a1b2c3d4-e5f6-7890-abcd-ef1234567890
///       regionKey: eu
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/dlsPrefixBinding:DlsPrefixBinding example '<account_id>/<binding_id>'
/// ```
class DlsPrefixBinding extends pulumi.CustomResource {
  /// Identifier of a Cloudflare account.
  late final pulumi.Output<String> accountId;
  /// IP prefix in CIDR notation to bind.
  late final pulumi.Output<String> cidr;
  /// The ID of the parent IP prefix that contains the CIDR.
  late final pulumi.Output<String> prefixId;
  /// Region key from managed regions (e.g., "us", "eu").
  late final pulumi.Output<String> regionKey;

  /// Creates a new [DlsPrefixBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DlsPrefixBinding]. {@macro pulumi_index_dls_prefix_binding_dls_prefix_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DlsPrefixBinding(
    String name, {
    DlsPrefixBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/dlsPrefixBinding:DlsPrefixBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    cidr = registerOutput<String>('cidr');
    prefixId = registerOutput<String>('prefixId');
    regionKey = registerOutput<String>('regionKey');
  }

  /// Gets an existing [DlsPrefixBinding] resource's state with the given [name] and [id].
  static DlsPrefixBinding get(
    String name,
    pulumi.Input<String> id, {
    DlsPrefixBindingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DlsPrefixBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DlsPrefixBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/dlsPrefixBinding:DlsPrefixBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    cidr = registerOutput<String>('cidr');
    prefixId = registerOutput<String>('prefixId');
    regionKey = registerOutput<String>('regionKey');
  }

  /// Creates a typed reference to an existing [DlsPrefixBinding] resource.
  DlsPrefixBinding.reference(String urn)
    : super(
        'cloudflare:index/dlsPrefixBinding:DlsPrefixBinding',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    cidr = registerOutput<String>('cidr');
    prefixId = registerOutput<String>('prefixId');
    regionKey = registerOutput<String>('regionKey');
  }
}
