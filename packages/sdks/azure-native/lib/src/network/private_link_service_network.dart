import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'frontend_ipconfiguration_response.dart';
import 'network_interface_response.dart';
import 'private_endpoint_connection_response.dart';
import 'private_link_service_args.dart';
import 'private_link_service_ip_configuration_response.dart';
import 'private_link_service_properties_response_auto_approval.dart';
import 'private_link_service_properties_response_visibility.dart';

/// Private link service resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create private link service
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateLinkService = new AzureNative.Network.PrivateLinkService("privateLinkService", new()
///     {
///         AutoApproval = new AzureNative.Network.Inputs.PrivateLinkServicePropertiesAutoApprovalArgs
///         {
///             Subscriptions = new[]
///             {
///                 "subscription1",
///                 "subscription2",
///             },
///         },
///         Fqdns = new[]
///         {
///             "fqdn1",
///             "fqdn2",
///             "fqdn3",
///         },
///         IpConfigurations = new[]
///         {
///             new AzureNative.Network.Inputs.PrivateLinkServiceIpConfigurationArgs
///             {
///                 Name = "fe-lb",
///                 PrivateIPAddress = "10.0.1.4",
///                 PrivateIPAddressVersion = AzureNative.Network.IPVersion.IPv4,
///                 PrivateIPAllocationMethod = AzureNative.Network.IPAllocationMethod.Static,
///                 Subnet = new AzureNative.Network.Inputs.SubnetArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb",
///                 },
///             },
///         },
///         LoadBalancerFrontendIpConfigurations = new[]
///         {
///             new AzureNative.Network.Inputs.FrontendIPConfigurationArgs
///             {
///                 Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///             },
///         },
///         Location = "eastus",
///         ResourceGroupName = "rg1",
///         ServiceName = "testPls",
///         Visibility = new AzureNative.Network.Inputs.PrivateLinkServicePropertiesVisibilityArgs
///         {
///             Subscriptions = new[]
///             {
///                 "subscription1",
///                 "subscription2",
///                 "subscription3",
///             },
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
/// 		_, err := network.NewPrivateLinkService(ctx, "privateLinkService", &network.PrivateLinkServiceArgs{
/// 			AutoApproval: &network.PrivateLinkServicePropertiesAutoApprovalArgs{
/// 				Subscriptions: pulumi.StringArray{
/// 					pulumi.String("subscription1"),
/// 					pulumi.String("subscription2"),
/// 				},
/// 			},
/// 			Fqdns: pulumi.StringArray{
/// 				pulumi.String("fqdn1"),
/// 				pulumi.String("fqdn2"),
/// 				pulumi.String("fqdn3"),
/// 			},
/// 			IpConfigurations: network.PrivateLinkServiceIpConfigurationArray{
/// 				&network.PrivateLinkServiceIpConfigurationArgs{
/// 					Name:                      pulumi.String("fe-lb"),
/// 					PrivateIPAddress:          pulumi.String("10.0.1.4"),
/// 					PrivateIPAddressVersion:   pulumi.String(network.IPVersionIPv4),
/// 					PrivateIPAllocationMethod: pulumi.String(network.IPAllocationMethodStatic),
/// 					Subnet: &network.SubnetTypeArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb"),
/// 					},
/// 				},
/// 			},
/// 			LoadBalancerFrontendIpConfigurations: network.FrontendIPConfigurationArray{
/// 				&network.FrontendIPConfigurationArgs{
/// 					Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb"),
/// 				},
/// 			},
/// 			Location:          pulumi.String("eastus"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("testPls"),
/// 			Visibility: &network.PrivateLinkServicePropertiesVisibilityArgs{
/// 				Subscriptions: pulumi.StringArray{
/// 					pulumi.String("subscription1"),
/// 					pulumi.String("subscription2"),
/// 					pulumi.String("subscription3"),
/// 				},
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
/// import com.pulumi.azurenative.network.PrivateLinkService;
/// import com.pulumi.azurenative.network.PrivateLinkServiceArgs;
/// import com.pulumi.azurenative.network.inputs.PrivateLinkServicePropertiesAutoApprovalArgs;
/// import com.pulumi.azurenative.network.inputs.PrivateLinkServiceIpConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.SubnetArgs;
/// import com.pulumi.azurenative.network.inputs.FrontendIPConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.PrivateLinkServicePropertiesVisibilityArgs;
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
///         var privateLinkService = new PrivateLinkService("privateLinkService", PrivateLinkServiceArgs.builder()
///             .autoApproval(PrivateLinkServicePropertiesAutoApprovalArgs.builder()
///                 .subscriptions(
///                     "subscription1",
///                     "subscription2")
///                 .build())
///             .fqdns(
///                 "fqdn1",
///                 "fqdn2",
///                 "fqdn3")
///             .ipConfigurations(PrivateLinkServiceIpConfigurationArgs.builder()
///                 .name("fe-lb")
///                 .privateIPAddress("10.0.1.4")
///                 .privateIPAddressVersion("IPv4")
///                 .privateIPAllocationMethod("Static")
///                 .subnet(SubnetArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb")
///                     .build())
///                 .build())
///             .loadBalancerFrontendIpConfigurations(FrontendIPConfigurationArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb")
///                 .build())
///             .location("eastus")
///             .resourceGroupName("rg1")
///             .serviceName("testPls")
///             .visibility(PrivateLinkServicePropertiesVisibilityArgs.builder()
///                 .subscriptions(
///                     "subscription1",
///                     "subscription2",
///                     "subscription3")
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
/// const privateLinkService = new azure_native.network.PrivateLinkService("privateLinkService", {
///     autoApproval: {
///         subscriptions: [
///             "subscription1",
///             "subscription2",
///         ],
///     },
///     fqdns: [
///         "fqdn1",
///         "fqdn2",
///         "fqdn3",
///     ],
///     ipConfigurations: [{
///         name: "fe-lb",
///         privateIPAddress: "10.0.1.4",
///         privateIPAddressVersion: azure_native.network.IPVersion.IPv4,
///         privateIPAllocationMethod: azure_native.network.IPAllocationMethod.Static,
///         subnet: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb",
///         },
///     }],
///     loadBalancerFrontendIpConfigurations: [{
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///     }],
///     location: "eastus",
///     resourceGroupName: "rg1",
///     serviceName: "testPls",
///     visibility: {
///         subscriptions: [
///             "subscription1",
///             "subscription2",
///             "subscription3",
///         ],
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_link_service = azure_native.network.PrivateLinkService("privateLinkService",
///     auto_approval={
///         "subscriptions": [
///             "subscription1",
///             "subscription2",
///         ],
///     },
///     fqdns=[
///         "fqdn1",
///         "fqdn2",
///         "fqdn3",
///     ],
///     ip_configurations=[{
///         "name": "fe-lb",
///         "private_ip_address": "10.0.1.4",
///         "private_ip_address_version": azure_native.network.IPVersion.I_PV4,
///         "private_ip_allocation_method": azure_native.network.IPAllocationMethod.STATIC,
///         "subnet": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb",
///         },
///     }],
///     load_balancer_frontend_ip_configurations=[{
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///     }],
///     location="eastus",
///     resource_group_name="rg1",
///     service_name="testPls",
///     visibility={
///         "subscriptions": [
///             "subscription1",
///             "subscription2",
///             "subscription3",
///         ],
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   privateLinkService:
///     type: azure-native:network:PrivateLinkService
///     properties:
///       autoApproval:
///         subscriptions:
///           - subscription1
///           - subscription2
///       fqdns:
///         - fqdn1
///         - fqdn2
///         - fqdn3
///       ipConfigurations:
///         - name: fe-lb
///           privateIPAddress: 10.0.1.4
///           privateIPAddressVersion: IPv4
///           privateIPAllocationMethod: Static
///           subnet:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb
///       loadBalancerFrontendIpConfigurations:
///         - id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb
///       location: eastus
///       resourceGroupName: rg1
///       serviceName: testPls
///       visibility:
///         subscriptions:
///           - subscription1
///           - subscription2
///           - subscription3
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
/// $ pulumi import azure-native:network:PrivateLinkService testPls /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/privateLinkServices/{serviceName}
/// ```
class PrivateLinkServiceNetwork extends pulumi.CustomResource {
  /// The alias of the private link service.
  late final pulumi.Output<String> alias;
  /// The auto-approval list of the private link service.
  late final pulumi.Output<PrivateLinkServicePropertiesResponseAutoApproval?> autoApproval;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The destination IP address of the private link service.
  late final pulumi.Output<String?> destinationIPAddress;
  /// Whether the private link service is enabled for proxy protocol or not.
  late final pulumi.Output<bool?> enableProxyProtocol;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// The extended location of the load balancer.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// The list of Fqdn.
  late final pulumi.Output<List<String>?> fqdns;
  /// An array of private link service IP configurations.
  late final pulumi.Output<List<PrivateLinkServiceIpConfigurationResponse>?> ipConfigurations;
  /// An array of references to the load balancer IP configurations.
  late final pulumi.Output<List<FrontendIPConfigurationResponse>?> loadBalancerFrontendIpConfigurations;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// An array of references to the network interfaces created for this private link service.
  late final pulumi.Output<List<NetworkInterfaceResponse>> networkInterfaces;
  /// An array of list about connections to the private endpoint.
  late final pulumi.Output<List<PrivateEndpointConnectionResponse>> privateEndpointConnections;
  /// The provisioning state of the private link service resource.
  late final pulumi.Output<String> provisioningState;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;
  /// The visibility list of the private link service.
  late final pulumi.Output<PrivateLinkServicePropertiesResponseVisibility?> visibility;

  /// Creates a new [PrivateLinkServiceNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateLinkServiceNetwork]. {@macro pulumi_network_private_link_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateLinkServiceNetwork(
    String name, {
    PrivateLinkServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:PrivateLinkService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alias = registerOutput<String>('alias');
    this.autoApproval = registerOutput<PrivateLinkServicePropertiesResponseAutoApproval?>('autoApproval');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.destinationIPAddress = registerOutput<String?>('destinationIPAddress');
    this.enableProxyProtocol = registerOutput<bool?>('enableProxyProtocol');
    this.etag = registerOutput<String>('etag');
    this.extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation');
    this.fqdns = registerOutput<List<String>?>('fqdns');
    this.ipConfigurations = registerOutput<List<PrivateLinkServiceIpConfigurationResponse>?>('ipConfigurations');
    this.loadBalancerFrontendIpConfigurations = registerOutput<List<FrontendIPConfigurationResponse>?>('loadBalancerFrontendIpConfigurations');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.networkInterfaces = registerOutput<List<NetworkInterfaceResponse>>('networkInterfaces');
    this.privateEndpointConnections = registerOutput<List<PrivateEndpointConnectionResponse>>('privateEndpointConnections');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
    this.visibility = registerOutput<PrivateLinkServicePropertiesResponseVisibility?>('visibility');
  }
}
