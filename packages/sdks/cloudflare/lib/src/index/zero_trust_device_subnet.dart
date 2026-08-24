import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_device_subnet_args.dart';
import 'zero_trust_device_subnet_capacity.dart';
import 'zero_trust_device_subnet_state.dart';

/// Accepted Permissions
///
/// - `Cloudflare One Networks Read`
/// - `Cloudflare One Networks Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustDeviceSubnet = new cloudflare.ZeroTrustDeviceSubnet("example_zero_trust_device_subnet", {
///     accountId: "699d98642c564d2e855e9661899b7252",
///     name: "IPv4 Cloudflare Source IPs",
///     network: "100.64.0.0/12",
///     comment: "example comment",
///     isDefaultNetwork: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_device_subnet = cloudflare.ZeroTrustDeviceSubnet("example_zero_trust_device_subnet",
///     account_id="699d98642c564d2e855e9661899b7252",
///     name="IPv4 Cloudflare Source IPs",
///     network="100.64.0.0/12",
///     comment="example comment",
///     is_default_network=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustDeviceSubnet = new Cloudflare.ZeroTrustDeviceSubnet("example_zero_trust_device_subnet", new()
///     {
///         AccountId = "699d98642c564d2e855e9661899b7252",
///         Name = "IPv4 Cloudflare Source IPs",
///         Network = "100.64.0.0/12",
///         Comment = "example comment",
///         IsDefaultNetwork = true,
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
/// 		_, err := cloudflare.NewZeroTrustDeviceSubnet(ctx, "example_zero_trust_device_subnet", &cloudflare.ZeroTrustDeviceSubnetArgs{
/// 			AccountId:        pulumi.String("699d98642c564d2e855e9661899b7252"),
/// 			Name:             pulumi.String("IPv4 Cloudflare Source IPs"),
/// 			Network:          pulumi.String("100.64.0.0/12"),
/// 			Comment:          pulumi.String("example comment"),
/// 			IsDefaultNetwork: pulumi.Bool(true),
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
/// resource "cloudflare_zerotrustdevicesubnet" "example_zero_trust_device_subnet" {
///   account_id         = "699d98642c564d2e855e9661899b7252"
///   name               = "IPv4 Cloudflare Source IPs"
///   network            = "100.64.0.0/12"
///   comment            = "example comment"
///   is_default_network = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustDeviceSubnet;
/// import com.pulumi.cloudflare.ZeroTrustDeviceSubnetArgs;
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
///         var exampleZeroTrustDeviceSubnet = new ZeroTrustDeviceSubnet("exampleZeroTrustDeviceSubnet", ZeroTrustDeviceSubnetArgs.builder()
///             .accountId("699d98642c564d2e855e9661899b7252")
///             .name("IPv4 Cloudflare Source IPs")
///             .network("100.64.0.0/12")
///             .comment("example comment")
///             .isDefaultNetwork(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustDeviceSubnet:
///     type: cloudflare:ZeroTrustDeviceSubnet
///     name: example_zero_trust_device_subnet
///     properties:
///       accountId: 699d98642c564d2e855e9661899b7252
///       name: IPv4 Cloudflare Source IPs
///       network: 100.64.0.0/12
///       comment: example comment
///       isDefaultNetwork: true
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustDeviceSubnet:ZeroTrustDeviceSubnet example '<account_id>/<subnet_id>'
/// ```
class ZeroTrustDeviceSubnet extends pulumi.CustomResource {
  /// Cloudflare account ID
  late final pulumi.Output<String> accountId;
  /// IP capacity information for the subnet.
  late final pulumi.Output<ZeroTrustDeviceSubnetCapacity> capacity;
  /// An optional description of the subnet.
  late final pulumi.Output<String> comment;
  /// Timestamp of when the resource was created.
  late final pulumi.Output<String> createdAt;
  /// Timestamp of when the resource was deleted. If `null`, the resource has not been deleted.
  late final pulumi.Output<String> deletedAt;
  /// If `true`, this is the default subnet for the account. There can only be one default subnet per account.
  late final pulumi.Output<bool> isDefaultNetwork;
  /// A user-friendly name for the subnet.
  late final pulumi.Output<String> name;
  /// The private IPv4 or IPv6 range defining the subnet, in CIDR notation.
  late final pulumi.Output<String> network;
  /// The type of subnet.
  /// Available values: "cloudflare*source", "initial*resolved_ip", "warp".
  late final pulumi.Output<String> subnetType;

  /// Creates a new [ZeroTrustDeviceSubnet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustDeviceSubnet]. {@macro pulumi_index_zero_trust_device_subnet_zero_trust_device_subnet_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustDeviceSubnet(
    String name, {
    ZeroTrustDeviceSubnetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDeviceSubnet:ZeroTrustDeviceSubnet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    capacity = registerOutput<ZeroTrustDeviceSubnetCapacity>('capacity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDeviceSubnetCapacity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    comment = registerOutput<String>('comment');
    createdAt = registerOutput<String>('createdAt');
    deletedAt = registerOutput<String>('deletedAt');
    isDefaultNetwork = registerOutput<bool>('isDefaultNetwork');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    subnetType = registerOutput<String>('subnetType');
  }

  /// Gets an existing [ZeroTrustDeviceSubnet] resource's state with the given [name] and [id].
  static ZeroTrustDeviceSubnet get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustDeviceSubnetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustDeviceSubnet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustDeviceSubnet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDeviceSubnet:ZeroTrustDeviceSubnet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    capacity = registerOutput<ZeroTrustDeviceSubnetCapacity>('capacity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDeviceSubnetCapacity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    comment = registerOutput<String>('comment');
    createdAt = registerOutput<String>('createdAt');
    deletedAt = registerOutput<String>('deletedAt');
    isDefaultNetwork = registerOutput<bool>('isDefaultNetwork');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    subnetType = registerOutput<String>('subnetType');
  }

  /// Creates a typed reference to an existing [ZeroTrustDeviceSubnet] resource.
  ZeroTrustDeviceSubnet.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustDeviceSubnet:ZeroTrustDeviceSubnet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    capacity = registerOutput<ZeroTrustDeviceSubnetCapacity>('capacity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDeviceSubnetCapacity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    comment = registerOutput<String>('comment');
    createdAt = registerOutput<String>('createdAt');
    deletedAt = registerOutput<String>('deletedAt');
    isDefaultNetwork = registerOutput<bool>('isDefaultNetwork');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    subnetType = registerOutput<String>('subnetType');
  }
}
