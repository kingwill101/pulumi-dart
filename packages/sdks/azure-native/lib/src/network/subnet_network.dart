import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_security_group_response.dart';
import 'route_table_response.dart';
import 'sub_resource_response.dart';
import 'subnet_args.dart';

/// Subnet in a virtual network resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create subnet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var subnet = new AzureNative.Network.Subnet("subnet", new()
///     {
///         AddressPrefix = "10.0.0.0/16",
///         ResourceGroupName = "subnet-test",
///         SubnetName = "subnet1",
///         VirtualNetworkName = "vnetname",
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
/// 		_, err := network.NewSubnet(ctx, "subnet", &network.SubnetArgs{
/// 			AddressPrefix:      pulumi.String("10.0.0.0/16"),
/// 			ResourceGroupName:  pulumi.String("subnet-test"),
/// 			SubnetName:         pulumi.String("subnet1"),
/// 			VirtualNetworkName: pulumi.String("vnetname"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_network_subnet" "subnet" {
///   address_prefix       = "10.0.0.0/16"
///   resource_group_name  = "subnet-test"
///   subnet_name          = "subnet1"
///   virtual_network_name = "vnetname"
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
/// import com.pulumi.azurenative.network.Subnet;
/// import com.pulumi.azurenative.network.SubnetArgs;
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
///         var subnet = new Subnet("subnet", SubnetArgs.builder()
///             .addressPrefix("10.0.0.0/16")
///             .resourceGroupName("subnet-test")
///             .subnetName("subnet1")
///             .virtualNetworkName("vnetname")
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
/// const subnet = new azure_native.network.Subnet("subnet", {
///     addressPrefix: "10.0.0.0/16",
///     resourceGroupName: "subnet-test",
///     subnetName: "subnet1",
///     virtualNetworkName: "vnetname",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// subnet = azure_native.network.Subnet("subnet",
///     address_prefix="10.0.0.0/16",
///     resource_group_name="subnet-test",
///     subnet_name="subnet1",
///     virtual_network_name="vnetname")
///
/// ```
///
/// ```yaml
/// resources:
///   subnet:
///     type: azure-native:network:Subnet
///     properties:
///       addressPrefix: 10.0.0.0/16
///       resourceGroupName: subnet-test
///       subnetName: subnet1
///       virtualNetworkName: vnetname
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create subnet with a delegation
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var subnet = new AzureNative.Network.Subnet("subnet", new()
///     {
///         AddressPrefix = "10.0.0.0/16",
///         ResourceGroupName = "subnet-test",
///         SubnetName = "subnet1",
///         VirtualNetworkName = "vnetname",
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
/// 		_, err := network.NewSubnet(ctx, "subnet", &network.SubnetArgs{
/// 			AddressPrefix:      pulumi.String("10.0.0.0/16"),
/// 			ResourceGroupName:  pulumi.String("subnet-test"),
/// 			SubnetName:         pulumi.String("subnet1"),
/// 			VirtualNetworkName: pulumi.String("vnetname"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_network_subnet" "subnet" {
///   address_prefix       = "10.0.0.0/16"
///   resource_group_name  = "subnet-test"
///   subnet_name          = "subnet1"
///   virtual_network_name = "vnetname"
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
/// import com.pulumi.azurenative.network.Subnet;
/// import com.pulumi.azurenative.network.SubnetArgs;
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
///         var subnet = new Subnet("subnet", SubnetArgs.builder()
///             .addressPrefix("10.0.0.0/16")
///             .resourceGroupName("subnet-test")
///             .subnetName("subnet1")
///             .virtualNetworkName("vnetname")
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
/// const subnet = new azure_native.network.Subnet("subnet", {
///     addressPrefix: "10.0.0.0/16",
///     resourceGroupName: "subnet-test",
///     subnetName: "subnet1",
///     virtualNetworkName: "vnetname",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// subnet = azure_native.network.Subnet("subnet",
///     address_prefix="10.0.0.0/16",
///     resource_group_name="subnet-test",
///     subnet_name="subnet1",
///     virtual_network_name="vnetname")
///
/// ```
///
/// ```yaml
/// resources:
///   subnet:
///     type: azure-native:network:Subnet
///     properties:
///       addressPrefix: 10.0.0.0/16
///       resourceGroupName: subnet-test
///       subnetName: subnet1
///       virtualNetworkName: vnetname
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create subnet with service endpoints
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var subnet = new AzureNative.Network.Subnet("subnet", new()
///     {
///         AddressPrefix = "10.0.0.0/16",
///         ResourceGroupName = "subnet-test",
///         ServiceEndpoints = new[]
///         {
///             new AzureNative.Network.Inputs.ServiceEndpointPropertiesFormatArgs
///             {
///                 Service = "Microsoft.Storage",
///             },
///         },
///         SubnetName = "subnet1",
///         VirtualNetworkName = "vnetname",
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
/// 		_, err := network.NewSubnet(ctx, "subnet", &network.SubnetArgs{
/// 			AddressPrefix:     pulumi.String("10.0.0.0/16"),
/// 			ResourceGroupName: pulumi.String("subnet-test"),
/// 			ServiceEndpoints: network.ServiceEndpointPropertiesFormatArray{
/// 				&network.ServiceEndpointPropertiesFormatArgs{
/// 					Service: pulumi.String("Microsoft.Storage"),
/// 				},
/// 			},
/// 			SubnetName:         pulumi.String("subnet1"),
/// 			VirtualNetworkName: pulumi.String("vnetname"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_network_subnet" "subnet" {
///   address_prefix      = "10.0.0.0/16"
///   resource_group_name = "subnet-test"
///   service_endpoints {
///     service = "Microsoft.Storage"
///   }
///   subnet_name          = "subnet1"
///   virtual_network_name = "vnetname"
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
/// import com.pulumi.azurenative.network.Subnet;
/// import com.pulumi.azurenative.network.SubnetArgs;
/// import com.pulumi.azurenative.network.inputs.ServiceEndpointPropertiesFormatArgs;
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
///         var subnet = new Subnet("subnet", SubnetArgs.builder()
///             .addressPrefix("10.0.0.0/16")
///             .resourceGroupName("subnet-test")
///             .serviceEndpoints(ServiceEndpointPropertiesFormatArgs.builder()
///                 .service("Microsoft.Storage")
///                 .build())
///             .subnetName("subnet1")
///             .virtualNetworkName("vnetname")
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
/// const subnet = new azure_native.network.Subnet("subnet", {
///     addressPrefix: "10.0.0.0/16",
///     resourceGroupName: "subnet-test",
///     serviceEndpoints: [{
///         service: "Microsoft.Storage",
///     }],
///     subnetName: "subnet1",
///     virtualNetworkName: "vnetname",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// subnet = azure_native.network.Subnet("subnet",
///     address_prefix="10.0.0.0/16",
///     resource_group_name="subnet-test",
///     service_endpoints=[{
///         "service": "Microsoft.Storage",
///     }],
///     subnet_name="subnet1",
///     virtual_network_name="vnetname")
///
/// ```
///
/// ```yaml
/// resources:
///   subnet:
///     type: azure-native:network:Subnet
///     properties:
///       addressPrefix: 10.0.0.0/16
///       resourceGroupName: subnet-test
///       serviceEndpoints:
///         - service: Microsoft.Storage
///       subnetName: subnet1
///       virtualNetworkName: vnetname
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create subnet with service endpoints with network identifier
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var subnet = new AzureNative.Network.Subnet("subnet", new()
///     {
///         AddressPrefix = "10.0.0.0/16",
///         ResourceGroupName = "subnet-test",
///         ServiceEndpoints = new[]
///         {
///             new AzureNative.Network.Inputs.ServiceEndpointPropertiesFormatArgs
///             {
///                 NetworkIdentifier = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/subnet-test/providers/Microsoft.Network/publicIPAddresses/test-ip",
///                 },
///                 Service = "Microsoft.Storage",
///             },
///         },
///         SubnetName = "subnet1",
///         VirtualNetworkName = "vnetname",
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
/// 		_, err := network.NewSubnet(ctx, "subnet", &network.SubnetArgs{
/// 			AddressPrefix:     pulumi.String("10.0.0.0/16"),
/// 			ResourceGroupName: pulumi.String("subnet-test"),
/// 			ServiceEndpoints: network.ServiceEndpointPropertiesFormatArray{
/// 				&network.ServiceEndpointPropertiesFormatArgs{
/// 					NetworkIdentifier: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/subnet-test/providers/Microsoft.Network/publicIPAddresses/test-ip"),
/// 					},
/// 					Service: pulumi.String("Microsoft.Storage"),
/// 				},
/// 			},
/// 			SubnetName:         pulumi.String("subnet1"),
/// 			VirtualNetworkName: pulumi.String("vnetname"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_network_subnet" "subnet" {
///   address_prefix      = "10.0.0.0/16"
///   resource_group_name = "subnet-test"
///   service_endpoints {
///     network_identifier = {
///       id = "/subscriptions/subid/resourceGroups/subnet-test/providers/Microsoft.Network/publicIPAddresses/test-ip"
///     }
///     service = "Microsoft.Storage"
///   }
///   subnet_name          = "subnet1"
///   virtual_network_name = "vnetname"
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
/// import com.pulumi.azurenative.network.Subnet;
/// import com.pulumi.azurenative.network.SubnetArgs;
/// import com.pulumi.azurenative.network.inputs.ServiceEndpointPropertiesFormatArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
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
///         var subnet = new Subnet("subnet", SubnetArgs.builder()
///             .addressPrefix("10.0.0.0/16")
///             .resourceGroupName("subnet-test")
///             .serviceEndpoints(ServiceEndpointPropertiesFormatArgs.builder()
///                 .networkIdentifier(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/subnet-test/providers/Microsoft.Network/publicIPAddresses/test-ip")
///                     .build())
///                 .service("Microsoft.Storage")
///                 .build())
///             .subnetName("subnet1")
///             .virtualNetworkName("vnetname")
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
/// const subnet = new azure_native.network.Subnet("subnet", {
///     addressPrefix: "10.0.0.0/16",
///     resourceGroupName: "subnet-test",
///     serviceEndpoints: [{
///         networkIdentifier: {
///             id: "/subscriptions/subid/resourceGroups/subnet-test/providers/Microsoft.Network/publicIPAddresses/test-ip",
///         },
///         service: "Microsoft.Storage",
///     }],
///     subnetName: "subnet1",
///     virtualNetworkName: "vnetname",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// subnet = azure_native.network.Subnet("subnet",
///     address_prefix="10.0.0.0/16",
///     resource_group_name="subnet-test",
///     service_endpoints=[{
///         "network_identifier": {
///             "id": "/subscriptions/subid/resourceGroups/subnet-test/providers/Microsoft.Network/publicIPAddresses/test-ip",
///         },
///         "service": "Microsoft.Storage",
///     }],
///     subnet_name="subnet1",
///     virtual_network_name="vnetname")
///
/// ```
///
/// ```yaml
/// resources:
///   subnet:
///     type: azure-native:network:Subnet
///     properties:
///       addressPrefix: 10.0.0.0/16
///       resourceGroupName: subnet-test
///       serviceEndpoints:
///         - networkIdentifier:
///             id: /subscriptions/subid/resourceGroups/subnet-test/providers/Microsoft.Network/publicIPAddresses/test-ip
///           service: Microsoft.Storage
///       subnetName: subnet1
///       virtualNetworkName: vnetname
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create subnet with sharing scope
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var subnet = new AzureNative.Network.Subnet("subnet", new()
///     {
///         AddressPrefix = "10.0.0.0/16",
///         ResourceGroupName = "subnet-test",
///         SubnetName = "subnet1",
///         VirtualNetworkName = "vnetname",
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
/// 		_, err := network.NewSubnet(ctx, "subnet", &network.SubnetArgs{
/// 			AddressPrefix:      pulumi.String("10.0.0.0/16"),
/// 			ResourceGroupName:  pulumi.String("subnet-test"),
/// 			SubnetName:         pulumi.String("subnet1"),
/// 			VirtualNetworkName: pulumi.String("vnetname"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_network_subnet" "subnet" {
///   address_prefix       = "10.0.0.0/16"
///   resource_group_name  = "subnet-test"
///   subnet_name          = "subnet1"
///   virtual_network_name = "vnetname"
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
/// import com.pulumi.azurenative.network.Subnet;
/// import com.pulumi.azurenative.network.SubnetArgs;
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
///         var subnet = new Subnet("subnet", SubnetArgs.builder()
///             .addressPrefix("10.0.0.0/16")
///             .resourceGroupName("subnet-test")
///             .subnetName("subnet1")
///             .virtualNetworkName("vnetname")
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
/// const subnet = new azure_native.network.Subnet("subnet", {
///     addressPrefix: "10.0.0.0/16",
///     resourceGroupName: "subnet-test",
///     subnetName: "subnet1",
///     virtualNetworkName: "vnetname",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// subnet = azure_native.network.Subnet("subnet",
///     address_prefix="10.0.0.0/16",
///     resource_group_name="subnet-test",
///     subnet_name="subnet1",
///     virtual_network_name="vnetname")
///
/// ```
///
/// ```yaml
/// resources:
///   subnet:
///     type: azure-native:network:Subnet
///     properties:
///       addressPrefix: 10.0.0.0/16
///       resourceGroupName: subnet-test
///       subnetName: subnet1
///       virtualNetworkName: vnetname
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
/// $ pulumi import azure-native:network:Subnet subnet1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{subnetName}
/// ```
class SubnetNetwork extends pulumi.CustomResource {
  /// The address prefix for the subnet.
  late final pulumi.Output<String?> addressPrefix;
  /// List of address prefixes for the subnet.
  late final pulumi.Output<List<String>?> addressPrefixes;
  /// Application gateway IP configurations of virtual network resource.
  late final pulumi.Output<List<Map<String, dynamic>>?> applicationGatewayIPConfigurations;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Set this property to false to disable default outbound connectivity for all VMs in the subnet. This property can only be set at the time of subnet creation and cannot be updated for an existing subnet.
  late final pulumi.Output<bool?> defaultOutboundAccess;
  /// An array of references to the delegations on the subnet.
  late final pulumi.Output<List<Map<String, dynamic>>?> delegations;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// Array of IpAllocation which reference this subnet.
  late final pulumi.Output<List<Map<String, dynamic>>?> ipAllocations;
  /// Array of IP configuration profiles which reference this subnet.
  late final pulumi.Output<List<Map<String, dynamic>>> ipConfigurationProfiles;
  /// An array of references to the network interface IP configurations using subnet.
  late final pulumi.Output<List<Map<String, dynamic>>> ipConfigurations;
  /// A list of IPAM Pools for allocating IP address prefixes.
  late final pulumi.Output<List<Map<String, dynamic>>?> ipamPoolPrefixAllocations;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  late final pulumi.Output<String?> name;
  /// Nat gateway associated with this subnet.
  late final pulumi.Output<SubResourceResponse?> natGateway;
  /// The reference to the NetworkSecurityGroup resource.
  late final pulumi.Output<NetworkSecurityGroupResponse?> networkSecurityGroup;
  /// Enable or Disable apply network policies on private end point in the subnet.
  late final pulumi.Output<String?> privateEndpointNetworkPolicies;
  /// An array of references to private endpoints.
  late final pulumi.Output<List<Map<String, dynamic>>> privateEndpoints;
  /// Enable or Disable apply network policies on private link service in the subnet.
  late final pulumi.Output<String?> privateLinkServiceNetworkPolicies;
  /// The provisioning state of the subnet resource.
  late final pulumi.Output<String> provisioningState;
  /// A read-only string identifying the intention of use for this subnet based on delegations and other user-defined properties.
  late final pulumi.Output<String> purpose;
  /// An array of references to the external resources using subnet.
  late final pulumi.Output<List<Map<String, dynamic>>> resourceNavigationLinks;
  /// The reference to the RouteTable resource.
  late final pulumi.Output<RouteTableResponse?> routeTable;
  /// An array of references to services injecting into this subnet.
  late final pulumi.Output<List<Map<String, dynamic>>> serviceAssociationLinks;
  /// An array of service endpoint policies.
  late final pulumi.Output<List<Map<String, dynamic>>?> serviceEndpointPolicies;
  /// An array of service endpoints.
  late final pulumi.Output<List<Map<String, dynamic>>?> serviceEndpoints;
  /// Set this property to Tenant to allow sharing subnet with other subscriptions in your AAD tenant. This property can only be set if defaultOutboundAccess is set to false, both properties can only be set if subnet is empty.
  late final pulumi.Output<String?> sharingScope;
  /// Resource type.
  late final pulumi.Output<String?> type;

  /// Creates a new [SubnetNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SubnetNetwork]. {@macro pulumi_network_subnet_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SubnetNetwork(
    String name, {
    SubnetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:Subnet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addressPrefix = registerOutput<String?>('addressPrefix');
    addressPrefixes = registerOutput<List<String>?>('addressPrefixes');
    applicationGatewayIPConfigurations = registerOutput<List<Map<String, dynamic>>?>('applicationGatewayIPConfigurations');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    defaultOutboundAccess = registerOutput<bool?>('defaultOutboundAccess');
    delegations = registerOutput<List<Map<String, dynamic>>?>('delegations');
    etag = registerOutput<String>('etag');
    ipAllocations = registerOutput<List<Map<String, dynamic>>?>('ipAllocations');
    ipConfigurationProfiles = registerOutput<List<Map<String, dynamic>>>('ipConfigurationProfiles');
    ipConfigurations = registerOutput<List<Map<String, dynamic>>>('ipConfigurations');
    ipamPoolPrefixAllocations = registerOutput<List<Map<String, dynamic>>?>('ipamPoolPrefixAllocations');
    this.name = registerOutput<String?>('name');
    natGateway = registerOutput<SubResourceResponse?>('natGateway', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    networkSecurityGroup = registerOutput<NetworkSecurityGroupResponse?>('networkSecurityGroup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkSecurityGroupResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateEndpointNetworkPolicies = registerOutput<String?>('privateEndpointNetworkPolicies');
    privateEndpoints = registerOutput<List<Map<String, dynamic>>>('privateEndpoints');
    privateLinkServiceNetworkPolicies = registerOutput<String?>('privateLinkServiceNetworkPolicies');
    provisioningState = registerOutput<String>('provisioningState');
    purpose = registerOutput<String>('purpose');
    resourceNavigationLinks = registerOutput<List<Map<String, dynamic>>>('resourceNavigationLinks');
    routeTable = registerOutput<RouteTableResponse?>('routeTable', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RouteTableResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serviceAssociationLinks = registerOutput<List<Map<String, dynamic>>>('serviceAssociationLinks');
    serviceEndpointPolicies = registerOutput<List<Map<String, dynamic>>?>('serviceEndpointPolicies');
    serviceEndpoints = registerOutput<List<Map<String, dynamic>>?>('serviceEndpoints');
    sharingScope = registerOutput<String?>('sharingScope');
    type = registerOutput<String?>('type');
  }
}
