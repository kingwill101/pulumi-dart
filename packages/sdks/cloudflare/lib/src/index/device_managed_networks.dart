import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_managed_networks_args.dart';
import 'device_managed_networks_config.dart';
import 'device_managed_networks_state.dart';

/// Accepted Permissions
///
/// - `Zero Trust Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustDeviceManagedNetworks = new cloudflare.ZeroTrustDeviceManagedNetworks("example_zero_trust_device_managed_networks", {
///     accountId: "699d98642c564d2e855e9661899b7252",
///     config: {
///         tlsSockaddr: "foo.bar:1234",
///         sha256: "b5bb9d8014a0f9b1d61e21e796d78dccdf1352f23cd32812f4850b878ae4944c",
///     },
///     name: "managed-network-1",
///     type: "tls",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_device_managed_networks = cloudflare.ZeroTrustDeviceManagedNetworks("example_zero_trust_device_managed_networks",
///     account_id="699d98642c564d2e855e9661899b7252",
///     config={
///         "tls_sockaddr": "foo.bar:1234",
///         "sha256": "b5bb9d8014a0f9b1d61e21e796d78dccdf1352f23cd32812f4850b878ae4944c",
///     },
///     name="managed-network-1",
///     type="tls")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustDeviceManagedNetworks = new Cloudflare.ZeroTrustDeviceManagedNetworks("example_zero_trust_device_managed_networks", new()
///     {
///         AccountId = "699d98642c564d2e855e9661899b7252",
///         Config = new Cloudflare.Inputs.ZeroTrustDeviceManagedNetworksConfigArgs
///         {
///             TlsSockaddr = "foo.bar:1234",
///             Sha256 = "b5bb9d8014a0f9b1d61e21e796d78dccdf1352f23cd32812f4850b878ae4944c",
///         },
///         Name = "managed-network-1",
///         Type = "tls",
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
/// 		_, err := cloudflare.NewZeroTrustDeviceManagedNetworks(ctx, "example_zero_trust_device_managed_networks", &cloudflare.ZeroTrustDeviceManagedNetworksArgs{
/// 			AccountId: pulumi.String("699d98642c564d2e855e9661899b7252"),
/// 			Config: &cloudflare.ZeroTrustDeviceManagedNetworksConfigArgs{
/// 				TlsSockaddr: pulumi.String("foo.bar:1234"),
/// 				Sha256:      pulumi.String("b5bb9d8014a0f9b1d61e21e796d78dccdf1352f23cd32812f4850b878ae4944c"),
/// 			},
/// 			Name: pulumi.String("managed-network-1"),
/// 			Type: pulumi.String("tls"),
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
/// resource "cloudflare_zerotrustdevicemanagednetworks" "example_zero_trust_device_managed_networks" {
///   account_id = "699d98642c564d2e855e9661899b7252"
///   config = {
///     tls_sockaddr = "foo.bar:1234"
///     sha256       = "b5bb9d8014a0f9b1d61e21e796d78dccdf1352f23cd32812f4850b878ae4944c"
///   }
///   name = "managed-network-1"
///   type = "tls"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustDeviceManagedNetworks;
/// import com.pulumi.cloudflare.ZeroTrustDeviceManagedNetworksArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustDeviceManagedNetworksConfigArgs;
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
///         var exampleZeroTrustDeviceManagedNetworks = new ZeroTrustDeviceManagedNetworks("exampleZeroTrustDeviceManagedNetworks", ZeroTrustDeviceManagedNetworksArgs.builder()
///             .accountId("699d98642c564d2e855e9661899b7252")
///             .config(ZeroTrustDeviceManagedNetworksConfigArgs.builder()
///                 .tlsSockaddr("foo.bar:1234")
///                 .sha256("b5bb9d8014a0f9b1d61e21e796d78dccdf1352f23cd32812f4850b878ae4944c")
///                 .build())
///             .name("managed-network-1")
///             .type("tls")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustDeviceManagedNetworks:
///     type: cloudflare:ZeroTrustDeviceManagedNetworks
///     name: example_zero_trust_device_managed_networks
///     properties:
///       accountId: 699d98642c564d2e855e9661899b7252
///       config:
///         tlsSockaddr: foo.bar:1234
///         sha256: b5bb9d8014a0f9b1d61e21e796d78dccdf1352f23cd32812f4850b878ae4944c
///       name: managed-network-1
///       type: tls
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/deviceManagedNetworks:DeviceManagedNetworks example '<account_id>/<network_id>'
/// ```
class DeviceManagedNetworks extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  /// The configuration object containing information for the WARP client to detect the managed network.
  late final pulumi.Output<DeviceManagedNetworksConfig> config;
  /// The name of the device managed network. This name must be unique.
  late final pulumi.Output<String> name;
  /// API UUID.
  late final pulumi.Output<String> networkId;
  /// The type of device managed network.
  /// Available values: "tls".
  late final pulumi.Output<String> type;

  /// Creates a new [DeviceManagedNetworks].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeviceManagedNetworks]. {@macro pulumi_index_device_managed_networks_device_managed_networks_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeviceManagedNetworks(
    String name, {
    DeviceManagedNetworksArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/deviceManagedNetworks:DeviceManagedNetworks',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    config = registerOutput<DeviceManagedNetworksConfig>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeviceManagedNetworksConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkId = registerOutput<String>('networkId');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [DeviceManagedNetworks] resource's state with the given [name] and [id].
  static DeviceManagedNetworks get(
    String name,
    pulumi.Input<String> id, {
    DeviceManagedNetworksState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DeviceManagedNetworks._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DeviceManagedNetworks._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/deviceManagedNetworks:DeviceManagedNetworks',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    config = registerOutput<DeviceManagedNetworksConfig>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeviceManagedNetworksConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkId = registerOutput<String>('networkId');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [DeviceManagedNetworks] resource.
  DeviceManagedNetworks.reference(String urn)
    : super(
        'cloudflare:index/deviceManagedNetworks:DeviceManagedNetworks',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    config = registerOutput<DeviceManagedNetworksConfig>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeviceManagedNetworksConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkId = registerOutput<String>('networkId');
    type = registerOutput<String>('type');
  }
}
