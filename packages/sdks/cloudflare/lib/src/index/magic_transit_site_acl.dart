import 'package:pulumi/pulumi.dart' as pulumi;
import 'magic_transit_site_acl_args.dart';
import 'magic_transit_site_acl_lan1.dart';
import 'magic_transit_site_acl_lan2.dart';
import 'magic_transit_site_acl_state.dart';

/// Accepted Permissions
///
/// - `Magic Transit Read`
/// - `Magic Transit Write`
/// - `Magic WAN Read`
/// - `Magic WAN Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleMagicTransitSiteAcl = new cloudflare.MagicTransitSiteAcl("example_magic_transit_site_acl", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     siteId: "023e105f4ecef8ad9ca31a8372d0c353",
///     lan1: {
///         lanId: "lan_id",
///         lanName: "lan_name",
///         portRanges: ["8080-9000"],
///         ports: [1],
///         subnets: ["192.0.2.1"],
///     },
///     lan2: {
///         lanId: "lan_id",
///         lanName: "lan_name",
///         portRanges: ["8080-9000"],
///         ports: [1],
///         subnets: ["192.0.2.1"],
///     },
///     name: "PIN Pad - Cash Register",
///     description: "Allows local traffic between PIN pads and cash register.",
///     forwardLocally: true,
///     protocols: ["tcp"],
///     unidirectional: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_magic_transit_site_acl = cloudflare.MagicTransitSiteAcl("example_magic_transit_site_acl",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     site_id="023e105f4ecef8ad9ca31a8372d0c353",
///     lan1={
///         "lan_id": "lan_id",
///         "lan_name": "lan_name",
///         "port_ranges": ["8080-9000"],
///         "ports": [1],
///         "subnets": ["192.0.2.1"],
///     },
///     lan2={
///         "lan_id": "lan_id",
///         "lan_name": "lan_name",
///         "port_ranges": ["8080-9000"],
///         "ports": [1],
///         "subnets": ["192.0.2.1"],
///     },
///     name="PIN Pad - Cash Register",
///     description="Allows local traffic between PIN pads and cash register.",
///     forward_locally=True,
///     protocols=["tcp"],
///     unidirectional=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleMagicTransitSiteAcl = new Cloudflare.MagicTransitSiteAcl("example_magic_transit_site_acl", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         SiteId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Lan1 = new Cloudflare.Inputs.MagicTransitSiteAclLan1Args
///         {
///             LanId = "lan_id",
///             LanName = "lan_name",
///             PortRanges = new[]
///             {
///                 "8080-9000",
///             },
///             Ports = new[]
///             {
///                 1,
///             },
///             Subnets = new[]
///             {
///                 "192.0.2.1",
///             },
///         },
///         Lan2 = new Cloudflare.Inputs.MagicTransitSiteAclLan2Args
///         {
///             LanId = "lan_id",
///             LanName = "lan_name",
///             PortRanges = new[]
///             {
///                 "8080-9000",
///             },
///             Ports = new[]
///             {
///                 1,
///             },
///             Subnets = new[]
///             {
///                 "192.0.2.1",
///             },
///         },
///         Name = "PIN Pad - Cash Register",
///         Description = "Allows local traffic between PIN pads and cash register.",
///         ForwardLocally = true,
///         Protocols = new[]
///         {
///             "tcp",
///         },
///         Unidirectional = true,
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
/// 		_, err := cloudflare.NewMagicTransitSiteAcl(ctx, "example_magic_transit_site_acl", &cloudflare.MagicTransitSiteAclArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			SiteId:    pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Lan1: &cloudflare.MagicTransitSiteAclLan1Args{
/// 				LanId:   pulumi.String("lan_id"),
/// 				LanName: pulumi.String("lan_name"),
/// 				PortRanges: pulumi.StringArray{
/// 					pulumi.String("8080-9000"),
/// 				},
/// 				Ports: pulumi.IntArray{
/// 					pulumi.Int(1),
/// 				},
/// 				Subnets: pulumi.StringArray{
/// 					pulumi.String("192.0.2.1"),
/// 				},
/// 			},
/// 			Lan2: &cloudflare.MagicTransitSiteAclLan2Args{
/// 				LanId:   pulumi.String("lan_id"),
/// 				LanName: pulumi.String("lan_name"),
/// 				PortRanges: pulumi.StringArray{
/// 					pulumi.String("8080-9000"),
/// 				},
/// 				Ports: pulumi.IntArray{
/// 					pulumi.Int(1),
/// 				},
/// 				Subnets: pulumi.StringArray{
/// 					pulumi.String("192.0.2.1"),
/// 				},
/// 			},
/// 			Name:           pulumi.String("PIN Pad - Cash Register"),
/// 			Description:    pulumi.String("Allows local traffic between PIN pads and cash register."),
/// 			ForwardLocally: pulumi.Bool(true),
/// 			Protocols: pulumi.StringArray{
/// 				pulumi.String("tcp"),
/// 			},
/// 			Unidirectional: pulumi.Bool(true),
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
/// resource "cloudflare_magictransitsiteacl" "example_magic_transit_site_acl" {
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   site_id    = "023e105f4ecef8ad9ca31a8372d0c353"
///   lan1 = {
///     lan_id      = "lan_id"
///     lan_name    = "lan_name"
///     port_ranges = ["8080-9000"]
///     ports       = [1]
///     subnets     = ["192.0.2.1"]
///   }
///   lan2 = {
///     lan_id      = "lan_id"
///     lan_name    = "lan_name"
///     port_ranges = ["8080-9000"]
///     ports       = [1]
///     subnets     = ["192.0.2.1"]
///   }
///   name            = "PIN Pad - Cash Register"
///   description     = "Allows local traffic between PIN pads and cash register."
///   forward_locally = true
///   protocols       = ["tcp"]
///   unidirectional  = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.MagicTransitSiteAcl;
/// import com.pulumi.cloudflare.MagicTransitSiteAclArgs;
/// import com.pulumi.cloudflare.inputs.MagicTransitSiteAclLan1Args;
/// import com.pulumi.cloudflare.inputs.MagicTransitSiteAclLan2Args;
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
///         var exampleMagicTransitSiteAcl = new MagicTransitSiteAcl("exampleMagicTransitSiteAcl", MagicTransitSiteAclArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .siteId("023e105f4ecef8ad9ca31a8372d0c353")
///             .lan1(MagicTransitSiteAclLan1Args.builder()
///                 .lanId("lan_id")
///                 .lanName("lan_name")
///                 .portRanges("8080-9000")
///                 .ports(1)
///                 .subnets("192.0.2.1")
///                 .build())
///             .lan2(MagicTransitSiteAclLan2Args.builder()
///                 .lanId("lan_id")
///                 .lanName("lan_name")
///                 .portRanges("8080-9000")
///                 .ports(1)
///                 .subnets("192.0.2.1")
///                 .build())
///             .name("PIN Pad - Cash Register")
///             .description("Allows local traffic between PIN pads and cash register.")
///             .forwardLocally(true)
///             .protocols("tcp")
///             .unidirectional(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleMagicTransitSiteAcl:
///     type: cloudflare:MagicTransitSiteAcl
///     name: example_magic_transit_site_acl
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       siteId: 023e105f4ecef8ad9ca31a8372d0c353
///       lan1:
///         lanId: lan_id
///         lanName: lan_name
///         portRanges:
///           - 8080-9000
///         ports:
///           - 1
///         subnets:
///           - 192.0.2.1
///       lan2:
///         lanId: lan_id
///         lanName: lan_name
///         portRanges:
///           - 8080-9000
///         ports:
///           - 1
///         subnets:
///           - 192.0.2.1
///       name: PIN Pad - Cash Register
///       description: Allows local traffic between PIN pads and cash register.
///       forwardLocally: true
///       protocols:
///         - tcp
///       unidirectional: true
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/magicTransitSiteAcl:MagicTransitSiteAcl example '<account_id>/<site_id>/<acl_id>'
/// ```
class MagicTransitSiteAcl extends pulumi.CustomResource {
  /// Identifier
  late final pulumi.Output<String> accountId;
  /// Description for the ACL.
  late final pulumi.Output<String?> description;
  /// The desired forwarding action for this ACL policy. If set to "false", the policy will forward traffic to Cloudflare. If set to "true", the policy will forward traffic locally on the Magic Connector. If not included in request, will default to false.
  late final pulumi.Output<bool?> forwardLocally;
  late final pulumi.Output<MagicTransitSiteAclLan1> lan1;
  late final pulumi.Output<MagicTransitSiteAclLan2> lan2;
  /// The name of the ACL.
  late final pulumi.Output<String> name;
  late final pulumi.Output<List<String>?> protocols;
  /// Identifier
  late final pulumi.Output<String> siteId;
  /// The desired traffic direction for this ACL policy. If set to "false", the policy will allow bidirectional traffic. If set to "true", the policy will only allow traffic in one direction. If not included in request, will default to false.
  late final pulumi.Output<bool?> unidirectional;

