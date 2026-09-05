import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_access_infrastructure_target_args.dart';
import 'zero_trust_access_infrastructure_target_ip.dart';
import 'zero_trust_access_infrastructure_target_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustAccessInfrastructureTarget = new cloudflare.ZeroTrustAccessInfrastructureTarget("example_zero_trust_access_infrastructure_target", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     hostname: "infra-access-target",
///     ip: {
///         ipv4: {
///             ipAddr: "187.26.29.249",
///             virtualNetworkId: "c77b744e-acc8-428f-9257-6878c046ed55",
///         },
///         ipv6: {
///             ipAddr: "64c0:64e8:f0b4:8dbf:7104:72b0:ec8f:f5e0",
///             virtualNetworkId: "c77b744e-acc8-428f-9257-6878c046ed55",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_access_infrastructure_target = cloudflare.ZeroTrustAccessInfrastructureTarget("example_zero_trust_access_infrastructure_target",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     hostname="infra-access-target",
///     ip={
///         "ipv4": {
///             "ip_addr": "187.26.29.249",
///             "virtual_network_id": "c77b744e-acc8-428f-9257-6878c046ed55",
///         },
///         "ipv6": {
///             "ip_addr": "64c0:64e8:f0b4:8dbf:7104:72b0:ec8f:f5e0",
///             "virtual_network_id": "c77b744e-acc8-428f-9257-6878c046ed55",
///         },
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
///     var exampleZeroTrustAccessInfrastructureTarget = new Cloudflare.ZeroTrustAccessInfrastructureTarget("example_zero_trust_access_infrastructure_target", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Hostname = "infra-access-target",
///         Ip = new Cloudflare.Inputs.ZeroTrustAccessInfrastructureTargetIpArgs
///         {
///             Ipv4 = new Cloudflare.Inputs.ZeroTrustAccessInfrastructureTargetIpIpv4Args
///             {
///                 IpAddr = "187.26.29.249",
///                 VirtualNetworkId = "c77b744e-acc8-428f-9257-6878c046ed55",
///             },
///             Ipv6 = new Cloudflare.Inputs.ZeroTrustAccessInfrastructureTargetIpIpv6Args
///             {
///                 IpAddr = "64c0:64e8:f0b4:8dbf:7104:72b0:ec8f:f5e0",
///                 VirtualNetworkId = "c77b744e-acc8-428f-9257-6878c046ed55",
///             },
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
/// 		_, err := cloudflare.NewZeroTrustAccessInfrastructureTarget(ctx, "example_zero_trust_access_infrastructure_target", &cloudflare.ZeroTrustAccessInfrastructureTargetArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Hostname:  pulumi.String("infra-access-target"),
/// 			Ip: &cloudflare.ZeroTrustAccessInfrastructureTargetIpArgs{
/// 				Ipv4: &cloudflare.ZeroTrustAccessInfrastructureTargetIpIpv4Args{
/// 					IpAddr:           pulumi.String("187.26.29.249"),
/// 					VirtualNetworkId: pulumi.String("c77b744e-acc8-428f-9257-6878c046ed55"),
/// 				},
/// 				Ipv6: &cloudflare.ZeroTrustAccessInfrastructureTargetIpIpv6Args{
/// 					IpAddr:           pulumi.String("64c0:64e8:f0b4:8dbf:7104:72b0:ec8f:f5e0"),
/// 					VirtualNetworkId: pulumi.String("c77b744e-acc8-428f-9257-6878c046ed55"),
/// 				},
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
/// pulumi {
///   required_providers {
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_zerotrustaccessinfrastructuretarget" "example_zero_trust_access_infrastructure_target" {
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   hostname   = "infra-access-target"
///   ip = {
///     ipv4 = {
///       ip_addr            = "187.26.29.249"
///       virtual_network_id = "c77b744e-acc8-428f-9257-6878c046ed55"
///     }
///     ipv6 = {
///       ip_addr            = "64c0:64e8:f0b4:8dbf:7104:72b0:ec8f:f5e0"
///       virtual_network_id = "c77b744e-acc8-428f-9257-6878c046ed55"
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustAccessInfrastructureTarget;
/// import com.pulumi.cloudflare.ZeroTrustAccessInfrastructureTargetArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustAccessInfrastructureTargetIpArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustAccessInfrastructureTargetIpIpv4Args;
/// import com.pulumi.cloudflare.inputs.ZeroTrustAccessInfrastructureTargetIpIpv6Args;
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
///         var exampleZeroTrustAccessInfrastructureTarget = new ZeroTrustAccessInfrastructureTarget("exampleZeroTrustAccessInfrastructureTarget", ZeroTrustAccessInfrastructureTargetArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .hostname("infra-access-target")
///             .ip(ZeroTrustAccessInfrastructureTargetIpArgs.builder()
///                 .ipv4(ZeroTrustAccessInfrastructureTargetIpIpv4Args.builder()
///                     .ipAddr("187.26.29.249")
///                     .virtualNetworkId("c77b744e-acc8-428f-9257-6878c046ed55")
///                     .build())
///                 .ipv6(ZeroTrustAccessInfrastructureTargetIpIpv6Args.builder()
///                     .ipAddr("64c0:64e8:f0b4:8dbf:7104:72b0:ec8f:f5e0")
///                     .virtualNetworkId("c77b744e-acc8-428f-9257-6878c046ed55")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustAccessInfrastructureTarget:
///     type: cloudflare:ZeroTrustAccessInfrastructureTarget
///     name: example_zero_trust_access_infrastructure_target
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       hostname: infra-access-target
///       ip:
///         ipv4:
///           ipAddr: 187.26.29.249
///           virtualNetworkId: c77b744e-acc8-428f-9257-6878c046ed55
///         ipv6:
///           ipAddr: 64c0:64e8:f0b4:8dbf:7104:72b0:ec8f:f5e0
///           virtualNetworkId: c77b744e-acc8-428f-9257-6878c046ed55
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustAccessInfrastructureTarget:ZeroTrustAccessInfrastructureTarget example '<account_id>/<target_id>'
/// ```
class ZeroTrustAccessInfrastructureTarget extends pulumi.CustomResource {
  /// Account identifier
  late final pulumi.Output<String> accountId;
  /// Date and time at which the target was created
  late final pulumi.Output<String> createdAt;
  /// A non-unique field that refers to a target. Case insensitive, maximum
  /// length of 255 characters, supports the use of special characters dash
  /// and period, does not support spaces, and must start and end with an
  /// alphanumeric character.
  late final pulumi.Output<String> hostname;
  /// The IPv4/IPv6 address that identifies where to reach a target
  late final pulumi.Output<ZeroTrustAccessInfrastructureTargetIp> ip;
  /// Date and time at which the target was modified
  late final pulumi.Output<String> modifiedAt;

