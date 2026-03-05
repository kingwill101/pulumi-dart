import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_allocation_args.dart';
import 'sub_resource_response.dart';

/// IpAllocation resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create IpAllocation
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ipAllocation = new AzureNative.Network.IpAllocation("ipAllocation", new()
///     {
///         AllocationTags =
///         {
///             { "VNetID", "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/HypernetVnet1" },
///         },
///         IpAllocationName = "test-ipallocation",
///         Location = "centraluseuap",
///         Prefix = "3.2.5.0/24",
///         ResourceGroupName = "rg1",
///         Type = AzureNative.Network.IpAllocationType.Hypernet,
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
/// 		_, err := network.NewIpAllocation(ctx, "ipAllocation", &network.IpAllocationArgs{
/// 			AllocationTags: pulumi.StringMap{
/// 				"VNetID": pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/HypernetVnet1"),
/// 			},
/// 			IpAllocationName:  pulumi.String("test-ipallocation"),
/// 			Location:          pulumi.String("centraluseuap"),
/// 			Prefix:            pulumi.String("3.2.5.0/24"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Type:              pulumi.String(network.IpAllocationTypeHypernet),
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
/// import com.pulumi.azurenative.network.IpAllocation;
/// import com.pulumi.azurenative.network.IpAllocationArgs;
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
///         var ipAllocation = new IpAllocation("ipAllocation", IpAllocationArgs.builder()
///             .allocationTags(Map.of("VNetID", "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/HypernetVnet1"))
///             .ipAllocationName("test-ipallocation")
///             .location("centraluseuap")
///             .prefix("3.2.5.0/24")
///             .resourceGroupName("rg1")
///             .type("Hypernet")
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
/// const ipAllocation = new azure_native.network.IpAllocation("ipAllocation", {
///     allocationTags: {
///         VNetID: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/HypernetVnet1",
///     },
///     ipAllocationName: "test-ipallocation",
///     location: "centraluseuap",
///     prefix: "3.2.5.0/24",
///     resourceGroupName: "rg1",
///     type: azure_native.network.IpAllocationType.Hypernet,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ip_allocation = azure_native.network.IpAllocation("ipAllocation",
///     allocation_tags={
///         "VNetID": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/HypernetVnet1",
///     },
///     ip_allocation_name="test-ipallocation",
///     location="centraluseuap",
///     prefix="3.2.5.0/24",
///     resource_group_name="rg1",
///     type=azure_native.network.IpAllocationType.HYPERNET)
///
/// ```
///
/// ```yaml
/// resources:
///   ipAllocation:
///     type: azure-native:network:IpAllocation
///     properties:
///       allocationTags:
///         VNetID: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/HypernetVnet1
///       ipAllocationName: test-ipallocation
///       location: centraluseuap
///       prefix: 3.2.5.0/24
///       resourceGroupName: rg1
///       type: Hypernet
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
/// $ pulumi import azure-native:network:IpAllocation test-ipallocation /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/IpAllocations/{ipAllocationName}
/// ```
class IpAllocation extends pulumi.CustomResource {
  /// IpAllocation tags.
  late final pulumi.Output<Map<String, String>?> allocationTags;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// The IPAM allocation ID.
  late final pulumi.Output<String?> ipamAllocationId;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The address prefix for the IpAllocation.
  late final pulumi.Output<String?> prefix;
  /// The address prefix length for the IpAllocation.
  late final pulumi.Output<int?> prefixLength;
  /// The address prefix Type for the IpAllocation.
  late final pulumi.Output<String?> prefixType;
  /// The Subnet that using the prefix of this IpAllocation resource.
  late final pulumi.Output<SubResourceResponse> subnet;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;
  /// The VirtualNetwork that using the prefix of this IpAllocation resource.
  late final pulumi.Output<SubResourceResponse> virtualNetwork;

  /// Creates a new [IpAllocation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IpAllocation]. {@macro pulumi_network_ip_allocation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IpAllocation(
    String name, {
    IpAllocationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:IpAllocation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allocationTags = registerOutput<Map<String, String>?>('allocationTags');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    ipamAllocationId = registerOutput<String?>('ipamAllocationId');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    prefix = registerOutput<String?>('prefix');
    prefixLength = registerOutput<int?>('prefixLength');
    prefixType = registerOutput<String?>('prefixType');
    subnet = registerOutput<SubResourceResponse>('subnet', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    virtualNetwork = registerOutput<SubResourceResponse>('virtualNetwork', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
