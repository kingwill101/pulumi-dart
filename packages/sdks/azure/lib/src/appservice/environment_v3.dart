import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_v3_args.dart';
import 'environment_v3_cluster_setting.dart';
import 'environment_v3_inbound_network_dependency.dart';
import 'environment_v3_state.dart';

/// Manages a 3rd Generation (v3) App Service Environment.
///
/// ## Example Usage
///
/// This example provisions an App Service Environment V3. Additional examples of how to use the `azure.appservice.EnvironmentV3` resource can be found in the `./examples/app-service-environment-v3` directory within the GitHub Repository.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "exampleRG1",
///     location: "West Europe",
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-vnet",
///     location: example.location,
///     resourceGroupName: example.name,
///     addressSpaces: ["10.0.0.0/16"],
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "example-subnet",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.2.0/24"],
///     delegations: [{
///         name: "Microsoft.Web.hostingEnvironments",
///         serviceDelegation: {
///             name: "Microsoft.Web/hostingEnvironments",
///             actions: ["Microsoft.Network/virtualNetworks/subnets/action"],
///         },
///     }],
/// });
/// const exampleEnvironmentV3 = new azure.appservice.EnvironmentV3("example", {
///     name: "example-asev3",
///     resourceGroupName: example.name,
///     subnetId: exampleSubnet.id,
///     internalLoadBalancingMode: "Web, Publishing",
///     clusterSettings: [
///         {
///             name: "DisableTls1.0",
///             value: "1",
///         },
///         {
///             name: "InternalEncryption",
///             value: "true",
///         },
///         {
///             name: "FrontEndSSLCipherSuiteOrder",
///             value: "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384,TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256",
///         },
///     ],
///     tags: {
///         env: "production",
///         terraformed: "true",
///     },
/// });
/// const exampleServicePlan = new azure.appservice.ServicePlan("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     osType: "Linux",
///     skuName: "I1v2",
///     appServiceEnvironmentId: exampleEnvironmentV3.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="exampleRG1",
///     location="West Europe")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-vnet",
///     location=example.location,
///     resource_group_name=example.name,
///     address_spaces=["10.0.0.0/16"])
/// example_subnet = azure.network.Subnet("example",
///     name="example-subnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"],
///     delegations=[{
///         "name": "Microsoft.Web.hostingEnvironments",
///         "service_delegation": {
///             "name": "Microsoft.Web/hostingEnvironments",
///             "actions": ["Microsoft.Network/virtualNetworks/subnets/action"],
///         },
///     }])
/// example_environment_v3 = azure.appservice.EnvironmentV3("example",
///     name="example-asev3",
///     resource_group_name=example.name,
///     subnet_id=example_subnet.id,
///     internal_load_balancing_mode="Web, Publishing",
///     cluster_settings=[
///         {
///             "name": "DisableTls1.0",
///             "value": "1",
///         },
///         {
///             "name": "InternalEncryption",
///             "value": "true",
///         },
///         {
///             "name": "FrontEndSSLCipherSuiteOrder",
///             "value": "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384,TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256",
///         },
///     ],
///     tags={
///         "env": "production",
///         "terraformed": "true",
///     })
/// example_service_plan = azure.appservice.ServicePlan("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     os_type="Linux",
///     sku_name="I1v2",
///     app_service_environment_id=example_environment_v3.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "exampleRG1",
///         Location = "West Europe",
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example-vnet",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "example-subnet",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.2.0/24",
///         },
///         Delegations = new[]
///         {
///             new Azure.Network.Inputs.SubnetDelegationArgs
///             {
///                 Name = "Microsoft.Web.hostingEnvironments",
///                 ServiceDelegation = new Azure.Network.Inputs.SubnetDelegationServiceDelegationArgs
///                 {
///                     Name = "Microsoft.Web/hostingEnvironments",
///                     Actions = new[]
///                     {
///                         "Microsoft.Network/virtualNetworks/subnets/action",
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleEnvironmentV3 = new Azure.AppService.EnvironmentV3("example", new()
///     {
///         Name = "example-asev3",
///         ResourceGroupName = example.Name,
///         SubnetId = exampleSubnet.Id,
///         InternalLoadBalancingMode = "Web, Publishing",
///         ClusterSettings = new[]
///         {
///             new Azure.AppService.Inputs.EnvironmentV3ClusterSettingArgs
///             {
///                 Name = "DisableTls1.0",
///                 Value = "1",
///             },
///             new Azure.AppService.Inputs.EnvironmentV3ClusterSettingArgs
///             {
///                 Name = "InternalEncryption",
///                 Value = "true",
///             },
///             new Azure.AppService.Inputs.EnvironmentV3ClusterSettingArgs
///             {
///                 Name = "FrontEndSSLCipherSuiteOrder",
///                 Value = "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384,TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256",
///             },
///         },
///         Tags =
///         {
///             { "env", "production" },
///             { "terraformed", "true" },
///         },
///     });
///
///     var exampleServicePlan = new Azure.AppService.ServicePlan("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         OsType = "Linux",
///         SkuName = "I1v2",
///         AppServiceEnvironmentId = exampleEnvironmentV3.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appservice"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("exampleRG1"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String("example-vnet"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("example-subnet"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.2.0/24"),
/// 			},
/// 			Delegations: network.SubnetDelegationArray{
/// 				&network.SubnetDelegationArgs{
/// 					Name: pulumi.String("Microsoft.Web.hostingEnvironments"),
/// 					ServiceDelegation: &network.SubnetDelegationServiceDelegationArgs{
/// 						Name: pulumi.String("Microsoft.Web/hostingEnvironments"),
/// 						Actions: pulumi.StringArray{
/// 							pulumi.String("Microsoft.Network/virtualNetworks/subnets/action"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEnvironmentV3, err := appservice.NewEnvironmentV3(ctx, "example", &appservice.EnvironmentV3Args{
/// 			Name:                      pulumi.String("example-asev3"),
/// 			ResourceGroupName:         example.Name,
/// 			SubnetId:                  exampleSubnet.ID(),
/// 			InternalLoadBalancingMode: pulumi.String("Web, Publishing"),
/// 			ClusterSettings: appservice.EnvironmentV3ClusterSettingArray{
/// 				&appservice.EnvironmentV3ClusterSettingArgs{
/// 					Name:  pulumi.String("DisableTls1.0"),
/// 					Value: pulumi.String("1"),
/// 				},
/// 				&appservice.EnvironmentV3ClusterSettingArgs{
/// 					Name:  pulumi.String("InternalEncryption"),
/// 					Value: pulumi.String("true"),
/// 				},
/// 				&appservice.EnvironmentV3ClusterSettingArgs{
/// 					Name:  pulumi.String("FrontEndSSLCipherSuiteOrder"),
/// 					Value: pulumi.String("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384,TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"env":         pulumi.String("production"),
/// 				"terraformed": pulumi.String("true"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewServicePlan(ctx, "example", &appservice.ServicePlanArgs{
/// 			Name:                    pulumi.String("example"),
/// 			ResourceGroupName:       example.Name,
/// 			Location:                example.Location,
/// 			OsType:                  pulumi.String("Linux"),
/// 			SkuName:                 pulumi.String("I1v2"),
/// 			AppServiceEnvironmentId: exampleEnvironmentV3.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationServiceDelegationArgs;
/// import com.pulumi.azure.appservice.EnvironmentV3;
/// import com.pulumi.azure.appservice.EnvironmentV3Args;
/// import com.pulumi.azure.appservice.inputs.EnvironmentV3ClusterSettingArgs;
/// import com.pulumi.azure.appservice.ServicePlan;
/// import com.pulumi.azure.appservice.ServicePlanArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("exampleRG1")
///             .location("West Europe")
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-vnet")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .addressSpaces("10.0.0.0/16")
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("example-subnet")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.2.0/24")
///             .delegations(SubnetDelegationArgs.builder()
///                 .name("Microsoft.Web.hostingEnvironments")
///                 .serviceDelegation(SubnetDelegationServiceDelegationArgs.builder()
///                     .name("Microsoft.Web/hostingEnvironments")
///                     .actions("Microsoft.Network/virtualNetworks/subnets/action")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleEnvironmentV3 = new EnvironmentV3("exampleEnvironmentV3", EnvironmentV3Args.builder()
///             .name("example-asev3")
///             .resourceGroupName(example.name())
///             .subnetId(exampleSubnet.id())
///             .internalLoadBalancingMode("Web, Publishing")
///             .clusterSettings(
///                 EnvironmentV3ClusterSettingArgs.builder()
///                     .name("DisableTls1.0")
///                     .value("1")
///                     .build(),
///                 EnvironmentV3ClusterSettingArgs.builder()
///                     .name("InternalEncryption")
///                     .value("true")
///                     .build(),
///                 EnvironmentV3ClusterSettingArgs.builder()
///                     .name("FrontEndSSLCipherSuiteOrder")
///                     .value("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384,TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256")
///                     .build())
///             .tags(Map.ofEntries(
///                 Map.entry("env", "production"),
///                 Map.entry("terraformed", "true")
///             ))
///             .build());
///
///         var exampleServicePlan = new ServicePlan("exampleServicePlan", ServicePlanArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .osType("Linux")
///             .skuName("I1v2")
///             .appServiceEnvironmentId(exampleEnvironmentV3.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: exampleRG1
///       location: West Europe
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example-vnet
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       addressSpaces:
///         - 10.0.0.0/16
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: example-subnet
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.2.0/24
///       delegations:
///         - name: Microsoft.Web.hostingEnvironments
///           serviceDelegation:
///             name: Microsoft.Web/hostingEnvironments
///             actions:
///               - Microsoft.Network/virtualNetworks/subnets/action
///   exampleEnvironmentV3:
///     type: azure:appservice:EnvironmentV3
///     name: example
///     properties:
///       name: example-asev3
///       resourceGroupName: ${example.name}
///       subnetId: ${exampleSubnet.id}
///       internalLoadBalancingMode: Web, Publishing
///       clusterSettings:
///         - name: DisableTls1.0
///           value: '1'
///         - name: InternalEncryption
///           value: 'true'
///         - name: FrontEndSSLCipherSuiteOrder
///           value: TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384,TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
///       tags:
///         env: production
///         terraformed: 'true'
///   exampleServicePlan:
///     type: azure:appservice:ServicePlan
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       osType: Linux
///       skuName: I1v2
///       appServiceEnvironmentId: ${exampleEnvironmentV3.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
///
/// * `Microsoft.Web` - 2023-01-01
///
/// ## Import
///
/// A 3rd Generation (v3) App Service Environment can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/environmentV3:EnvironmentV3 myAppServiceEnv /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Web/hostingEnvironments/myAppServiceEnv
/// ```
class EnvironmentV3 extends pulumi.CustomResource {
  /// Should new Private Endpoint Connections be allowed. Defaults to `true`.
  late final pulumi.Output<bool?> allowNewPrivateEndpointConnections;
  /// Zero or more `cluster_setting` blocks as defined below.
  late final pulumi.Output<List<EnvironmentV3ClusterSetting>> clusterSettings;
  /// This ASEv3 should use dedicated Hosts. Possible values are `2`. Changing this forces a new resource to be created.
  late final pulumi.Output<int?> dedicatedHostCount;
  /// the DNS suffix for this App Service Environment V3.
  late final pulumi.Output<String> dnsSuffix;
  /// The external inbound IP addresses of the App Service Environment V3.
  late final pulumi.Output<List<String>> externalInboundIpAddresses;
  /// An `inbound_network_dependencies` block as defined below.
  late final pulumi.Output<List<EnvironmentV3InboundNetworkDependency>> inboundNetworkDependencies;
  /// The internal inbound IP addresses of the App Service Environment V3.
  late final pulumi.Output<List<String>> internalInboundIpAddresses;
  /// Specifies which endpoints to serve internally in the Virtual Network for the App Service Environment. Possible values are `None` (for an External VIP Type), and `"Web, Publishing"` (for an Internal VIP Type). Defaults to `None`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> internalLoadBalancingMode;
  /// The number of IP SSL addresses reserved for the App Service Environment V3.
  late final pulumi.Output<int> ipSslAddressCount;
  /// Outbound addresses of Linux based Apps in this App Service Environment V3
  late final pulumi.Output<List<String>> linuxOutboundIpAddresses;
  /// The location where the App Service Environment exists.
  late final pulumi.Output<String> location;
  /// The name of the App Service Environment. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Pricing tier for the front end instances.
  late final pulumi.Output<String> pricingTier;
  /// Whether to enable remote debug. Defaults to `false`.
  late final pulumi.Output<bool?> remoteDebuggingEnabled;
  /// The name of the Resource Group where the App Service Environment exists. Defaults to the Resource Group of the Subnet (specified by `subnet_id`). Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The ID of the Subnet which the App Service Environment should be connected to. Changing this forces a new resource to be created.
  ///
  /// > **Note:** a /24 or larger CIDR is required. Once associated with an ASE, this size cannot be changed.
  ///
  /// > **Note:** This Subnet requires a delegation to `Microsoft.Web/hostingEnvironments` as detailed in the example above.
  late final pulumi.Output<String> subnetId;
  /// A mapping of tags to assign to the resource.
  ///
  /// > **Note:** The underlying API does not currently support changing Tags on this resource. Making changes in the portal for tags will cause Terraform to detect a change that will force a recreation of the ASEV3 unless `ignore_changes` lifecycle meta-argument is used.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Outbound addresses of Windows based Apps in this App Service Environment V3.
  late final pulumi.Output<List<String>> windowsOutboundIpAddresses;
  /// Set to `true` to deploy the ASEv3 with availability zones supported. Zonal ASEs can be deployed in some regions, you can refer to [Availability Zone support for App Service Environments](https://docs.microsoft.com/azure/app-service/environment/zone-redundancy). You can only set either `dedicated_host_count` or `zone_redundant` but not both. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Setting this value will provision 2 Physical Hosts for your App Service Environment V3, this is done at additional cost, please be aware of the pricing commitment in the [General Availability Notes](https://techcommunity.microsoft.com/t5/apps-on-azure/announcing-app-service-environment-v3-ga/ba-p/2517990)
  late final pulumi.Output<bool?> zoneRedundant;

  /// Creates a new [EnvironmentV3].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnvironmentV3]. {@macro pulumi_appservice_environment_v3_environment_v3_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnvironmentV3(
    String name, {
    EnvironmentV3Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/environmentV3:EnvironmentV3',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowNewPrivateEndpointConnections = registerOutput<bool?>('allowNewPrivateEndpointConnections');
    this.clusterSettings = registerOutput<List<EnvironmentV3ClusterSetting>>('clusterSettings');
    this.dedicatedHostCount = registerOutput<int?>('dedicatedHostCount');
    this.dnsSuffix = registerOutput<String>('dnsSuffix');
    this.externalInboundIpAddresses = registerOutput<List<String>>('externalInboundIpAddresses');
    this.inboundNetworkDependencies = registerOutput<List<EnvironmentV3InboundNetworkDependency>>('inboundNetworkDependencies');
    this.internalInboundIpAddresses = registerOutput<List<String>>('internalInboundIpAddresses');
    this.internalLoadBalancingMode = registerOutput<String?>('internalLoadBalancingMode');
    this.ipSslAddressCount = registerOutput<int>('ipSslAddressCount');
    this.linuxOutboundIpAddresses = registerOutput<List<String>>('linuxOutboundIpAddresses');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.pricingTier = registerOutput<String>('pricingTier');
    this.remoteDebuggingEnabled = registerOutput<bool?>('remoteDebuggingEnabled');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.subnetId = registerOutput<String>('subnetId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.windowsOutboundIpAddresses = registerOutput<List<String>>('windowsOutboundIpAddresses');
    this.zoneRedundant = registerOutput<bool?>('zoneRedundant');
  }

  /// Gets an existing [EnvironmentV3] resource's state with the given [name] and [id].
  static EnvironmentV3 get(
    String name,
    pulumi.Input<String> id, {
    EnvironmentV3State? state,
  }) {
    return EnvironmentV3._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EnvironmentV3._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/environmentV3:EnvironmentV3',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowNewPrivateEndpointConnections = registerOutput<bool?>('allowNewPrivateEndpointConnections');
    this.clusterSettings = registerOutput<List<EnvironmentV3ClusterSetting>>('clusterSettings');
    this.dedicatedHostCount = registerOutput<int?>('dedicatedHostCount');
    this.dnsSuffix = registerOutput<String>('dnsSuffix');
    this.externalInboundIpAddresses = registerOutput<List<String>>('externalInboundIpAddresses');
    this.inboundNetworkDependencies = registerOutput<List<EnvironmentV3InboundNetworkDependency>>('inboundNetworkDependencies');
    this.internalInboundIpAddresses = registerOutput<List<String>>('internalInboundIpAddresses');
    this.internalLoadBalancingMode = registerOutput<String?>('internalLoadBalancingMode');
    this.ipSslAddressCount = registerOutput<int>('ipSslAddressCount');
    this.linuxOutboundIpAddresses = registerOutput<List<String>>('linuxOutboundIpAddresses');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.pricingTier = registerOutput<String>('pricingTier');
    this.remoteDebuggingEnabled = registerOutput<bool?>('remoteDebuggingEnabled');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.subnetId = registerOutput<String>('subnetId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.windowsOutboundIpAddresses = registerOutput<List<String>>('windowsOutboundIpAddresses');
    this.zoneRedundant = registerOutput<bool?>('zoneRedundant');
  }
}
