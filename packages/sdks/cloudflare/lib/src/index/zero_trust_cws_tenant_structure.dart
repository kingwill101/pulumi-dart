import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_cws_tenant_structure_args.dart';
import 'zero_trust_cws_tenant_structure_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustCwsTenantStructure = new cloudflare.ZeroTrustCwsTenantStructure("example_zero_trust_cws_tenant_structure", {
///     accountId: "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///     application: "aws",
///     name: "x",
///     importPath: "x",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_cws_tenant_structure = cloudflare.ZeroTrustCwsTenantStructure("example_zero_trust_cws_tenant_structure",
///     account_id="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///     application="aws",
///     name="x",
///     import_path="x")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustCwsTenantStructure = new Cloudflare.ZeroTrustCwsTenantStructure("example_zero_trust_cws_tenant_structure", new()
///     {
///         AccountId = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///         Application = "aws",
///         Name = "x",
///         ImportPath = "x",
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
/// 		_, err := cloudflare.NewZeroTrustCwsTenantStructure(ctx, "example_zero_trust_cws_tenant_structure", &cloudflare.ZeroTrustCwsTenantStructureArgs{
/// 			AccountId:   pulumi.String("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"),
/// 			Application: pulumi.String("aws"),
/// 			Name:        pulumi.String("x"),
/// 			ImportPath:  pulumi.String("x"),
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
/// resource "cloudflare_zero_trust_cws_tenant_structure" "example_zero_trust_cws_tenant_structure" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id  = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
///   application = "aws"
///   name        = "x"
///   import_path = "x"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustCwsTenantStructure;
/// import com.pulumi.cloudflare.ZeroTrustCwsTenantStructureArgs;
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
///         var exampleZeroTrustCwsTenantStructure = new ZeroTrustCwsTenantStructure("exampleZeroTrustCwsTenantStructure", ZeroTrustCwsTenantStructureArgs.builder()
///             .accountId("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
///             .application("aws")
///             .name("x")
///             .importPath("x")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustCwsTenantStructure:
///     type: cloudflare:ZeroTrustCwsTenantStructure
///     name: example_zero_trust_cws_tenant_structure
///     properties:
///       accountId: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
///       application: aws
///       name: x
///       importPath: x
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustCwsTenantStructure:ZeroTrustCwsTenantStructure example '<account_id>/<structure_id>'
/// ```
class ZeroTrustCwsTenantStructure extends pulumi.CustomResource {
  /// Cloudflare account ID (32-character hexadecimal string)
  late final pulumi.Output<String> accountId;
  /// Platform this structure models. Immutable after creation.
  /// Available values: "aws", "cloudflare".
  late final pulumi.Output<String> application;
  late final pulumi.Output<String> createdAt;
  /// Optional unique Rego mount path in the form tenant.\n\n.\n\n; application must match. Omit to leave unmounted.
  late final pulumi.Output<String?> importPath;
  /// Human-readable name; unique per account
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [ZeroTrustCwsTenantStructure].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustCwsTenantStructure]. {@macro pulumi_index_zero_trust_cws_tenant_structure_zero_trust_cws_tenant_structure_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustCwsTenantStructure(
    String name, {
    ZeroTrustCwsTenantStructureArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustCwsTenantStructure:ZeroTrustCwsTenantStructure',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.24.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    application = registerOutput<String>('application');
    createdAt = registerOutput<String>('createdAt');
    importPath = registerOutput<String?>('importPath');
    this.name = registerOutput<String>('name');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [ZeroTrustCwsTenantStructure] resource's state with the given [name] and [id].
  static ZeroTrustCwsTenantStructure get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustCwsTenantStructureState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustCwsTenantStructure._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustCwsTenantStructure._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustCwsTenantStructure:ZeroTrustCwsTenantStructure',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    application = registerOutput<String>('application');
    createdAt = registerOutput<String>('createdAt');
    importPath = registerOutput<String?>('importPath');
    this.name = registerOutput<String>('name');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Creates a typed reference to an existing [ZeroTrustCwsTenantStructure] resource.
  ZeroTrustCwsTenantStructure.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustCwsTenantStructure:ZeroTrustCwsTenantStructure',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    application = registerOutput<String>('application');
    createdAt = registerOutput<String>('createdAt');
    importPath = registerOutput<String?>('importPath');
    this.name = registerOutput<String>('name');
    updatedAt = registerOutput<String>('updatedAt');
  }
}
