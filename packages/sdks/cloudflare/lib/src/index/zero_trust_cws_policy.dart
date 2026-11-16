import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_cws_policy_args.dart';
import 'zero_trust_cws_policy_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustCwsPolicy = new cloudflare.ZeroTrustCwsPolicy("example_zero_trust_cws_policy", {
///     accountId: "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///     entrypoint: "entrypoint",
///     filter: "x",
///     name: "x",
///     regoSource: "x",
///     description: "description",
///     tags: {
///         foo: "string",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_cws_policy = cloudflare.ZeroTrustCwsPolicy("example_zero_trust_cws_policy",
///     account_id="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///     entrypoint="entrypoint",
///     filter="x",
///     name="x",
///     rego_source="x",
///     description="description",
///     tags={
///         "foo": "string",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustCwsPolicy = new Cloudflare.ZeroTrustCwsPolicy("example_zero_trust_cws_policy", new()
///     {
///         AccountId = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///         Entrypoint = "entrypoint",
///         Filter = "x",
///         Name = "x",
///         RegoSource = "x",
///         Description = "description",
///         Tags =
///         {
///             { "foo", "string" },
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
/// 		_, err := cloudflare.NewZeroTrustCwsPolicy(ctx, "example_zero_trust_cws_policy", &cloudflare.ZeroTrustCwsPolicyArgs{
/// 			AccountId:   pulumi.String("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"),
/// 			Entrypoint:  pulumi.String("entrypoint"),
/// 			Filter:      pulumi.String("x"),
/// 			Name:        pulumi.String("x"),
/// 			RegoSource:  pulumi.String("x"),
/// 			Description: pulumi.String("description"),
/// 			Tags: pulumi.StringMap{
/// 				"foo": pulumi.String("string"),
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
/// terraform {
///   required_providers {
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_zero_trust_cws_policy" "example_zero_trust_cws_policy" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id  = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
///   entrypoint  = "entrypoint"
///   filter      = "x"
///   name        = "x"
///   rego_source = "x"
///   description = "description"
///   tags = {
///     "foo" = "string"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustCwsPolicy;
/// import com.pulumi.cloudflare.ZeroTrustCwsPolicyArgs;
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
///         var exampleZeroTrustCwsPolicy = new ZeroTrustCwsPolicy("exampleZeroTrustCwsPolicy", ZeroTrustCwsPolicyArgs.builder()
///             .accountId("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
///             .entrypoint("entrypoint")
///             .filter("x")
///             .name("x")
///             .regoSource("x")
///             .description("description")
///             .tags(Map.of("foo", "string"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustCwsPolicy:
///     type: cloudflare:ZeroTrustCwsPolicy
///     name: example_zero_trust_cws_policy
///     properties:
///       accountId: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
///       entrypoint: entrypoint
///       filter: x
///       name: x
///       regoSource: x
///       description: description
///       tags:
///         foo: string
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustCwsPolicy:ZeroTrustCwsPolicy example '<account_id>/<policy_id>'
/// ```
class ZeroTrustCwsPolicy extends pulumi.CustomResource {
  /// Cloudflare account ID (32-character hexadecimal string)
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<String> createdAt;
  /// Optional free-form description.
  late final pulumi.Output<String?> description;
  /// Non-function rule declared in rego*source. Evaluation uses data.\n\n*path&gt;.\n\n.
  late final pulumi.Output<String> entrypoint;
  /// Filter expression that determines whether this policy applies. Maximum 4096 UTF-8 bytes.
  late final pulumi.Output<String> filter;
  /// Name of the policy
  late final pulumi.Output<String> name;
  /// Dotted path derived from rego_source. Begins with policy. and is unique per account.
  late final pulumi.Output<String> packagePath;
  /// Inline Rego source with a package beginning with "policy." Maximum 16384 UTF-8 bytes.
  late final pulumi.Output<String> regoSource;
  /// Tags to attach. Keys are limited to 256 UTF-8 bytes and values to 1024 UTF-8 bytes.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [ZeroTrustCwsPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustCwsPolicy]. {@macro pulumi_index_zero_trust_cws_policy_zero_trust_cws_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustCwsPolicy(
    String name, {
    ZeroTrustCwsPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustCwsPolicy:ZeroTrustCwsPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.24.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    entrypoint = registerOutput<String>('entrypoint');
    filter = registerOutput<String>('filter');
    this.name = registerOutput<String>('name');
    packagePath = registerOutput<String>('packagePath');
    regoSource = registerOutput<String>('regoSource');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [ZeroTrustCwsPolicy] resource's state with the given [name] and [id].
  static ZeroTrustCwsPolicy get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustCwsPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustCwsPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustCwsPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustCwsPolicy:ZeroTrustCwsPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    entrypoint = registerOutput<String>('entrypoint');
    filter = registerOutput<String>('filter');
    this.name = registerOutput<String>('name');
    packagePath = registerOutput<String>('packagePath');
    regoSource = registerOutput<String>('regoSource');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Creates a typed reference to an existing [ZeroTrustCwsPolicy] resource.
  ZeroTrustCwsPolicy.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustCwsPolicy:ZeroTrustCwsPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    entrypoint = registerOutput<String>('entrypoint');
    filter = registerOutput<String>('filter');
    this.name = registerOutput<String>('name');
    packagePath = registerOutput<String>('packagePath');
    regoSource = registerOutput<String>('regoSource');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updatedAt = registerOutput<String>('updatedAt');
  }
}
