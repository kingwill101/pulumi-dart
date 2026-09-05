import 'package:pulumi/pulumi.dart' as pulumi;
import 'tunnel_virtual_network_args.dart';
import 'tunnel_virtual_network_state.dart';

/// Accepted Permissions
///
/// - `Cloudflare One Networks Write`
/// - `Cloudflare Tunnel Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustTunnelCloudflaredVirtualNetwork = new cloudflare.ZeroTrustTunnelCloudflaredVirtualNetwork("example_zero_trust_tunnel_cloudflared_virtual_network", {
///     accountId: "699d98642c564d2e855e9661899b7252",
///     name: "us-east-1-vpc",
///     comment: "Staging VPC for data science",
///     isDefault: true,
///     isDefaultNetwork: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_tunnel_cloudflared_virtual_network = cloudflare.ZeroTrustTunnelCloudflaredVirtualNetwork("example_zero_trust_tunnel_cloudflared_virtual_network",
///     account_id="699d98642c564d2e855e9661899b7252",
///     name="us-east-1-vpc",
///     comment="Staging VPC for data science",
///     is_default=True,
///     is_default_network=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustTunnelCloudflaredVirtualNetwork = new Cloudflare.ZeroTrustTunnelCloudflaredVirtualNetwork("example_zero_trust_tunnel_cloudflared_virtual_network", new()
///     {
///         AccountId = "699d98642c564d2e855e9661899b7252",
///         Name = "us-east-1-vpc",
///         Comment = "Staging VPC for data science",
///         IsDefault = true,
///         IsDefaultNetwork = false,
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
/// 		_, err := cloudflare.NewZeroTrustTunnelCloudflaredVirtualNetwork(ctx, "example_zero_trust_tunnel_cloudflared_virtual_network", &cloudflare.ZeroTrustTunnelCloudflaredVirtualNetworkArgs{
/// 			AccountId:        pulumi.String("699d98642c564d2e855e9661899b7252"),
/// 			Name:             pulumi.String("us-east-1-vpc"),
/// 			Comment:          pulumi.String("Staging VPC for data science"),
/// 			IsDefault:        pulumi.Bool(true),
/// 			IsDefaultNetwork: pulumi.Bool(false),
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
/// resource "cloudflare_zerotrusttunnelcloudflaredvirtualnetwork" "example_zero_trust_tunnel_cloudflared_virtual_network" {
///   account_id         = "699d98642c564d2e855e9661899b7252"
///   name               = "us-east-1-vpc"
///   comment            = "Staging VPC for data science"
///   is_default         = true
///   is_default_network = false
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustTunnelCloudflaredVirtualNetwork;
/// import com.pulumi.cloudflare.ZeroTrustTunnelCloudflaredVirtualNetworkArgs;
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
///         var exampleZeroTrustTunnelCloudflaredVirtualNetwork = new ZeroTrustTunnelCloudflaredVirtualNetwork("exampleZeroTrustTunnelCloudflaredVirtualNetwork", ZeroTrustTunnelCloudflaredVirtualNetworkArgs.builder()
///             .accountId("699d98642c564d2e855e9661899b7252")
///             .name("us-east-1-vpc")
///             .comment("Staging VPC for data science")
///             .isDefault(true)
///             .isDefaultNetwork(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustTunnelCloudflaredVirtualNetwork:
///     type: cloudflare:ZeroTrustTunnelCloudflaredVirtualNetwork
///     name: example_zero_trust_tunnel_cloudflared_virtual_network
///     properties:
///       accountId: 699d98642c564d2e855e9661899b7252
///       name: us-east-1-vpc
///       comment: Staging VPC for data science
///       isDefault: true
///       isDefaultNetwork: false
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/tunnelVirtualNetwork:TunnelVirtualNetwork example '<account_id>/<virtual_network_id>'
/// ```
class TunnelVirtualNetwork extends pulumi.CustomResource {
  /// Cloudflare account ID
  late final pulumi.Output<String> accountId;
  /// Optional remark describing the virtual network.
  late final pulumi.Output<String> comment;
  /// Timestamp of when the resource was created.
  late final pulumi.Output<String> createdAt;
  /// Timestamp of when the resource was deleted. If `null`, the resource has not been deleted.
  late final pulumi.Output<String> deletedAt;
  /// If `true`, this virtual network is the default for the account.
  late final pulumi.Output<bool?> isDefault;
  /// If `true`, this virtual network is the default for the account.
  late final pulumi.Output<bool> isDefaultNetwork;
  /// A user-friendly name for the virtual network.
  late final pulumi.Output<String> name;

  /// Creates a new [TunnelVirtualNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TunnelVirtualNetwork]. {@macro pulumi_index_tunnel_virtual_network_tunnel_virtual_network_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TunnelVirtualNetwork(
    String name, {
    TunnelVirtualNetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/tunnelVirtualNetwork:TunnelVirtualNetwork',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    comment = registerOutput<String>('comment');
    createdAt = registerOutput<String>('createdAt');
    deletedAt = registerOutput<String>('deletedAt');
    isDefault = registerOutput<bool?>('isDefault');
    isDefaultNetwork = registerOutput<bool>('isDefaultNetwork');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [TunnelVirtualNetwork] resource's state with the given [name] and [id].
  static TunnelVirtualNetwork get(
    String name,
    pulumi.Input<String> id, {
    TunnelVirtualNetworkState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TunnelVirtualNetwork._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  TunnelVirtualNetwork._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/tunnelVirtualNetwork:TunnelVirtualNetwork',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    comment = registerOutput<String>('comment');
    createdAt = registerOutput<String>('createdAt');
    deletedAt = registerOutput<String>('deletedAt');
    isDefault = registerOutput<bool?>('isDefault');
    isDefaultNetwork = registerOutput<bool>('isDefaultNetwork');
    this.name = registerOutput<String>('name');
  }

  /// Creates a typed reference to an existing [TunnelVirtualNetwork] resource.
  TunnelVirtualNetwork.reference(String urn)
    : super(
        'cloudflare:index/tunnelVirtualNetwork:TunnelVirtualNetwork',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    comment = registerOutput<String>('comment');
    createdAt = registerOutput<String>('createdAt');
    deletedAt = registerOutput<String>('deletedAt');
    isDefault = registerOutput<bool?>('isDefault');
    isDefaultNetwork = registerOutput<bool>('isDefaultNetwork');
    this.name = registerOutput<String>('name');
  }
}
