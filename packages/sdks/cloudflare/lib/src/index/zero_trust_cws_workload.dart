import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_cws_workload_args.dart';
import 'zero_trust_cws_workload_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustCwsWorkload = new cloudflare.ZeroTrustCwsWorkload("example_zero_trust_cws_workload", {
///     accountId: "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///     filter: "x",
///     name: "x",
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
/// example_zero_trust_cws_workload = cloudflare.ZeroTrustCwsWorkload("example_zero_trust_cws_workload",
///     account_id="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///     filter="x",
///     name="x",
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
///     var exampleZeroTrustCwsWorkload = new Cloudflare.ZeroTrustCwsWorkload("example_zero_trust_cws_workload", new()
///     {
///         AccountId = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///         Filter = "x",
///         Name = "x",
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
/// 		_, err := cloudflare.NewZeroTrustCwsWorkload(ctx, "example_zero_trust_cws_workload", &cloudflare.ZeroTrustCwsWorkloadArgs{
/// 			AccountId:   pulumi.String("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"),
/// 			Filter:      pulumi.String("x"),
/// 			Name:        pulumi.String("x"),
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
/// resource "cloudflare_zero_trust_cws_workload" "example_zero_trust_cws_workload" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id  = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
///   filter      = "x"
///   name        = "x"
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
/// import com.pulumi.cloudflare.ZeroTrustCwsWorkload;
/// import com.pulumi.cloudflare.ZeroTrustCwsWorkloadArgs;
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
///         var exampleZeroTrustCwsWorkload = new ZeroTrustCwsWorkload("exampleZeroTrustCwsWorkload", ZeroTrustCwsWorkloadArgs.builder()
///             .accountId("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
///             .filter("x")
///             .name("x")
///             .description("description")
///             .tags(Map.of("foo", "string"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustCwsWorkload:
///     type: cloudflare:ZeroTrustCwsWorkload
///     name: example_zero_trust_cws_workload
///     properties:
///       accountId: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
///       filter: x
///       name: x
///       description: description
///       tags:
///         foo: string
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustCwsWorkload:ZeroTrustCwsWorkload example '<account_id>/<workload_id>'
/// ```
class ZeroTrustCwsWorkload extends pulumi.CustomResource {
  /// Cloudflare account ID (32-character hexadecimal string)
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<String> createdAt;
  /// Optional free-form description.
  late final pulumi.Output<String?> description;
  /// Filter expression selecting the requests this workload matches. Maximum 4096 UTF-8 bytes.
  late final pulumi.Output<String> filter;
  /// Human-readable handle; unique per account.
  late final pulumi.Output<String> name;
  /// Tags to attach. Keys are limited to 256 UTF-8 bytes and values to 1024 UTF-8 bytes.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [ZeroTrustCwsWorkload].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustCwsWorkload]. {@macro pulumi_index_zero_trust_cws_workload_zero_trust_cws_workload_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustCwsWorkload(
    String name, {
    ZeroTrustCwsWorkloadArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustCwsWorkload:ZeroTrustCwsWorkload',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.24.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    filter = registerOutput<String>('filter');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [ZeroTrustCwsWorkload] resource's state with the given [name] and [id].
  static ZeroTrustCwsWorkload get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustCwsWorkloadState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustCwsWorkload._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustCwsWorkload._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustCwsWorkload:ZeroTrustCwsWorkload',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    filter = registerOutput<String>('filter');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Creates a typed reference to an existing [ZeroTrustCwsWorkload] resource.
  ZeroTrustCwsWorkload.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustCwsWorkload:ZeroTrustCwsWorkload',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    filter = registerOutput<String>('filter');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updatedAt = registerOutput<String>('updatedAt');
  }
}
