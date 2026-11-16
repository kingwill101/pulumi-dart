import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_cws_rego_metadata_args.dart';
import 'zero_trust_cws_rego_metadata_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustCwsRegoMetadata = new cloudflare.ZeroTrustCwsRegoMetadata("example_zero_trust_cws_rego_metadata", {
///     accountId: "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///     data: {},
///     importPath: "x",
///     name: "x",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_cws_rego_metadata = cloudflare.ZeroTrustCwsRegoMetadata("example_zero_trust_cws_rego_metadata",
///     account_id="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///     data={},
///     import_path="x",
///     name="x")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustCwsRegoMetadata = new Cloudflare.ZeroTrustCwsRegoMetadata("example_zero_trust_cws_rego_metadata", new()
///     {
///         AccountId = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///         Data = new() { },
///         ImportPath = "x",
///         Name = "x",
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
/// 		_, err := cloudflare.NewZeroTrustCwsRegoMetadata(ctx, "example_zero_trust_cws_rego_metadata", &cloudflare.ZeroTrustCwsRegoMetadataArgs{
/// 			AccountId:  pulumi.String("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"),
/// 			Data:       pulumi.String{},
/// 			ImportPath: pulumi.String("x"),
/// 			Name:       pulumi.String("x"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_zero_trust_cws_rego_metadata" "example_zero_trust_cws_rego_metadata" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id  = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
///   data        = {}
///   import_path = "x"
///   name        = "x"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustCwsRegoMetadata;
/// import com.pulumi.cloudflare.ZeroTrustCwsRegoMetadataArgs;
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
///         var exampleZeroTrustCwsRegoMetadata = new ZeroTrustCwsRegoMetadata("exampleZeroTrustCwsRegoMetadata", ZeroTrustCwsRegoMetadataArgs.builder()
///             .accountId("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
///             .data(Map.ofEntries(
///             ))
///             .importPath("x")
///             .name("x")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustCwsRegoMetadata:
///     type: cloudflare:ZeroTrustCwsRegoMetadata
///     name: example_zero_trust_cws_rego_metadata
///     properties:
///       accountId: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
///       data: {}
///       importPath: x
///       name: x
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustCwsRegoMetadata:ZeroTrustCwsRegoMetadata example '<account_id>/<rego_metadata_id>'
/// ```
class ZeroTrustCwsRegoMetadata extends pulumi.CustomResource {
  /// Cloudflare account ID (32-character hexadecimal string)
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<String> createdAt;
  late final pulumi.Output<String> data;
  /// Unique Rego import path in the form metadata.\n\n, with one alphanumeric or underscore segment. Reference it as data.\n\n.
  late final pulumi.Output<String> importPath;
  /// Name of the rego metadata document (unique per account)
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [ZeroTrustCwsRegoMetadata].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustCwsRegoMetadata]. {@macro pulumi_index_zero_trust_cws_rego_metadata_zero_trust_cws_rego_metadata_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustCwsRegoMetadata(
    String name, {
    ZeroTrustCwsRegoMetadataArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustCwsRegoMetadata:ZeroTrustCwsRegoMetadata',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.24.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    data = registerOutput<String>('data');
    importPath = registerOutput<String>('importPath');
    this.name = registerOutput<String>('name');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [ZeroTrustCwsRegoMetadata] resource's state with the given [name] and [id].
  static ZeroTrustCwsRegoMetadata get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustCwsRegoMetadataState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustCwsRegoMetadata._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustCwsRegoMetadata._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustCwsRegoMetadata:ZeroTrustCwsRegoMetadata',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    data = registerOutput<String>('data');
    importPath = registerOutput<String>('importPath');
    this.name = registerOutput<String>('name');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Creates a typed reference to an existing [ZeroTrustCwsRegoMetadata] resource.
  ZeroTrustCwsRegoMetadata.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustCwsRegoMetadata:ZeroTrustCwsRegoMetadata',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    data = registerOutput<String>('data');
    importPath = registerOutput<String>('importPath');
    this.name = registerOutput<String>('name');
    updatedAt = registerOutput<String>('updatedAt');
  }
}
