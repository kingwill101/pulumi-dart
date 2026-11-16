import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_cws_policy_set_args.dart';
import 'zero_trust_cws_policy_set_policy.dart';
import 'zero_trust_cws_policy_set_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustCwsPolicySet = new cloudflare.ZeroTrustCwsPolicySet("example_zero_trust_cws_policy_set", {
///     accountId: "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///     name: "x",
///     policies: [{
///         policyId: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///         enforce: true,
///     }],
///     description: "description",
///     excludeWorkloadIds: ["182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"],
///     includeWorkloadIds: ["182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"],
///     tags: {
///         foo: "string",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_cws_policy_set = cloudflare.ZeroTrustCwsPolicySet("example_zero_trust_cws_policy_set",
///     account_id="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///     name="x",
///     policies=[{
///         "policy_id": "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///         "enforce": True,
///     }],
///     description="description",
///     exclude_workload_ids=["182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"],
///     include_workload_ids=["182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"],
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
///     var exampleZeroTrustCwsPolicySet = new Cloudflare.ZeroTrustCwsPolicySet("example_zero_trust_cws_policy_set", new()
///     {
///         AccountId = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///         Name = "x",
///         Policies = new[]
///         {
///             new Cloudflare.Inputs.ZeroTrustCwsPolicySetPolicyArgs
///             {
///                 PolicyId = "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///                 Enforce = true,
///             },
///         },
///         Description = "description",
///         ExcludeWorkloadIds = new[]
///         {
///             "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///         },
///         IncludeWorkloadIds = new[]
///         {
///             "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///         },
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
/// 		_, err := cloudflare.NewZeroTrustCwsPolicySet(ctx, "example_zero_trust_cws_policy_set", &cloudflare.ZeroTrustCwsPolicySetArgs{
/// 			AccountId: pulumi.String("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"),
/// 			Name:      pulumi.String("x"),
/// 			Policies: cloudflare.ZeroTrustCwsPolicySetPolicyArray{
/// 				&cloudflare.ZeroTrustCwsPolicySetPolicyArgs{
/// 					PolicyId: pulumi.String("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"),
/// 					Enforce:  pulumi.Bool(true),
/// 				},
/// 			},
/// 			Description: pulumi.String("description"),
/// 			ExcludeWorkloadIds: pulumi.StringArray{
/// 				pulumi.String("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"),
/// 			},
/// 			IncludeWorkloadIds: pulumi.StringArray{
/// 				pulumi.String("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"),
/// 			},
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
/// resource "cloudflare_zero_trust_cws_policy_set" "example_zero_trust_cws_policy_set" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
///   name       = "x"
///   policies = [{
///     policy_id = "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
///     enforce   = true
///   }]
///   description          = "description"
///   exclude_workload_ids = ["182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"]
///   include_workload_ids = ["182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"]
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
/// import com.pulumi.cloudflare.ZeroTrustCwsPolicySet;
/// import com.pulumi.cloudflare.ZeroTrustCwsPolicySetArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustCwsPolicySetPolicyArgs;
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
///         var exampleZeroTrustCwsPolicySet = new ZeroTrustCwsPolicySet("exampleZeroTrustCwsPolicySet", ZeroTrustCwsPolicySetArgs.builder()
///             .accountId("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
///             .name("x")
///             .policies(ZeroTrustCwsPolicySetPolicyArgs.builder()
///                 .policyId("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
///                 .enforce(true)
///                 .build())
///             .description("description")
///             .excludeWorkloadIds("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
///             .includeWorkloadIds("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
///             .tags(Map.of("foo", "string"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustCwsPolicySet:
///     type: cloudflare:ZeroTrustCwsPolicySet
///     name: example_zero_trust_cws_policy_set
///     properties:
///       accountId: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
///       name: x
///       policies:
///         - policyId: 182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e
///           enforce: true
///       description: description
///       excludeWorkloadIds:
///         - 182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e
///       includeWorkloadIds:
///         - 182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e
///       tags:
///         foo: string
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustCwsPolicySet:ZeroTrustCwsPolicySet example '<account_id>/<policy_set_id>'
/// ```
class ZeroTrustCwsPolicySet extends pulumi.CustomResource {
  /// Cloudflare account ID (32-character hexadecimal string)
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<String> createdAt;
  /// Optional free-form description.
  late final pulumi.Output<String?> description;
  /// Workload IDs that exclude matching requests. Exclusions take precedence.
  late final pulumi.Output<List<String>> excludeWorkloadIds;
  /// Workload IDs that include matching requests. Empty or omitted includes all requests before exclusions.
  late final pulumi.Output<List<String>> includeWorkloadIds;
  /// Name of the policy set
  late final pulumi.Output<String> name;
  /// Policies to include with per-membership enforcement mode
  late final pulumi.Output<List<ZeroTrustCwsPolicySetPolicy>> policies;
  /// Tags to attach. Keys are limited to 256 UTF-8 bytes and values to 1024 UTF-8 bytes.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [ZeroTrustCwsPolicySet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustCwsPolicySet]. {@macro pulumi_index_zero_trust_cws_policy_set_zero_trust_cws_policy_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustCwsPolicySet(
    String name, {
    ZeroTrustCwsPolicySetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustCwsPolicySet:ZeroTrustCwsPolicySet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.24.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    excludeWorkloadIds = registerOutput<List<String>>('excludeWorkloadIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    includeWorkloadIds = registerOutput<List<String>>('includeWorkloadIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    policies = registerOutput<List<ZeroTrustCwsPolicySetPolicy>>('policies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustCwsPolicySetPolicy>(guardedValue, (value) => ZeroTrustCwsPolicySetPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [ZeroTrustCwsPolicySet] resource's state with the given [name] and [id].
  static ZeroTrustCwsPolicySet get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustCwsPolicySetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustCwsPolicySet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustCwsPolicySet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustCwsPolicySet:ZeroTrustCwsPolicySet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    excludeWorkloadIds = registerOutput<List<String>>('excludeWorkloadIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    includeWorkloadIds = registerOutput<List<String>>('includeWorkloadIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    policies = registerOutput<List<ZeroTrustCwsPolicySetPolicy>>('policies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustCwsPolicySetPolicy>(guardedValue, (value) => ZeroTrustCwsPolicySetPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Creates a typed reference to an existing [ZeroTrustCwsPolicySet] resource.
  ZeroTrustCwsPolicySet.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustCwsPolicySet:ZeroTrustCwsPolicySet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    excludeWorkloadIds = registerOutput<List<String>>('excludeWorkloadIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    includeWorkloadIds = registerOutput<List<String>>('includeWorkloadIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    policies = registerOutput<List<ZeroTrustCwsPolicySetPolicy>>('policies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustCwsPolicySetPolicy>(guardedValue, (value) => ZeroTrustCwsPolicySetPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updatedAt = registerOutput<String>('updatedAt');
  }
}