  /// Creates a new [MagicTransitSiteAcl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MagicTransitSiteAcl]. {@macro pulumi_index_magic_transit_site_acl_magic_transit_site_acl_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MagicTransitSiteAcl(
    String name, {
    MagicTransitSiteAclArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/magicTransitSiteAcl:MagicTransitSiteAcl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    description = registerOutput<String?>('description');
    forwardLocally = registerOutput<bool?>('forwardLocally');
    lan1 = registerOutput<MagicTransitSiteAclLan1>('lan1', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicTransitSiteAclLan1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lan2 = registerOutput<MagicTransitSiteAclLan2>('lan2', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicTransitSiteAclLan2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    protocols = registerOutput<List<String>?>('protocols', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    siteId = registerOutput<String>('siteId');
    unidirectional = registerOutput<bool?>('unidirectional');
  }

  /// Gets an existing [MagicTransitSiteAcl] resource's state with the given [name] and [id].
  static MagicTransitSiteAcl get(
    String name,
    pulumi.Input<String> id, {
    MagicTransitSiteAclState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MagicTransitSiteAcl._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MagicTransitSiteAcl._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/magicTransitSiteAcl:MagicTransitSiteAcl',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    description = registerOutput<String?>('description');
    forwardLocally = registerOutput<bool?>('forwardLocally');
    lan1 = registerOutput<MagicTransitSiteAclLan1>('lan1', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicTransitSiteAclLan1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lan2 = registerOutput<MagicTransitSiteAclLan2>('lan2', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicTransitSiteAclLan2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    protocols = registerOutput<List<String>?>('protocols', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    siteId = registerOutput<String>('siteId');
    unidirectional = registerOutput<bool?>('unidirectional');
  }

  /// Creates a typed reference to an existing [MagicTransitSiteAcl] resource.
  MagicTransitSiteAcl.reference(String urn)
    : super(
        'cloudflare:index/magicTransitSiteAcl:MagicTransitSiteAcl',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    description = registerOutput<String?>('description');
    forwardLocally = registerOutput<bool?>('forwardLocally');
    lan1 = registerOutput<MagicTransitSiteAclLan1>('lan1', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicTransitSiteAclLan1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lan2 = registerOutput<MagicTransitSiteAclLan2>('lan2', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicTransitSiteAclLan2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    protocols = registerOutput<List<String>?>('protocols', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    siteId = registerOutput<String>('siteId');
    unidirectional = registerOutput<bool?>('unidirectional');
  }
}