  /// Creates a new [ZeroTrustAccessInfrastructureTarget].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustAccessInfrastructureTarget]. {@macro pulumi_index_zero_trust_access_infrastructure_target_zero_trust_access_infrastructure_target_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustAccessInfrastructureTarget(
    String name, {
    ZeroTrustAccessInfrastructureTargetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustAccessInfrastructureTarget:ZeroTrustAccessInfrastructureTarget',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    hostname = registerOutput<String>('hostname');
    ip = registerOutput<ZeroTrustAccessInfrastructureTargetIp>('ip', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustAccessInfrastructureTargetIp.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modifiedAt = registerOutput<String>('modifiedAt');
  }

  /// Gets an existing [ZeroTrustAccessInfrastructureTarget] resource's state with the given [name] and [id].
  static ZeroTrustAccessInfrastructureTarget get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustAccessInfrastructureTargetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustAccessInfrastructureTarget._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustAccessInfrastructureTarget._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustAccessInfrastructureTarget:ZeroTrustAccessInfrastructureTarget',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    hostname = registerOutput<String>('hostname');
    ip = registerOutput<ZeroTrustAccessInfrastructureTargetIp>('ip', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustAccessInfrastructureTargetIp.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modifiedAt = registerOutput<String>('modifiedAt');
  }

  /// Creates a typed reference to an existing [ZeroTrustAccessInfrastructureTarget] resource.
  ZeroTrustAccessInfrastructureTarget.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustAccessInfrastructureTarget:ZeroTrustAccessInfrastructureTarget',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    hostname = registerOutput<String>('hostname');
    ip = registerOutput<ZeroTrustAccessInfrastructureTargetIp>('ip', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustAccessInfrastructureTargetIp.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modifiedAt = registerOutput<String>('modifiedAt');
  }
}
