import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'nat_gateway_response.dart';
import 'public_ipprefix_args.dart';
import 'public_ipprefix_sku_response.dart';
import 'sub_resource_response.dart';

/// Public IP prefix resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create public IP prefix allocation method
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var publicIPPrefix = new AzureNative.Network.PublicIPPrefix("publicIPPrefix", new()
///     {
///         Location = "westus",
///         PrefixLength = 30,
///         PublicIPAddressVersion = AzureNative.Network.IPVersion.IPv4,
///         PublicIpPrefixName = "test-ipprefix",
///         ResourceGroupName = "rg1",
///         Sku = new AzureNative.Network.Inputs.PublicIPPrefixSkuArgs
///         {
///             Name = AzureNative.Network.PublicIPPrefixSkuName.Standard,
///             Tier = AzureNative.Network.PublicIPPrefixSkuTier.Regional,
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewPublicIPPrefix(ctx, "publicIPPrefix", &network.PublicIPPrefixArgs{
/// 			Location:               pulumi.String("westus"),
/// 			PrefixLength:           pulumi.Int(30),
/// 			PublicIPAddressVersion: pulumi.String(network.IPVersionIPv4),
/// 			PublicIpPrefixName:     pulumi.String("test-ipprefix"),
/// 			ResourceGroupName:      pulumi.String("rg1"),
/// 			Sku: &network.PublicIPPrefixSkuArgs{
/// 				Name: pulumi.String(network.PublicIPPrefixSkuNameStandard),
/// 				Tier: pulumi.String(network.PublicIPPrefixSkuTierRegional),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.network.PublicIPPrefix;
/// import com.pulumi.azurenative.network.PublicIPPrefixArgs;
/// import com.pulumi.azurenative.network.inputs.PublicIPPrefixSkuArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var publicIPPrefix = new PublicIPPrefix("publicIPPrefix", PublicIPPrefixArgs.builder()
///             .location("westus")
///             .prefixLength(30)
///             .publicIPAddressVersion("IPv4")
///             .publicIpPrefixName("test-ipprefix")
///             .resourceGroupName("rg1")
///             .sku(PublicIPPrefixSkuArgs.builder()
///                 .name("Standard")
///                 .tier("Regional")
///                 .build())
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const publicIPPrefix = new azure_native.network.PublicIPPrefix("publicIPPrefix", {
///     location: "westus",
///     prefixLength: 30,
///     publicIPAddressVersion: azure_native.network.IPVersion.IPv4,
///     publicIpPrefixName: "test-ipprefix",
///     resourceGroupName: "rg1",
///     sku: {
///         name: azure_native.network.PublicIPPrefixSkuName.Standard,
///         tier: azure_native.network.PublicIPPrefixSkuTier.Regional,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// public_ip_prefix = azure_native.network.PublicIPPrefix("publicIPPrefix",
///     location="westus",
///     prefix_length=30,
///     public_ip_address_version=azure_native.network.IPVersion.I_PV4,
///     public_ip_prefix_name="test-ipprefix",
///     resource_group_name="rg1",
///     sku={
///         "name": azure_native.network.PublicIPPrefixSkuName.STANDARD,
///         "tier": azure_native.network.PublicIPPrefixSkuTier.REGIONAL,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   publicIPPrefix:
///     type: azure-native:network:PublicIPPrefix
///     properties:
///       location: westus
///       prefixLength: 30
///       publicIPAddressVersion: IPv4
///       publicIpPrefixName: test-ipprefix
///       resourceGroupName: rg1
///       sku:
///         name: Standard
///         tier: Regional
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create public IP prefix defaults
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var publicIPPrefix = new AzureNative.Network.PublicIPPrefix("publicIPPrefix", new()
///     {
///         Location = "westus",
///         PrefixLength = 30,
///         PublicIpPrefixName = "test-ipprefix",
///         ResourceGroupName = "rg1",
///         Sku = new AzureNative.Network.Inputs.PublicIPPrefixSkuArgs
///         {
///             Name = AzureNative.Network.PublicIPPrefixSkuName.Standard,
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewPublicIPPrefix(ctx, "publicIPPrefix", &network.PublicIPPrefixArgs{
/// 			Location:           pulumi.String("westus"),
/// 			PrefixLength:       pulumi.Int(30),
/// 			PublicIpPrefixName: pulumi.String("test-ipprefix"),
/// 			ResourceGroupName:  pulumi.String("rg1"),
/// 			Sku: &network.PublicIPPrefixSkuArgs{
/// 				Name: pulumi.String(network.PublicIPPrefixSkuNameStandard),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.network.PublicIPPrefix;
/// import com.pulumi.azurenative.network.PublicIPPrefixArgs;
/// import com.pulumi.azurenative.network.inputs.PublicIPPrefixSkuArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var publicIPPrefix = new PublicIPPrefix("publicIPPrefix", PublicIPPrefixArgs.builder()
///             .location("westus")
///             .prefixLength(30)
///             .publicIpPrefixName("test-ipprefix")
///             .resourceGroupName("rg1")
///             .sku(PublicIPPrefixSkuArgs.builder()
///                 .name("Standard")
///                 .build())
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const publicIPPrefix = new azure_native.network.PublicIPPrefix("publicIPPrefix", {
///     location: "westus",
///     prefixLength: 30,
///     publicIpPrefixName: "test-ipprefix",
///     resourceGroupName: "rg1",
///     sku: {
///         name: azure_native.network.PublicIPPrefixSkuName.Standard,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// public_ip_prefix = azure_native.network.PublicIPPrefix("publicIPPrefix",
///     location="westus",
///     prefix_length=30,
///     public_ip_prefix_name="test-ipprefix",
///     resource_group_name="rg1",
///     sku={
///         "name": azure_native.network.PublicIPPrefixSkuName.STANDARD,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   publicIPPrefix:
///     type: azure-native:network:PublicIPPrefix
///     properties:
///       location: westus
///       prefixLength: 30
///       publicIpPrefixName: test-ipprefix
///       resourceGroupName: rg1
///       sku:
///         name: Standard
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:network:PublicIPPrefix test-ipprefix /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/publicIPPrefixes/{publicIpPrefixName}
/// ```
class PublicIPPrefix extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The customIpPrefix that this prefix is associated with.
  late final pulumi.Output<SubResourceResponse?> customIPPrefix;

  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;

  /// The extended location of the public ip address.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;

  /// The allocated Prefix.
  late final pulumi.Output<String> ipPrefix;

  /// The list of tags associated with the public IP prefix.
  late final pulumi.Output<List<Map<String, dynamic>>?> ipTags;

  /// The reference to load balancer frontend IP configuration associated with the public IP prefix.
  late final pulumi.Output<SubResourceResponse>
  loadBalancerFrontendIpConfiguration;

  /// Resource location.
  late final pulumi.Output<String?> location;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// NatGateway of Public IP Prefix.
  late final pulumi.Output<NatGatewayResponse?> natGateway;

  /// The Length of the Public IP Prefix.
  late final pulumi.Output<int?> prefixLength;

  /// The provisioning state of the public IP prefix resource.
  late final pulumi.Output<String> provisioningState;

  /// The public IP address version.
  late final pulumi.Output<String?> publicIPAddressVersion;

  /// The list of all referenced PublicIPAddresses.
  late final pulumi.Output<List<Map<String, dynamic>>> publicIPAddresses;

  /// The resource GUID property of the public IP prefix resource.
  late final pulumi.Output<String> resourceGuid;

  /// The public IP prefix SKU.
  late final pulumi.Output<PublicIPPrefixSkuResponse?> sku;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// A list of availability zones denoting the IP allocated for the resource needs to come from.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [PublicIPPrefix].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PublicIPPrefix]. {@macro pulumi_network_public_ipprefix_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PublicIPPrefix(
    String name, {
    PublicIPPrefixArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:network:PublicIPPrefix',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    customIPPrefix = registerOutput<SubResourceResponse?>(
      'customIPPrefix',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SubResourceResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    etag = registerOutput<String>('etag');
    extendedLocation = registerOutput<ExtendedLocationResponse?>(
      'extendedLocation',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ExtendedLocationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    ipPrefix = registerOutput<String>('ipPrefix');
    ipTags = registerOutput<List<Map<String, dynamic>>?>('ipTags');
    loadBalancerFrontendIpConfiguration = registerOutput<SubResourceResponse>(
      'loadBalancerFrontendIpConfiguration',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SubResourceResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    natGateway = registerOutput<NatGatewayResponse?>(
      'natGateway',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return NatGatewayResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    prefixLength = registerOutput<int?>('prefixLength');
    provisioningState = registerOutput<String>('provisioningState');
    publicIPAddressVersion = registerOutput<String?>('publicIPAddressVersion');
    publicIPAddresses = registerOutput<List<Map<String, dynamic>>>(
      'publicIPAddresses',
    );
    resourceGuid = registerOutput<String>('resourceGuid');
    sku = registerOutput<PublicIPPrefixSkuResponse?>(
      'sku',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return PublicIPPrefixSkuResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    zones = registerOutput<List<String>?>('zones');
  }
}
