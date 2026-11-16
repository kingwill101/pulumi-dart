import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_cws_domain_acl_args.dart';
import 'zero_trust_cws_domain_acl_entry.dart';
import 'zero_trust_cws_domain_acl_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustCwsDomainAcl = new cloudflare.ZeroTrustCwsDomainAcl("example_zero_trust_cws_domain_acl", {
///     accountId: "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///     defaultAction: "ALLOW",
///     entries: [{
///         action: "ALLOW",
///         domain: "x",
///     }],
///     name: "x",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_cws_domain_acl = cloudflare.ZeroTrustCwsDomainAcl("example_zero_trust_cws_domain_acl",
///     account_id="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///     default_action="ALLOW",
///     entries=[{
///         "action": "ALLOW",
///         "domain": "x",
///     }],
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
///     var exampleZeroTrustCwsDomainAcl = new Cloudflare.ZeroTrustCwsDomainAcl("example_zero_trust_cws_domain_acl", new()
///     {
///         AccountId = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///         DefaultAction = "ALLOW",
///         Entries = new[]
///         {
///             new Cloudflare.Inputs.ZeroTrustCwsDomainAclEntryArgs
///             {
///                 Action = "ALLOW",
///                 Domain = "x",
///             },
///         },
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
/// 		_, err := cloudflare.NewZeroTrustCwsDomainAcl(ctx, "example_zero_trust_cws_domain_acl", &cloudflare.ZeroTrustCwsDomainAclArgs{
/// 			AccountId:     pulumi.String("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"),
/// 			DefaultAction: pulumi.String("ALLOW"),
/// 			Entries: cloudflare.ZeroTrustCwsDomainAclEntryArray{
/// 				&cloudflare.ZeroTrustCwsDomainAclEntryArgs{
/// 					Action: pulumi.String("ALLOW"),
/// 					Domain: pulumi.String("x"),
/// 				},
/// 			},
/// 			Name: pulumi.String("x"),
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
/// resource "cloudflare_zero_trust_cws_domain_acl" "example_zero_trust_cws_domain_acl" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id     = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
///   default_action = "ALLOW"
///   entries = [{
///     action = "ALLOW"
///     domain = "x"
///   }]
///   name = "x"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustCwsDomainAcl;
/// import com.pulumi.cloudflare.ZeroTrustCwsDomainAclArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustCwsDomainAclEntryArgs;
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
///         var exampleZeroTrustCwsDomainAcl = new ZeroTrustCwsDomainAcl("exampleZeroTrustCwsDomainAcl", ZeroTrustCwsDomainAclArgs.builder()
///             .accountId("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
///             .defaultAction("ALLOW")
///             .entries(ZeroTrustCwsDomainAclEntryArgs.builder()
///                 .action("ALLOW")
///                 .domain("x")
///                 .build())
///             .name("x")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustCwsDomainAcl:
///     type: cloudflare:ZeroTrustCwsDomainAcl
///     name: example_zero_trust_cws_domain_acl
///     properties:
///       accountId: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
///       defaultAction: ALLOW
///       entries:
///         - action: ALLOW
///           domain: x
///       name: x
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustCwsDomainAcl:ZeroTrustCwsDomainAcl example '<account_id>/<domain_acl_id>'
/// ```
class ZeroTrustCwsDomainAcl extends pulumi.CustomResource {
  /// Cloudflare account ID (32-character hexadecimal string)
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<String> createdAt;
  /// Default action when no entry matches
  /// Available values: "ALLOW", "BLOCK".
  late final pulumi.Output<String> defaultAction;
  /// Domain entries for this ACL. Each domain must appear at most once.
  late final pulumi.Output<List<ZeroTrustCwsDomainAclEntry>> entries;
  /// Name of the domain ACL
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [ZeroTrustCwsDomainAcl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustCwsDomainAcl]. {@macro pulumi_index_zero_trust_cws_domain_acl_zero_trust_cws_domain_acl_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustCwsDomainAcl(
    String name, {
    ZeroTrustCwsDomainAclArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustCwsDomainAcl:ZeroTrustCwsDomainAcl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.24.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    defaultAction = registerOutput<String>('defaultAction');
    entries = registerOutput<List<ZeroTrustCwsDomainAclEntry>>('entries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustCwsDomainAclEntry>(guardedValue, (value) => ZeroTrustCwsDomainAclEntry.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [ZeroTrustCwsDomainAcl] resource's state with the given [name] and [id].
  static ZeroTrustCwsDomainAcl get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustCwsDomainAclState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustCwsDomainAcl._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustCwsDomainAcl._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustCwsDomainAcl:ZeroTrustCwsDomainAcl',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    defaultAction = registerOutput<String>('defaultAction');
    entries = registerOutput<List<ZeroTrustCwsDomainAclEntry>>('entries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustCwsDomainAclEntry>(guardedValue, (value) => ZeroTrustCwsDomainAclEntry.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Creates a typed reference to an existing [ZeroTrustCwsDomainAcl] resource.
  ZeroTrustCwsDomainAcl.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustCwsDomainAcl:ZeroTrustCwsDomainAcl',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    defaultAction = registerOutput<String>('defaultAction');
    entries = registerOutput<List<ZeroTrustCwsDomainAclEntry>>('entries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustCwsDomainAclEntry>(guardedValue, (value) => ZeroTrustCwsDomainAclEntry.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    updatedAt = registerOutput<String>('updatedAt');
  }
}
