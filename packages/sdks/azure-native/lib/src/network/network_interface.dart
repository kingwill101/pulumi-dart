import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'network_interface_args.dart';
import 'network_interface_dns_settings_response.dart';
import 'network_interface_ipconfiguration_response.dart';
import 'network_interface_tap_configuration_response.dart';
import 'network_security_group_response.dart';
import 'private_endpoint_response.dart';
import 'private_link_service_response.dart';
import 'sub_resource_response.dart';

/// A network interface in a resource group.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create network interface
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkInterface = new AzureNative.Network.NetworkInterface("networkInterface", new()
///     {
///         DisableTcpStateTracking = true,
///         EnableAcceleratedNetworking = true,
///         IpConfigurations = new[]
///         {
///             new AzureNative.Network.Inputs.NetworkInterfaceIPConfigurationArgs
///             {
///                 Name = "ipconfig1",
///                 PublicIPAddress = new AzureNative.Network.Inputs.PublicIPAddressArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/test-ip",
///                 },
///                 Subnet = new AzureNative.Network.Inputs.SubnetArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/rg1-vnet/subnets/default",
///                 },
///             },
///             new AzureNative.Network.Inputs.NetworkInterfaceIPConfigurationArgs
///             {
///                 Name = "ipconfig2",
///                 PrivateIPAddressPrefixLength = 28,
///             },
///         },
///         Location = "eastus",
///         NetworkInterfaceName = "test-nic",
///         ResourceGroupName = "rg1",
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
/// 		_, err := network.NewNetworkInterface(ctx, "networkInterface", &network.NetworkInterfaceArgs{
/// 			DisableTcpStateTracking:     pulumi.Bool(true),
/// 			EnableAcceleratedNetworking: pulumi.Bool(true),
/// 			IpConfigurations: network.NetworkInterfaceIPConfigurationArray{
/// 				&network.NetworkInterfaceIPConfigurationArgs{
/// 					Name: pulumi.String("ipconfig1"),
/// 					PublicIPAddress: &network.PublicIPAddressTypeArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/test-ip"),
/// 					},
/// 					Subnet: &network.SubnetTypeArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/rg1-vnet/subnets/default"),
/// 					},
/// 				},
/// 				&network.NetworkInterfaceIPConfigurationArgs{
/// 					Name:                         pulumi.String("ipconfig2"),
/// 					PrivateIPAddressPrefixLength: pulumi.Int(28),
/// 				},
/// 			},
/// 			Location:             pulumi.String("eastus"),
/// 			NetworkInterfaceName: pulumi.String("test-nic"),
/// 			ResourceGroupName:    pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.network.NetworkInterface;
/// import com.pulumi.azurenative.network.NetworkInterfaceArgs;
/// import com.pulumi.azurenative.network.inputs.NetworkInterfaceIPConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.PublicIPAddressArgs;
/// import com.pulumi.azurenative.network.inputs.SubnetArgs;
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
///         var networkInterface = new NetworkInterface("networkInterface", NetworkInterfaceArgs.builder()
///             .disableTcpStateTracking(true)
///             .enableAcceleratedNetworking(true)
///             .ipConfigurations(
///                 NetworkInterfaceIPConfigurationArgs.builder()
///                     .name("ipconfig1")
///                     .publicIPAddress(PublicIPAddressArgs.builder()
///                         .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/test-ip")
///                         .build())
///                     .subnet(SubnetArgs.builder()
///                         .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/rg1-vnet/subnets/default")
///                         .build())
///                     .build(),
///                 NetworkInterfaceIPConfigurationArgs.builder()
///                     .name("ipconfig2")
///                     .privateIPAddressPrefixLength(28)
///                     .build())
///             .location("eastus")
///             .networkInterfaceName("test-nic")
///             .resourceGroupName("rg1")
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
/// const networkInterface = new azure_native.network.NetworkInterface("networkInterface", {
///     disableTcpStateTracking: true,
///     enableAcceleratedNetworking: true,
///     ipConfigurations: [
///         {
///             name: "ipconfig1",
///             publicIPAddress: {
///                 id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/test-ip",
///             },
///             subnet: {
///                 id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/rg1-vnet/subnets/default",
///             },
///         },
///         {
///             name: "ipconfig2",
///             privateIPAddressPrefixLength: 28,
///         },
///     ],
///     location: "eastus",
///     networkInterfaceName: "test-nic",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// network_interface = azure_native.network.NetworkInterface("networkInterface",
///     disable_tcp_state_tracking=True,
///     enable_accelerated_networking=True,
///     ip_configurations=[
///         {
///             "name": "ipconfig1",
///             "public_ip_address": {
///                 "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/test-ip",
///             },
///             "subnet": {
///                 "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/rg1-vnet/subnets/default",
///             },
///         },
///         {
///             "name": "ipconfig2",
///             "private_ip_address_prefix_length": 28,
///         },
///     ],
///     location="eastus",
///     network_interface_name="test-nic",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   networkInterface:
///     type: azure-native:network:NetworkInterface
///     properties:
///       disableTcpStateTracking: true
///       enableAcceleratedNetworking: true
///       ipConfigurations:
///         - name: ipconfig1
///           publicIPAddress:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/test-ip
///           subnet:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/rg1-vnet/subnets/default
///         - name: ipconfig2
///           privateIPAddressPrefixLength: 28
///       location: eastus
///       networkInterfaceName: test-nic
///       resourceGroupName: rg1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create network interface with Gateway Load Balancer Consumer configured
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkInterface = new AzureNative.Network.NetworkInterface("networkInterface", new()
///     {
///         EnableAcceleratedNetworking = true,
///         IpConfigurations = new[]
///         {
///             new AzureNative.Network.Inputs.NetworkInterfaceIPConfigurationArgs
///             {
///                 GatewayLoadBalancer = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb-provider",
///                 },
///                 Name = "ipconfig1",
///                 PublicIPAddress = new AzureNative.Network.Inputs.PublicIPAddressArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/test-ip",
///                 },
///                 Subnet = new AzureNative.Network.Inputs.SubnetArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/rg1-vnet/subnets/default",
///                 },
///             },
///         },
///         Location = "eastus",
///         NetworkInterfaceName = "test-nic",
///         ResourceGroupName = "rg1",
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
/// 		_, err := network.NewNetworkInterface(ctx, "networkInterface", &network.NetworkInterfaceArgs{
/// 			EnableAcceleratedNetworking: pulumi.Bool(true),
/// 			IpConfigurations: network.NetworkInterfaceIPConfigurationArray{
/// 				&network.NetworkInterfaceIPConfigurationArgs{
/// 					GatewayLoadBalancer: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb-provider"),
/// 					},
/// 					Name: pulumi.String("ipconfig1"),
/// 					PublicIPAddress: &network.PublicIPAddressTypeArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/test-ip"),
/// 					},
/// 					Subnet: &network.SubnetTypeArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/rg1-vnet/subnets/default"),
/// 					},
/// 				},
/// 			},
/// 			Location:             pulumi.String("eastus"),
/// 			NetworkInterfaceName: pulumi.String("test-nic"),
/// 			ResourceGroupName:    pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.network.NetworkInterface;
/// import com.pulumi.azurenative.network.NetworkInterfaceArgs;
/// import com.pulumi.azurenative.network.inputs.NetworkInterfaceIPConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
/// import com.pulumi.azurenative.network.inputs.PublicIPAddressArgs;
/// import com.pulumi.azurenative.network.inputs.SubnetArgs;
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
///         var networkInterface = new NetworkInterface("networkInterface", NetworkInterfaceArgs.builder()
///             .enableAcceleratedNetworking(true)
///             .ipConfigurations(NetworkInterfaceIPConfigurationArgs.builder()
///                 .gatewayLoadBalancer(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb-provider")
///                     .build())
///                 .name("ipconfig1")
///                 .publicIPAddress(PublicIPAddressArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/test-ip")
///                     .build())
///                 .subnet(SubnetArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/rg1-vnet/subnets/default")
///                     .build())
///                 .build())
///             .location("eastus")
///             .networkInterfaceName("test-nic")
///             .resourceGroupName("rg1")
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
/// const networkInterface = new azure_native.network.NetworkInterface("networkInterface", {
///     enableAcceleratedNetworking: true,
///     ipConfigurations: [{
///         gatewayLoadBalancer: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb-provider",
///         },
///         name: "ipconfig1",
///         publicIPAddress: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/test-ip",
///         },
///         subnet: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/rg1-vnet/subnets/default",
///         },
///     }],
///     location: "eastus",
///     networkInterfaceName: "test-nic",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// network_interface = azure_native.network.NetworkInterface("networkInterface",
///     enable_accelerated_networking=True,
///     ip_configurations=[{
///         "gateway_load_balancer": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb-provider",
///         },
///         "name": "ipconfig1",
///         "public_ip_address": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/test-ip",
///         },
///         "subnet": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/rg1-vnet/subnets/default",
///         },
///     }],
///     location="eastus",
///     network_interface_name="test-nic",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   networkInterface:
///     type: azure-native:network:NetworkInterface
///     properties:
///       enableAcceleratedNetworking: true
///       ipConfigurations:
///         - gatewayLoadBalancer:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb-provider
///           name: ipconfig1
///           publicIPAddress:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/test-ip
///           subnet:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/rg1-vnet/subnets/default
///       location: eastus
///       networkInterfaceName: test-nic
///       resourceGroupName: rg1
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
/// $ pulumi import azure-native:network:NetworkInterface test-nic /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkInterfaces/{networkInterfaceName}
/// ```
class NetworkInterface extends pulumi.CustomResource {
  /// Auxiliary mode of Network Interface resource.
  late final pulumi.Output<String?> auxiliaryMode;
  /// Auxiliary sku of Network Interface resource.
  late final pulumi.Output<String?> auxiliarySku;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Whether default outbound connectivity for nic was configured or not.
  late final pulumi.Output<bool> defaultOutboundConnectivityEnabled;
  /// Indicates whether to disable tcp state tracking.
  late final pulumi.Output<bool?> disableTcpStateTracking;
  /// The DNS settings in network interface.
  late final pulumi.Output<NetworkInterfaceDnsSettingsResponse?> dnsSettings;
  /// A reference to the dscp configuration to which the network interface is linked.
  late final pulumi.Output<SubResourceResponse> dscpConfiguration;
  /// If the network interface is configured for accelerated networking. Not applicable to VM sizes which require accelerated networking.
  late final pulumi.Output<bool?> enableAcceleratedNetworking;
  /// Indicates whether IP forwarding is enabled on this network interface.
  late final pulumi.Output<bool?> enableIPForwarding;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// The extended location of the network interface.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// A list of references to linked BareMetal resources.
  late final pulumi.Output<List<String>> hostedWorkloads;
  /// A list of IPConfigurations of the network interface.
  late final pulumi.Output<List<NetworkInterfaceIPConfigurationResponse>?> ipConfigurations;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// The MAC address of the network interface.
  late final pulumi.Output<String> macAddress;
  /// Migration phase of Network Interface resource.
  late final pulumi.Output<String?> migrationPhase;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The reference to the NetworkSecurityGroup resource.
  late final pulumi.Output<NetworkSecurityGroupResponse?> networkSecurityGroup;
  /// Type of Network Interface resource.
  late final pulumi.Output<String?> nicType;
  /// Whether this is a primary network interface on a virtual machine.
  late final pulumi.Output<bool> primary;
  /// A reference to the private endpoint to which the network interface is linked.
  late final pulumi.Output<PrivateEndpointResponse> privateEndpoint;
  /// Privatelinkservice of the network interface resource.
  late final pulumi.Output<PrivateLinkServiceResponse?> privateLinkService;
  /// The provisioning state of the network interface resource.
  late final pulumi.Output<String> provisioningState;
  /// The resource GUID property of the network interface resource.
  late final pulumi.Output<String> resourceGuid;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A list of TapConfigurations of the network interface.
  late final pulumi.Output<List<NetworkInterfaceTapConfigurationResponse>> tapConfigurations;
  /// Resource type.
  late final pulumi.Output<String> type;
  /// The reference to a virtual machine.
  late final pulumi.Output<SubResourceResponse> virtualMachine;
  /// Whether the virtual machine this nic is attached to supports encryption.
  late final pulumi.Output<bool> vnetEncryptionSupported;
  /// WorkloadType of the NetworkInterface for BareMetal resources
  late final pulumi.Output<String?> workloadType;

  /// Creates a new [NetworkInterface].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkInterface]. {@macro pulumi_network_network_interface_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkInterface(
    String name, {
    NetworkInterfaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:NetworkInterface',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.auxiliaryMode = registerOutput<String?>('auxiliaryMode');
    this.auxiliarySku = registerOutput<String?>('auxiliarySku');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.defaultOutboundConnectivityEnabled = registerOutput<bool>('defaultOutboundConnectivityEnabled');
    this.disableTcpStateTracking = registerOutput<bool?>('disableTcpStateTracking');
    this.dnsSettings = registerOutput<NetworkInterfaceDnsSettingsResponse?>('dnsSettings');
    this.dscpConfiguration = registerOutput<SubResourceResponse>('dscpConfiguration');
    this.enableAcceleratedNetworking = registerOutput<bool?>('enableAcceleratedNetworking');
    this.enableIPForwarding = registerOutput<bool?>('enableIPForwarding');
    this.etag = registerOutput<String>('etag');
    this.extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation');
    this.hostedWorkloads = registerOutput<List<String>>('hostedWorkloads');
    this.ipConfigurations = registerOutput<List<NetworkInterfaceIPConfigurationResponse>?>('ipConfigurations');
    this.location = registerOutput<String?>('location');
    this.macAddress = registerOutput<String>('macAddress');
    this.migrationPhase = registerOutput<String?>('migrationPhase');
    this.name = registerOutput<String>('name');
    this.networkSecurityGroup = registerOutput<NetworkSecurityGroupResponse?>('networkSecurityGroup');
    this.nicType = registerOutput<String?>('nicType');
    this.primary = registerOutput<bool>('primary');
    this.privateEndpoint = registerOutput<PrivateEndpointResponse>('privateEndpoint');
    this.privateLinkService = registerOutput<PrivateLinkServiceResponse?>('privateLinkService');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.resourceGuid = registerOutput<String>('resourceGuid');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tapConfigurations = registerOutput<List<NetworkInterfaceTapConfigurationResponse>>('tapConfigurations');
    this.type = registerOutput<String>('type');
    this.virtualMachine = registerOutput<SubResourceResponse>('virtualMachine');
    this.vnetEncryptionSupported = registerOutput<bool>('vnetEncryptionSupported');
    this.workloadType = registerOutput<String?>('workloadType');
  }
}
