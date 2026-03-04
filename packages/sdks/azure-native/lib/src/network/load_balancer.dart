import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'load_balancer_args.dart';
import 'load_balancer_sku_response.dart';

/// LoadBalancer resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create load balancer
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var loadBalancer = new AzureNative.Network.LoadBalancer("loadBalancer", new()
///     {
///         BackendAddressPools = new[]
///         {
///             new AzureNative.Network.Inputs.BackendAddressPoolArgs
///             {
///                 Name = "be-lb",
///             },
///         },
///         FrontendIPConfigurations = new[]
///         {
///             new AzureNative.Network.Inputs.FrontendIPConfigurationArgs
///             {
///                 Name = "fe-lb",
///                 Subnet = new AzureNative.Network.Inputs.SubnetArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb",
///                 },
///             },
///         },
///         InboundNatPools = new[] {},
///         InboundNatRules = new[]
///         {
///             new AzureNative.Network.Inputs.InboundNatRuleArgs
///             {
///                 BackendPort = 3389,
///                 EnableFloatingIP = true,
///                 EnableTcpReset = false,
///                 FrontendIPConfiguration = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///                 },
///                 FrontendPort = 3389,
///                 IdleTimeoutInMinutes = 15,
///                 Name = "in-nat-rule",
///                 Protocol = AzureNative.Network.TransportProtocol.Tcp,
///             },
///         },
///         LoadBalancerName = "lb",
///         LoadBalancingRules = new[]
///         {
///             new AzureNative.Network.Inputs.LoadBalancingRuleArgs
///             {
///                 BackendAddressPool = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb",
///                 },
///                 BackendPort = 80,
///                 EnableFloatingIP = true,
///                 EnableTcpReset = false,
///                 FrontendIPConfiguration = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///                 },
///                 FrontendPort = 80,
///                 IdleTimeoutInMinutes = 15,
///                 LoadDistribution = AzureNative.Network.LoadDistribution.Default,
///                 Name = "rulelb",
///                 Probe = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb",
///                 },
///                 Protocol = AzureNative.Network.TransportProtocol.Tcp,
///             },
///         },
///         Location = "eastus",
///         Probes = new[]
///         {
///             new AzureNative.Network.Inputs.ProbeArgs
///             {
///                 IntervalInSeconds = 15,
///                 Name = "probe-lb",
///                 NumberOfProbes = 2,
///                 Port = 80,
///                 ProbeThreshold = 1,
///                 Protocol = AzureNative.Network.ProbeProtocol.Http,
///                 RequestPath = "healthcheck.aspx",
///             },
///         },
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
/// 		_, err := network.NewLoadBalancer(ctx, "loadBalancer", &network.LoadBalancerArgs{
/// 			BackendAddressPools: network.BackendAddressPoolArray{
/// 				&network.BackendAddressPoolArgs{
/// 					Name: pulumi.String("be-lb"),
/// 				},
/// 			},
/// 			FrontendIPConfigurations: network.FrontendIPConfigurationArray{
/// 				&network.FrontendIPConfigurationArgs{
/// 					Name: pulumi.String("fe-lb"),
/// 					Subnet: &network.SubnetTypeArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb"),
/// 					},
/// 				},
/// 			},
/// 			InboundNatPools: network.InboundNatPoolArray{},
/// 			InboundNatRules: network.InboundNatRuleTypeArray{
/// 				&network.InboundNatRuleTypeArgs{
/// 					BackendPort:      pulumi.Int(3389),
/// 					EnableFloatingIP: pulumi.Bool(true),
/// 					EnableTcpReset:   pulumi.Bool(false),
/// 					FrontendIPConfiguration: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb"),
/// 					},
/// 					FrontendPort:         pulumi.Int(3389),
/// 					IdleTimeoutInMinutes: pulumi.Int(15),
/// 					Name:                 pulumi.String("in-nat-rule"),
/// 					Protocol:             pulumi.String(network.TransportProtocolTcp),
/// 				},
/// 			},
/// 			LoadBalancerName: pulumi.String("lb"),
/// 			LoadBalancingRules: network.LoadBalancingRuleArray{
/// 				&network.LoadBalancingRuleArgs{
/// 					BackendAddressPool: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb"),
/// 					},
/// 					BackendPort:      pulumi.Int(80),
/// 					EnableFloatingIP: pulumi.Bool(true),
/// 					EnableTcpReset:   pulumi.Bool(false),
/// 					FrontendIPConfiguration: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb"),
/// 					},
/// 					FrontendPort:         pulumi.Int(80),
/// 					IdleTimeoutInMinutes: pulumi.Int(15),
/// 					LoadDistribution:     pulumi.String(network.LoadDistributionDefault),
/// 					Name:                 pulumi.String("rulelb"),
/// 					Probe: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb"),
/// 					},
/// 					Protocol: pulumi.String(network.TransportProtocolTcp),
/// 				},
/// 			},
/// 			Location: pulumi.String("eastus"),
/// 			Probes: network.ProbeArray{
/// 				&network.ProbeArgs{
/// 					IntervalInSeconds: pulumi.Int(15),
/// 					Name:              pulumi.String("probe-lb"),
/// 					NumberOfProbes:    pulumi.Int(2),
/// 					Port:              pulumi.Int(80),
/// 					ProbeThreshold:    pulumi.Int(1),
/// 					Protocol:          pulumi.String(network.ProbeProtocolHttp),
/// 					RequestPath:       pulumi.String("healthcheck.aspx"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.network.LoadBalancer;
/// import com.pulumi.azurenative.network.LoadBalancerArgs;
/// import com.pulumi.azurenative.network.inputs.BackendAddressPoolArgs;
/// import com.pulumi.azurenative.network.inputs.FrontendIPConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.SubnetArgs;
/// import com.pulumi.azurenative.network.inputs.InboundNatRuleArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
/// import com.pulumi.azurenative.network.inputs.LoadBalancingRuleArgs;
/// import com.pulumi.azurenative.network.inputs.ProbeArgs;
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
///         var loadBalancer = new LoadBalancer("loadBalancer", LoadBalancerArgs.builder()
///             .backendAddressPools(BackendAddressPoolArgs.builder()
///                 .name("be-lb")
///                 .build())
///             .frontendIPConfigurations(FrontendIPConfigurationArgs.builder()
///                 .name("fe-lb")
///                 .subnet(SubnetArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb")
///                     .build())
///                 .build())
///             .inboundNatPools()
///             .inboundNatRules(InboundNatRuleArgs.builder()
///                 .backendPort(3389)
///                 .enableFloatingIP(true)
///                 .enableTcpReset(false)
///                 .frontendIPConfiguration(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb")
///                     .build())
///                 .frontendPort(3389)
///                 .idleTimeoutInMinutes(15)
///                 .name("in-nat-rule")
///                 .protocol("Tcp")
///                 .build())
///             .loadBalancerName("lb")
///             .loadBalancingRules(LoadBalancingRuleArgs.builder()
///                 .backendAddressPool(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb")
///                     .build())
///                 .backendPort(80)
///                 .enableFloatingIP(true)
///                 .enableTcpReset(false)
///                 .frontendIPConfiguration(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb")
///                     .build())
///                 .frontendPort(80)
///                 .idleTimeoutInMinutes(15)
///                 .loadDistribution("Default")
///                 .name("rulelb")
///                 .probe(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb")
///                     .build())
///                 .protocol("Tcp")
///                 .build())
///             .location("eastus")
///             .probes(ProbeArgs.builder()
///                 .intervalInSeconds(15)
///                 .name("probe-lb")
///                 .numberOfProbes(2)
///                 .port(80)
///                 .probeThreshold(1)
///                 .protocol("Http")
///                 .requestPath("healthcheck.aspx")
///                 .build())
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
/// const loadBalancer = new azure_native.network.LoadBalancer("loadBalancer", {
///     backendAddressPools: [{
///         name: "be-lb",
///     }],
///     frontendIPConfigurations: [{
///         name: "fe-lb",
///         subnet: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb",
///         },
///     }],
///     inboundNatPools: [],
///     inboundNatRules: [{
///         backendPort: 3389,
///         enableFloatingIP: true,
///         enableTcpReset: false,
///         frontendIPConfiguration: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///         },
///         frontendPort: 3389,
///         idleTimeoutInMinutes: 15,
///         name: "in-nat-rule",
///         protocol: azure_native.network.TransportProtocol.Tcp,
///     }],
///     loadBalancerName: "lb",
///     loadBalancingRules: [{
///         backendAddressPool: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb",
///         },
///         backendPort: 80,
///         enableFloatingIP: true,
///         enableTcpReset: false,
///         frontendIPConfiguration: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///         },
///         frontendPort: 80,
///         idleTimeoutInMinutes: 15,
///         loadDistribution: azure_native.network.LoadDistribution.Default,
///         name: "rulelb",
///         probe: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb",
///         },
///         protocol: azure_native.network.TransportProtocol.Tcp,
///     }],
///     location: "eastus",
///     probes: [{
///         intervalInSeconds: 15,
///         name: "probe-lb",
///         numberOfProbes: 2,
///         port: 80,
///         probeThreshold: 1,
///         protocol: azure_native.network.ProbeProtocol.Http,
///         requestPath: "healthcheck.aspx",
///     }],
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// load_balancer = azure_native.network.LoadBalancer("loadBalancer",
///     backend_address_pools=[{
///         "name": "be-lb",
///     }],
///     frontend_ip_configurations=[{
///         "name": "fe-lb",
///         "subnet": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb",
///         },
///     }],
///     inbound_nat_pools=[],
///     inbound_nat_rules=[{
///         "backend_port": 3389,
///         "enable_floating_ip": True,
///         "enable_tcp_reset": False,
///         "frontend_ip_configuration": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///         },
///         "frontend_port": 3389,
///         "idle_timeout_in_minutes": 15,
///         "name": "in-nat-rule",
///         "protocol": azure_native.network.TransportProtocol.TCP,
///     }],
///     load_balancer_name="lb",
///     load_balancing_rules=[{
///         "backend_address_pool": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb",
///         },
///         "backend_port": 80,
///         "enable_floating_ip": True,
///         "enable_tcp_reset": False,
///         "frontend_ip_configuration": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///         },
///         "frontend_port": 80,
///         "idle_timeout_in_minutes": 15,
///         "load_distribution": azure_native.network.LoadDistribution.DEFAULT,
///         "name": "rulelb",
///         "probe": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb",
///         },
///         "protocol": azure_native.network.TransportProtocol.TCP,
///     }],
///     location="eastus",
///     probes=[{
///         "interval_in_seconds": 15,
///         "name": "probe-lb",
///         "number_of_probes": 2,
///         "port": 80,
///         "probe_threshold": 1,
///         "protocol": azure_native.network.ProbeProtocol.HTTP,
///         "request_path": "healthcheck.aspx",
///     }],
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   loadBalancer:
///     type: azure-native:network:LoadBalancer
///     properties:
///       backendAddressPools:
///         - name: be-lb
///       frontendIPConfigurations:
///         - name: fe-lb
///           subnet:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb
///       inboundNatPools: []
///       inboundNatRules:
///         - backendPort: 3389
///           enableFloatingIP: true
///           enableTcpReset: false
///           frontendIPConfiguration:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb
///           frontendPort: 3389
///           idleTimeoutInMinutes: 15
///           name: in-nat-rule
///           protocol: Tcp
///       loadBalancerName: lb
///       loadBalancingRules:
///         - backendAddressPool:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb
///           backendPort: 80
///           enableFloatingIP: true
///           enableTcpReset: false
///           frontendIPConfiguration:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb
///           frontendPort: 80
///           idleTimeoutInMinutes: 15
///           loadDistribution: Default
///           name: rulelb
///           probe:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb
///           protocol: Tcp
///       location: eastus
///       probes:
///         - intervalInSeconds: 15
///           name: probe-lb
///           numberOfProbes: 2
///           port: 80
///           probeThreshold: 1
///           protocol: Http
///           requestPath: healthcheck.aspx
///       resourceGroupName: rg1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create load balancer with Frontend IP in Zone 1
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var loadBalancer = new AzureNative.Network.LoadBalancer("loadBalancer", new()
///     {
///         BackendAddressPools = new[]
///         {
///             new AzureNative.Network.Inputs.BackendAddressPoolArgs
///             {
///                 Name = "be-lb",
///             },
///         },
///         FrontendIPConfigurations = new[]
///         {
///             new AzureNative.Network.Inputs.FrontendIPConfigurationArgs
///             {
///                 Name = "fe-lb",
///                 Subnet = new AzureNative.Network.Inputs.SubnetArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb",
///                 },
///                 Zones = new[]
///                 {
///                     "1",
///                 },
///             },
///         },
///         InboundNatPools = new[] {},
///         InboundNatRules = new[]
///         {
///             new AzureNative.Network.Inputs.InboundNatRuleArgs
///             {
///                 BackendPort = 3389,
///                 EnableFloatingIP = true,
///                 FrontendIPConfiguration = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///                 },
///                 FrontendPort = 3389,
///                 IdleTimeoutInMinutes = 15,
///                 Name = "in-nat-rule",
///                 Protocol = AzureNative.Network.TransportProtocol.Tcp,
///             },
///         },
///         LoadBalancerName = "lb",
///         LoadBalancingRules = new[]
///         {
///             new AzureNative.Network.Inputs.LoadBalancingRuleArgs
///             {
///                 BackendAddressPool = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb",
///                 },
///                 BackendPort = 80,
///                 EnableFloatingIP = true,
///                 FrontendIPConfiguration = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///                 },
///                 FrontendPort = 80,
///                 IdleTimeoutInMinutes = 15,
///                 LoadDistribution = AzureNative.Network.LoadDistribution.Default,
///                 Name = "rulelb",
///                 Probe = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb",
///                 },
///                 Protocol = AzureNative.Network.TransportProtocol.Tcp,
///             },
///         },
///         Location = "eastus",
///         OutboundRules = new[] {},
///         Probes = new[]
///         {
///             new AzureNative.Network.Inputs.ProbeArgs
///             {
///                 IntervalInSeconds = 15,
///                 Name = "probe-lb",
///                 NumberOfProbes = 2,
///                 Port = 80,
///                 ProbeThreshold = 1,
///                 Protocol = AzureNative.Network.ProbeProtocol.Http,
///                 RequestPath = "healthcheck.aspx",
///             },
///         },
///         ResourceGroupName = "rg1",
///         Sku = new AzureNative.Network.Inputs.LoadBalancerSkuArgs
///         {
///             Name = AzureNative.Network.LoadBalancerSkuName.Standard,
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
/// 		_, err := network.NewLoadBalancer(ctx, "loadBalancer", &network.LoadBalancerArgs{
/// 			BackendAddressPools: network.BackendAddressPoolArray{
/// 				&network.BackendAddressPoolArgs{
/// 					Name: pulumi.String("be-lb"),
/// 				},
/// 			},
/// 			FrontendIPConfigurations: network.FrontendIPConfigurationArray{
/// 				&network.FrontendIPConfigurationArgs{
/// 					Name: pulumi.String("fe-lb"),
/// 					Subnet: &network.SubnetTypeArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb"),
/// 					},
/// 					Zones: pulumi.StringArray{
/// 						pulumi.String("1"),
/// 					},
/// 				},
/// 			},
/// 			InboundNatPools: network.InboundNatPoolArray{},
/// 			InboundNatRules: network.InboundNatRuleTypeArray{
/// 				&network.InboundNatRuleTypeArgs{
/// 					BackendPort:      pulumi.Int(3389),
/// 					EnableFloatingIP: pulumi.Bool(true),
/// 					FrontendIPConfiguration: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb"),
/// 					},
/// 					FrontendPort:         pulumi.Int(3389),
/// 					IdleTimeoutInMinutes: pulumi.Int(15),
/// 					Name:                 pulumi.String("in-nat-rule"),
/// 					Protocol:             pulumi.String(network.TransportProtocolTcp),
/// 				},
/// 			},
/// 			LoadBalancerName: pulumi.String("lb"),
/// 			LoadBalancingRules: network.LoadBalancingRuleArray{
/// 				&network.LoadBalancingRuleArgs{
/// 					BackendAddressPool: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb"),
/// 					},
/// 					BackendPort:      pulumi.Int(80),
/// 					EnableFloatingIP: pulumi.Bool(true),
/// 					FrontendIPConfiguration: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb"),
/// 					},
/// 					FrontendPort:         pulumi.Int(80),
/// 					IdleTimeoutInMinutes: pulumi.Int(15),
/// 					LoadDistribution:     pulumi.String(network.LoadDistributionDefault),
/// 					Name:                 pulumi.String("rulelb"),
/// 					Probe: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb"),
/// 					},
/// 					Protocol: pulumi.String(network.TransportProtocolTcp),
/// 				},
/// 			},
/// 			Location:      pulumi.String("eastus"),
/// 			OutboundRules: network.OutboundRuleArray{},
/// 			Probes: network.ProbeArray{
/// 				&network.ProbeArgs{
/// 					IntervalInSeconds: pulumi.Int(15),
/// 					Name:              pulumi.String("probe-lb"),
/// 					NumberOfProbes:    pulumi.Int(2),
/// 					Port:              pulumi.Int(80),
/// 					ProbeThreshold:    pulumi.Int(1),
/// 					Protocol:          pulumi.String(network.ProbeProtocolHttp),
/// 					RequestPath:       pulumi.String("healthcheck.aspx"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Sku: &network.LoadBalancerSkuArgs{
/// 				Name: pulumi.String(network.LoadBalancerSkuNameStandard),
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
/// import com.pulumi.azurenative.network.LoadBalancer;
/// import com.pulumi.azurenative.network.LoadBalancerArgs;
/// import com.pulumi.azurenative.network.inputs.BackendAddressPoolArgs;
/// import com.pulumi.azurenative.network.inputs.FrontendIPConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.SubnetArgs;
/// import com.pulumi.azurenative.network.inputs.InboundNatRuleArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
/// import com.pulumi.azurenative.network.inputs.LoadBalancingRuleArgs;
/// import com.pulumi.azurenative.network.inputs.ProbeArgs;
/// import com.pulumi.azurenative.network.inputs.LoadBalancerSkuArgs;
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
///         var loadBalancer = new LoadBalancer("loadBalancer", LoadBalancerArgs.builder()
///             .backendAddressPools(BackendAddressPoolArgs.builder()
///                 .name("be-lb")
///                 .build())
///             .frontendIPConfigurations(FrontendIPConfigurationArgs.builder()
///                 .name("fe-lb")
///                 .subnet(SubnetArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb")
///                     .build())
///                 .zones("1")
///                 .build())
///             .inboundNatPools()
///             .inboundNatRules(InboundNatRuleArgs.builder()
///                 .backendPort(3389)
///                 .enableFloatingIP(true)
///                 .frontendIPConfiguration(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb")
///                     .build())
///                 .frontendPort(3389)
///                 .idleTimeoutInMinutes(15)
///                 .name("in-nat-rule")
///                 .protocol("Tcp")
///                 .build())
///             .loadBalancerName("lb")
///             .loadBalancingRules(LoadBalancingRuleArgs.builder()
///                 .backendAddressPool(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb")
///                     .build())
///                 .backendPort(80)
///                 .enableFloatingIP(true)
///                 .frontendIPConfiguration(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb")
///                     .build())
///                 .frontendPort(80)
///                 .idleTimeoutInMinutes(15)
///                 .loadDistribution("Default")
///                 .name("rulelb")
///                 .probe(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb")
///                     .build())
///                 .protocol("Tcp")
///                 .build())
///             .location("eastus")
///             .outboundRules()
///             .probes(ProbeArgs.builder()
///                 .intervalInSeconds(15)
///                 .name("probe-lb")
///                 .numberOfProbes(2)
///                 .port(80)
///                 .probeThreshold(1)
///                 .protocol("Http")
///                 .requestPath("healthcheck.aspx")
///                 .build())
///             .resourceGroupName("rg1")
///             .sku(LoadBalancerSkuArgs.builder()
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
/// const loadBalancer = new azure_native.network.LoadBalancer("loadBalancer", {
///     backendAddressPools: [{
///         name: "be-lb",
///     }],
///     frontendIPConfigurations: [{
///         name: "fe-lb",
///         subnet: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb",
///         },
///         zones: ["1"],
///     }],
///     inboundNatPools: [],
///     inboundNatRules: [{
///         backendPort: 3389,
///         enableFloatingIP: true,
///         frontendIPConfiguration: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///         },
///         frontendPort: 3389,
///         idleTimeoutInMinutes: 15,
///         name: "in-nat-rule",
///         protocol: azure_native.network.TransportProtocol.Tcp,
///     }],
///     loadBalancerName: "lb",
///     loadBalancingRules: [{
///         backendAddressPool: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb",
///         },
///         backendPort: 80,
///         enableFloatingIP: true,
///         frontendIPConfiguration: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///         },
///         frontendPort: 80,
///         idleTimeoutInMinutes: 15,
///         loadDistribution: azure_native.network.LoadDistribution.Default,
///         name: "rulelb",
///         probe: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb",
///         },
///         protocol: azure_native.network.TransportProtocol.Tcp,
///     }],
///     location: "eastus",
///     outboundRules: [],
///     probes: [{
///         intervalInSeconds: 15,
///         name: "probe-lb",
///         numberOfProbes: 2,
///         port: 80,
///         probeThreshold: 1,
///         protocol: azure_native.network.ProbeProtocol.Http,
///         requestPath: "healthcheck.aspx",
///     }],
///     resourceGroupName: "rg1",
///     sku: {
///         name: azure_native.network.LoadBalancerSkuName.Standard,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// load_balancer = azure_native.network.LoadBalancer("loadBalancer",
///     backend_address_pools=[{
///         "name": "be-lb",
///     }],
///     frontend_ip_configurations=[{
///         "name": "fe-lb",
///         "subnet": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb",
///         },
///         "zones": ["1"],
///     }],
///     inbound_nat_pools=[],
///     inbound_nat_rules=[{
///         "backend_port": 3389,
///         "enable_floating_ip": True,
///         "frontend_ip_configuration": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///         },
///         "frontend_port": 3389,
///         "idle_timeout_in_minutes": 15,
///         "name": "in-nat-rule",
///         "protocol": azure_native.network.TransportProtocol.TCP,
///     }],
///     load_balancer_name="lb",
///     load_balancing_rules=[{
///         "backend_address_pool": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb",
///         },
///         "backend_port": 80,
///         "enable_floating_ip": True,
///         "frontend_ip_configuration": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///         },
///         "frontend_port": 80,
///         "idle_timeout_in_minutes": 15,
///         "load_distribution": azure_native.network.LoadDistribution.DEFAULT,
///         "name": "rulelb",
///         "probe": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb",
///         },
///         "protocol": azure_native.network.TransportProtocol.TCP,
///     }],
///     location="eastus",
///     outbound_rules=[],
///     probes=[{
///         "interval_in_seconds": 15,
///         "name": "probe-lb",
///         "number_of_probes": 2,
///         "port": 80,
///         "probe_threshold": 1,
///         "protocol": azure_native.network.ProbeProtocol.HTTP,
///         "request_path": "healthcheck.aspx",
///     }],
///     resource_group_name="rg1",
///     sku={
///         "name": azure_native.network.LoadBalancerSkuName.STANDARD,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   loadBalancer:
///     type: azure-native:network:LoadBalancer
///     properties:
///       backendAddressPools:
///         - name: be-lb
///       frontendIPConfigurations:
///         - name: fe-lb
///           subnet:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb
///           zones:
///             - '1'
///       inboundNatPools: []
///       inboundNatRules:
///         - backendPort: 3389
///           enableFloatingIP: true
///           frontendIPConfiguration:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb
///           frontendPort: 3389
///           idleTimeoutInMinutes: 15
///           name: in-nat-rule
///           protocol: Tcp
///       loadBalancerName: lb
///       loadBalancingRules:
///         - backendAddressPool:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb
///           backendPort: 80
///           enableFloatingIP: true
///           frontendIPConfiguration:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb
///           frontendPort: 80
///           idleTimeoutInMinutes: 15
///           loadDistribution: Default
///           name: rulelb
///           probe:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb
///           protocol: Tcp
///       location: eastus
///       outboundRules: []
///       probes:
///         - intervalInSeconds: 15
///           name: probe-lb
///           numberOfProbes: 2
///           port: 80
///           probeThreshold: 1
///           protocol: Http
///           requestPath: healthcheck.aspx
///       resourceGroupName: rg1
///       sku:
///         name: Standard
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create load balancer with Gateway Load Balancer Consumer configured
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var loadBalancer = new AzureNative.Network.LoadBalancer("loadBalancer", new()
///     {
///         BackendAddressPools = new[]
///         {
///             new AzureNative.Network.Inputs.BackendAddressPoolArgs
///             {
///                 Name = "be-lb",
///             },
///         },
///         FrontendIPConfigurations = new[]
///         {
///             new AzureNative.Network.Inputs.FrontendIPConfigurationArgs
///             {
///                 GatewayLoadBalancer = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb-provider",
///                 },
///                 Name = "fe-lb",
///                 Subnet = new AzureNative.Network.Inputs.SubnetArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb",
///                 },
///             },
///         },
///         InboundNatPools = new[] {},
///         InboundNatRules = new[]
///         {
///             new AzureNative.Network.Inputs.InboundNatRuleArgs
///             {
///                 BackendPort = 3389,
///                 EnableFloatingIP = true,
///                 FrontendIPConfiguration = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///                 },
///                 FrontendPort = 3389,
///                 IdleTimeoutInMinutes = 15,
///                 Name = "in-nat-rule",
///                 Protocol = AzureNative.Network.TransportProtocol.Tcp,
///             },
///         },
///         LoadBalancerName = "lb",
///         LoadBalancingRules = new[]
///         {
///             new AzureNative.Network.Inputs.LoadBalancingRuleArgs
///             {
///                 BackendAddressPool = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb",
///                 },
///                 BackendPort = 80,
///                 EnableFloatingIP = true,
///                 FrontendIPConfiguration = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///                 },
///                 FrontendPort = 80,
///                 IdleTimeoutInMinutes = 15,
///                 LoadDistribution = AzureNative.Network.LoadDistribution.Default,
///                 Name = "rulelb",
///                 Probe = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb",
///                 },
///                 Protocol = AzureNative.Network.TransportProtocol.Tcp,
///             },
///         },
///         Location = "eastus",
///         OutboundRules = new[] {},
///         Probes = new[]
///         {
///             new AzureNative.Network.Inputs.ProbeArgs
///             {
///                 IntervalInSeconds = 15,
///                 Name = "probe-lb",
///                 NumberOfProbes = 2,
///                 Port = 80,
///                 ProbeThreshold = 1,
///                 Protocol = AzureNative.Network.ProbeProtocol.Http,
///                 RequestPath = "healthcheck.aspx",
///             },
///         },
///         ResourceGroupName = "rg1",
///         Sku = new AzureNative.Network.Inputs.LoadBalancerSkuArgs
///         {
///             Name = AzureNative.Network.LoadBalancerSkuName.Standard,
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
/// 		_, err := network.NewLoadBalancer(ctx, "loadBalancer", &network.LoadBalancerArgs{
/// 			BackendAddressPools: network.BackendAddressPoolArray{
/// 				&network.BackendAddressPoolArgs{
/// 					Name: pulumi.String("be-lb"),
/// 				},
/// 			},
/// 			FrontendIPConfigurations: network.FrontendIPConfigurationArray{
/// 				&network.FrontendIPConfigurationArgs{
/// 					GatewayLoadBalancer: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb-provider"),
/// 					},
/// 					Name: pulumi.String("fe-lb"),
/// 					Subnet: &network.SubnetTypeArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb"),
/// 					},
/// 				},
/// 			},
/// 			InboundNatPools: network.InboundNatPoolArray{},
/// 			InboundNatRules: network.InboundNatRuleTypeArray{
/// 				&network.InboundNatRuleTypeArgs{
/// 					BackendPort:      pulumi.Int(3389),
/// 					EnableFloatingIP: pulumi.Bool(true),
/// 					FrontendIPConfiguration: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb"),
/// 					},
/// 					FrontendPort:         pulumi.Int(3389),
/// 					IdleTimeoutInMinutes: pulumi.Int(15),
/// 					Name:                 pulumi.String("in-nat-rule"),
/// 					Protocol:             pulumi.String(network.TransportProtocolTcp),
/// 				},
/// 			},
/// 			LoadBalancerName: pulumi.String("lb"),
/// 			LoadBalancingRules: network.LoadBalancingRuleArray{
/// 				&network.LoadBalancingRuleArgs{
/// 					BackendAddressPool: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb"),
/// 					},
/// 					BackendPort:      pulumi.Int(80),
/// 					EnableFloatingIP: pulumi.Bool(true),
/// 					FrontendIPConfiguration: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb"),
/// 					},
/// 					FrontendPort:         pulumi.Int(80),
/// 					IdleTimeoutInMinutes: pulumi.Int(15),
/// 					LoadDistribution:     pulumi.String(network.LoadDistributionDefault),
/// 					Name:                 pulumi.String("rulelb"),
/// 					Probe: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb"),
/// 					},
/// 					Protocol: pulumi.String(network.TransportProtocolTcp),
/// 				},
/// 			},
/// 			Location:      pulumi.String("eastus"),
/// 			OutboundRules: network.OutboundRuleArray{},
/// 			Probes: network.ProbeArray{
/// 				&network.ProbeArgs{
/// 					IntervalInSeconds: pulumi.Int(15),
/// 					Name:              pulumi.String("probe-lb"),
/// 					NumberOfProbes:    pulumi.Int(2),
/// 					Port:              pulumi.Int(80),
/// 					ProbeThreshold:    pulumi.Int(1),
/// 					Protocol:          pulumi.String(network.ProbeProtocolHttp),
/// 					RequestPath:       pulumi.String("healthcheck.aspx"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Sku: &network.LoadBalancerSkuArgs{
/// 				Name: pulumi.String(network.LoadBalancerSkuNameStandard),
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
/// import com.pulumi.azurenative.network.LoadBalancer;
/// import com.pulumi.azurenative.network.LoadBalancerArgs;
/// import com.pulumi.azurenative.network.inputs.BackendAddressPoolArgs;
/// import com.pulumi.azurenative.network.inputs.FrontendIPConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
/// import com.pulumi.azurenative.network.inputs.SubnetArgs;
/// import com.pulumi.azurenative.network.inputs.InboundNatRuleArgs;
/// import com.pulumi.azurenative.network.inputs.LoadBalancingRuleArgs;
/// import com.pulumi.azurenative.network.inputs.ProbeArgs;
/// import com.pulumi.azurenative.network.inputs.LoadBalancerSkuArgs;
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
///         var loadBalancer = new LoadBalancer("loadBalancer", LoadBalancerArgs.builder()
///             .backendAddressPools(BackendAddressPoolArgs.builder()
///                 .name("be-lb")
///                 .build())
///             .frontendIPConfigurations(FrontendIPConfigurationArgs.builder()
///                 .gatewayLoadBalancer(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb-provider")
///                     .build())
///                 .name("fe-lb")
///                 .subnet(SubnetArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb")
///                     .build())
///                 .build())
///             .inboundNatPools()
///             .inboundNatRules(InboundNatRuleArgs.builder()
///                 .backendPort(3389)
///                 .enableFloatingIP(true)
///                 .frontendIPConfiguration(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb")
///                     .build())
///                 .frontendPort(3389)
///                 .idleTimeoutInMinutes(15)
///                 .name("in-nat-rule")
///                 .protocol("Tcp")
///                 .build())
///             .loadBalancerName("lb")
///             .loadBalancingRules(LoadBalancingRuleArgs.builder()
///                 .backendAddressPool(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb")
///                     .build())
///                 .backendPort(80)
///                 .enableFloatingIP(true)
///                 .frontendIPConfiguration(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb")
///                     .build())
///                 .frontendPort(80)
///                 .idleTimeoutInMinutes(15)
///                 .loadDistribution("Default")
///                 .name("rulelb")
///                 .probe(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb")
///                     .build())
///                 .protocol("Tcp")
///                 .build())
///             .location("eastus")
///             .outboundRules()
///             .probes(ProbeArgs.builder()
///                 .intervalInSeconds(15)
///                 .name("probe-lb")
///                 .numberOfProbes(2)
///                 .port(80)
///                 .probeThreshold(1)
///                 .protocol("Http")
///                 .requestPath("healthcheck.aspx")
///                 .build())
///             .resourceGroupName("rg1")
///             .sku(LoadBalancerSkuArgs.builder()
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
/// const loadBalancer = new azure_native.network.LoadBalancer("loadBalancer", {
///     backendAddressPools: [{
///         name: "be-lb",
///     }],
///     frontendIPConfigurations: [{
///         gatewayLoadBalancer: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb-provider",
///         },
///         name: "fe-lb",
///         subnet: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb",
///         },
///     }],
///     inboundNatPools: [],
///     inboundNatRules: [{
///         backendPort: 3389,
///         enableFloatingIP: true,
///         frontendIPConfiguration: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///         },
///         frontendPort: 3389,
///         idleTimeoutInMinutes: 15,
///         name: "in-nat-rule",
///         protocol: azure_native.network.TransportProtocol.Tcp,
///     }],
///     loadBalancerName: "lb",
///     loadBalancingRules: [{
///         backendAddressPool: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb",
///         },
///         backendPort: 80,
///         enableFloatingIP: true,
///         frontendIPConfiguration: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///         },
///         frontendPort: 80,
///         idleTimeoutInMinutes: 15,
///         loadDistribution: azure_native.network.LoadDistribution.Default,
///         name: "rulelb",
///         probe: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb",
///         },
///         protocol: azure_native.network.TransportProtocol.Tcp,
///     }],
///     location: "eastus",
///     outboundRules: [],
///     probes: [{
///         intervalInSeconds: 15,
///         name: "probe-lb",
///         numberOfProbes: 2,
///         port: 80,
///         probeThreshold: 1,
///         protocol: azure_native.network.ProbeProtocol.Http,
///         requestPath: "healthcheck.aspx",
///     }],
///     resourceGroupName: "rg1",
///     sku: {
///         name: azure_native.network.LoadBalancerSkuName.Standard,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// load_balancer = azure_native.network.LoadBalancer("loadBalancer",
///     backend_address_pools=[{
///         "name": "be-lb",
///     }],
///     frontend_ip_configurations=[{
///         "gateway_load_balancer": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb-provider",
///         },
///         "name": "fe-lb",
///         "subnet": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb",
///         },
///     }],
///     inbound_nat_pools=[],
///     inbound_nat_rules=[{
///         "backend_port": 3389,
///         "enable_floating_ip": True,
///         "frontend_ip_configuration": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///         },
///         "frontend_port": 3389,
///         "idle_timeout_in_minutes": 15,
///         "name": "in-nat-rule",
///         "protocol": azure_native.network.TransportProtocol.TCP,
///     }],
///     load_balancer_name="lb",
///     load_balancing_rules=[{
///         "backend_address_pool": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb",
///         },
///         "backend_port": 80,
///         "enable_floating_ip": True,
///         "frontend_ip_configuration": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///         },
///         "frontend_port": 80,
///         "idle_timeout_in_minutes": 15,
///         "load_distribution": azure_native.network.LoadDistribution.DEFAULT,
///         "name": "rulelb",
///         "probe": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb",
///         },
///         "protocol": azure_native.network.TransportProtocol.TCP,
///     }],
///     location="eastus",
///     outbound_rules=[],
///     probes=[{
///         "interval_in_seconds": 15,
///         "name": "probe-lb",
///         "number_of_probes": 2,
///         "port": 80,
///         "probe_threshold": 1,
///         "protocol": azure_native.network.ProbeProtocol.HTTP,
///         "request_path": "healthcheck.aspx",
///     }],
///     resource_group_name="rg1",
///     sku={
///         "name": azure_native.network.LoadBalancerSkuName.STANDARD,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   loadBalancer:
///     type: azure-native:network:LoadBalancer
///     properties:
///       backendAddressPools:
///         - name: be-lb
///       frontendIPConfigurations:
///         - gatewayLoadBalancer:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb-provider
///           name: fe-lb
///           subnet:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb
///       inboundNatPools: []
///       inboundNatRules:
///         - backendPort: 3389
///           enableFloatingIP: true
///           frontendIPConfiguration:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb
///           frontendPort: 3389
///           idleTimeoutInMinutes: 15
///           name: in-nat-rule
///           protocol: Tcp
///       loadBalancerName: lb
///       loadBalancingRules:
///         - backendAddressPool:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb
///           backendPort: 80
///           enableFloatingIP: true
///           frontendIPConfiguration:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb
///           frontendPort: 80
///           idleTimeoutInMinutes: 15
///           loadDistribution: Default
///           name: rulelb
///           probe:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb
///           protocol: Tcp
///       location: eastus
///       outboundRules: []
///       probes:
///         - intervalInSeconds: 15
///           name: probe-lb
///           numberOfProbes: 2
///           port: 80
///           probeThreshold: 1
///           protocol: Http
///           requestPath: healthcheck.aspx
///       resourceGroupName: rg1
///       sku:
///         name: Standard
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create load balancer with Gateway Load Balancer Provider configured with one Backend Pool
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var loadBalancer = new AzureNative.Network.LoadBalancer("loadBalancer", new()
///     {
///         BackendAddressPools = new[]
///         {
///             new AzureNative.Network.Inputs.BackendAddressPoolArgs
///             {
///                 Name = "be-lb",
///                 TunnelInterfaces = new[]
///                 {
///                     new AzureNative.Network.Inputs.GatewayLoadBalancerTunnelInterfaceArgs
///                     {
///                         Identifier = 900,
///                         Port = 15000,
///                         Protocol = AzureNative.Network.GatewayLoadBalancerTunnelProtocol.VXLAN,
///                         Type = AzureNative.Network.GatewayLoadBalancerTunnelInterfaceType.Internal,
///                     },
///                     new AzureNative.Network.Inputs.GatewayLoadBalancerTunnelInterfaceArgs
///                     {
///                         Identifier = 901,
///                         Port = 15001,
///                         Protocol = AzureNative.Network.GatewayLoadBalancerTunnelProtocol.VXLAN,
///                         Type = AzureNative.Network.GatewayLoadBalancerTunnelInterfaceType.Internal,
///                     },
///                 },
///             },
///         },
///         FrontendIPConfigurations = new[]
///         {
///             new AzureNative.Network.Inputs.FrontendIPConfigurationArgs
///             {
///                 Name = "fe-lb",
///                 Subnet = new AzureNative.Network.Inputs.SubnetArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb",
///                 },
///             },
///         },
///         InboundNatPools = new[] {},
///         LoadBalancerName = "lb",
///         LoadBalancingRules = new[]
///         {
///             new AzureNative.Network.Inputs.LoadBalancingRuleArgs
///             {
///                 BackendAddressPools = new[]
///                 {
///                     new AzureNative.Network.Inputs.SubResourceArgs
///                     {
///                         Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb",
///                     },
///                 },
///                 BackendPort = 0,
///                 EnableFloatingIP = true,
///                 FrontendIPConfiguration = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///                 },
///                 FrontendPort = 0,
///                 IdleTimeoutInMinutes = 15,
///                 LoadDistribution = AzureNative.Network.LoadDistribution.Default,
///                 Name = "rulelb",
///                 Probe = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb",
///                 },
///                 Protocol = AzureNative.Network.TransportProtocol.All,
///             },
///         },
///         Location = "eastus",
///         OutboundRules = new[] {},
///         Probes = new[]
///         {
///             new AzureNative.Network.Inputs.ProbeArgs
///             {
///                 IntervalInSeconds = 15,
///                 Name = "probe-lb",
///                 NumberOfProbes = 2,
///                 Port = 80,
///                 ProbeThreshold = 1,
///                 Protocol = AzureNative.Network.ProbeProtocol.Http,
///                 RequestPath = "healthcheck.aspx",
///             },
///         },
///         ResourceGroupName = "rg1",
///         Sku = new AzureNative.Network.Inputs.LoadBalancerSkuArgs
///         {
///             Name = AzureNative.Network.LoadBalancerSkuName.Gateway,
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
/// 		_, err := network.NewLoadBalancer(ctx, "loadBalancer", &network.LoadBalancerArgs{
/// 			BackendAddressPools: network.BackendAddressPoolArray{
/// 				&network.BackendAddressPoolArgs{
/// 					Name: pulumi.String("be-lb"),
/// 					TunnelInterfaces: network.GatewayLoadBalancerTunnelInterfaceArray{
/// 						&network.GatewayLoadBalancerTunnelInterfaceArgs{
/// 							Identifier: pulumi.Int(900),
/// 							Port:       pulumi.Int(15000),
/// 							Protocol:   pulumi.String(network.GatewayLoadBalancerTunnelProtocolVXLAN),
/// 							Type:       pulumi.String(network.GatewayLoadBalancerTunnelInterfaceTypeInternal),
/// 						},
/// 						&network.GatewayLoadBalancerTunnelInterfaceArgs{
/// 							Identifier: pulumi.Int(901),
/// 							Port:       pulumi.Int(15001),
/// 							Protocol:   pulumi.String(network.GatewayLoadBalancerTunnelProtocolVXLAN),
/// 							Type:       pulumi.String(network.GatewayLoadBalancerTunnelInterfaceTypeInternal),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			FrontendIPConfigurations: network.FrontendIPConfigurationArray{
/// 				&network.FrontendIPConfigurationArgs{
/// 					Name: pulumi.String("fe-lb"),
/// 					Subnet: &network.SubnetTypeArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb"),
/// 					},
/// 				},
/// 			},
/// 			InboundNatPools:  network.InboundNatPoolArray{},
/// 			LoadBalancerName: pulumi.String("lb"),
/// 			LoadBalancingRules: network.LoadBalancingRuleArray{
/// 				&network.LoadBalancingRuleArgs{
/// 					BackendAddressPools: network.SubResourceArray{
/// 						&network.SubResourceArgs{
/// 							Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb"),
/// 						},
/// 					},
/// 					BackendPort:      pulumi.Int(0),
/// 					EnableFloatingIP: pulumi.Bool(true),
/// 					FrontendIPConfiguration: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb"),
/// 					},
/// 					FrontendPort:         pulumi.Int(0),
/// 					IdleTimeoutInMinutes: pulumi.Int(15),
/// 					LoadDistribution:     pulumi.String(network.LoadDistributionDefault),
/// 					Name:                 pulumi.String("rulelb"),
/// 					Probe: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb"),
/// 					},
/// 					Protocol: pulumi.String(network.TransportProtocolAll),
/// 				},
/// 			},
/// 			Location:      pulumi.String("eastus"),
/// 			OutboundRules: network.OutboundRuleArray{},
/// 			Probes: network.ProbeArray{
/// 				&network.ProbeArgs{
/// 					IntervalInSeconds: pulumi.Int(15),
/// 					Name:              pulumi.String("probe-lb"),
/// 					NumberOfProbes:    pulumi.Int(2),
/// 					Port:              pulumi.Int(80),
/// 					ProbeThreshold:    pulumi.Int(1),
/// 					Protocol:          pulumi.String(network.ProbeProtocolHttp),
/// 					RequestPath:       pulumi.String("healthcheck.aspx"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Sku: &network.LoadBalancerSkuArgs{
/// 				Name: pulumi.String(network.LoadBalancerSkuNameGateway),
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
/// import com.pulumi.azurenative.network.LoadBalancer;
/// import com.pulumi.azurenative.network.LoadBalancerArgs;
/// import com.pulumi.azurenative.network.inputs.BackendAddressPoolArgs;
/// import com.pulumi.azurenative.network.inputs.FrontendIPConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.SubnetArgs;
/// import com.pulumi.azurenative.network.inputs.LoadBalancingRuleArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
/// import com.pulumi.azurenative.network.inputs.ProbeArgs;
/// import com.pulumi.azurenative.network.inputs.LoadBalancerSkuArgs;
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
///         var loadBalancer = new LoadBalancer("loadBalancer", LoadBalancerArgs.builder()
///             .backendAddressPools(BackendAddressPoolArgs.builder()
///                 .name("be-lb")
///                 .tunnelInterfaces(
///                     GatewayLoadBalancerTunnelInterfaceArgs.builder()
///                         .identifier(900)
///                         .port(15000)
///                         .protocol("VXLAN")
///                         .type("Internal")
///                         .build(),
///                     GatewayLoadBalancerTunnelInterfaceArgs.builder()
///                         .identifier(901)
///                         .port(15001)
///                         .protocol("VXLAN")
///                         .type("Internal")
///                         .build())
///                 .build())
///             .frontendIPConfigurations(FrontendIPConfigurationArgs.builder()
///                 .name("fe-lb")
///                 .subnet(SubnetArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb")
///                     .build())
///                 .build())
///             .inboundNatPools()
///             .loadBalancerName("lb")
///             .loadBalancingRules(LoadBalancingRuleArgs.builder()
///                 .backendAddressPools(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb")
///                     .build())
///                 .backendPort(0)
///                 .enableFloatingIP(true)
///                 .frontendIPConfiguration(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb")
///                     .build())
///                 .frontendPort(0)
///                 .idleTimeoutInMinutes(15)
///                 .loadDistribution("Default")
///                 .name("rulelb")
///                 .probe(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb")
///                     .build())
///                 .protocol("All")
///                 .build())
///             .location("eastus")
///             .outboundRules()
///             .probes(ProbeArgs.builder()
///                 .intervalInSeconds(15)
///                 .name("probe-lb")
///                 .numberOfProbes(2)
///                 .port(80)
///                 .probeThreshold(1)
///                 .protocol("Http")
///                 .requestPath("healthcheck.aspx")
///                 .build())
///             .resourceGroupName("rg1")
///             .sku(LoadBalancerSkuArgs.builder()
///                 .name("Gateway")
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
/// const loadBalancer = new azure_native.network.LoadBalancer("loadBalancer", {
///     backendAddressPools: [{
///         name: "be-lb",
///         tunnelInterfaces: [
///             {
///                 identifier: 900,
///                 port: 15000,
///                 protocol: azure_native.network.GatewayLoadBalancerTunnelProtocol.VXLAN,
///                 type: azure_native.network.GatewayLoadBalancerTunnelInterfaceType.Internal,
///             },
///             {
///                 identifier: 901,
///                 port: 15001,
///                 protocol: azure_native.network.GatewayLoadBalancerTunnelProtocol.VXLAN,
///                 type: azure_native.network.GatewayLoadBalancerTunnelInterfaceType.Internal,
///             },
///         ],
///     }],
///     frontendIPConfigurations: [{
///         name: "fe-lb",
///         subnet: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb",
///         },
///     }],
///     inboundNatPools: [],
///     loadBalancerName: "lb",
///     loadBalancingRules: [{
///         backendAddressPools: [{
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb",
///         }],
///         backendPort: 0,
///         enableFloatingIP: true,
///         frontendIPConfiguration: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///         },
///         frontendPort: 0,
///         idleTimeoutInMinutes: 15,
///         loadDistribution: azure_native.network.LoadDistribution.Default,
///         name: "rulelb",
///         probe: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb",
///         },
///         protocol: azure_native.network.TransportProtocol.All,
///     }],
///     location: "eastus",
///     outboundRules: [],
///     probes: [{
///         intervalInSeconds: 15,
///         name: "probe-lb",
///         numberOfProbes: 2,
///         port: 80,
///         probeThreshold: 1,
///         protocol: azure_native.network.ProbeProtocol.Http,
///         requestPath: "healthcheck.aspx",
///     }],
///     resourceGroupName: "rg1",
///     sku: {
///         name: azure_native.network.LoadBalancerSkuName.Gateway,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// load_balancer = azure_native.network.LoadBalancer("loadBalancer",
///     backend_address_pools=[{
///         "name": "be-lb",
///         "tunnel_interfaces": [
///             {
///                 "identifier": 900,
///                 "port": 15000,
///                 "protocol": azure_native.network.GatewayLoadBalancerTunnelProtocol.VXLAN,
///                 "type": azure_native.network.GatewayLoadBalancerTunnelInterfaceType.INTERNAL,
///             },
///             {
///                 "identifier": 901,
///                 "port": 15001,
///                 "protocol": azure_native.network.GatewayLoadBalancerTunnelProtocol.VXLAN,
///                 "type": azure_native.network.GatewayLoadBalancerTunnelInterfaceType.INTERNAL,
///             },
///         ],
///     }],
///     frontend_ip_configurations=[{
///         "name": "fe-lb",
///         "subnet": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb",
///         },
///     }],
///     inbound_nat_pools=[],
///     load_balancer_name="lb",
///     load_balancing_rules=[{
///         "backend_address_pools": [{
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb",
///         }],
///         "backend_port": 0,
///         "enable_floating_ip": True,
///         "frontend_ip_configuration": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///         },
///         "frontend_port": 0,
///         "idle_timeout_in_minutes": 15,
///         "load_distribution": azure_native.network.LoadDistribution.DEFAULT,
///         "name": "rulelb",
///         "probe": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb",
///         },
///         "protocol": azure_native.network.TransportProtocol.ALL,
///     }],
///     location="eastus",
///     outbound_rules=[],
///     probes=[{
///         "interval_in_seconds": 15,
///         "name": "probe-lb",
///         "number_of_probes": 2,
///         "port": 80,
///         "probe_threshold": 1,
///         "protocol": azure_native.network.ProbeProtocol.HTTP,
///         "request_path": "healthcheck.aspx",
///     }],
///     resource_group_name="rg1",
///     sku={
///         "name": azure_native.network.LoadBalancerSkuName.GATEWAY,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   loadBalancer:
///     type: azure-native:network:LoadBalancer
///     properties:
///       backendAddressPools:
///         - name: be-lb
///           tunnelInterfaces:
///             - identifier: 900
///               port: 15000
///               protocol: VXLAN
///               type: Internal
///             - identifier: 901
///               port: 15001
///               protocol: VXLAN
///               type: Internal
///       frontendIPConfigurations:
///         - name: fe-lb
///           subnet:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb
///       inboundNatPools: []
///       loadBalancerName: lb
///       loadBalancingRules:
///         - backendAddressPools:
///             - id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb
///           backendPort: 0
///           enableFloatingIP: true
///           frontendIPConfiguration:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb
///           frontendPort: 0
///           idleTimeoutInMinutes: 15
///           loadDistribution: Default
///           name: rulelb
///           probe:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb
///           protocol: All
///       location: eastus
///       outboundRules: []
///       probes:
///         - intervalInSeconds: 15
///           name: probe-lb
///           numberOfProbes: 2
///           port: 80
///           probeThreshold: 1
///           protocol: Http
///           requestPath: healthcheck.aspx
///       resourceGroupName: rg1
///       sku:
///         name: Gateway
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create load balancer with Gateway Load Balancer Provider configured with two Backend Pool
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var loadBalancer = new AzureNative.Network.LoadBalancer("loadBalancer", new()
///     {
///         BackendAddressPools = new[]
///         {
///             new AzureNative.Network.Inputs.BackendAddressPoolArgs
///             {
///                 Name = "be-lb1",
///             },
///             new AzureNative.Network.Inputs.BackendAddressPoolArgs
///             {
///                 Name = "be-lb2",
///             },
///         },
///         FrontendIPConfigurations = new[]
///         {
///             new AzureNative.Network.Inputs.FrontendIPConfigurationArgs
///             {
///                 Name = "fe-lb",
///                 Subnet = new AzureNative.Network.Inputs.SubnetArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb",
///                 },
///             },
///         },
///         InboundNatPools = new[] {},
///         LoadBalancerName = "lb",
///         LoadBalancingRules = new[]
///         {
///             new AzureNative.Network.Inputs.LoadBalancingRuleArgs
///             {
///                 BackendAddressPool = null,
///                 BackendAddressPools = new[]
///                 {
///                     new AzureNative.Network.Inputs.SubResourceArgs
///                     {
///                         Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb1",
///                     },
///                     new AzureNative.Network.Inputs.SubResourceArgs
///                     {
///                         Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb2",
///                     },
///                 },
///                 BackendPort = 0,
///                 EnableFloatingIP = true,
///                 FrontendIPConfiguration = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///                 },
///                 FrontendPort = 0,
///                 IdleTimeoutInMinutes = 15,
///                 LoadDistribution = AzureNative.Network.LoadDistribution.Default,
///                 Name = "rulelb",
///                 Probe = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb",
///                 },
///                 Protocol = AzureNative.Network.TransportProtocol.All,
///             },
///         },
///         Location = "eastus",
///         OutboundRules = new[] {},
///         Probes = new[]
///         {
///             new AzureNative.Network.Inputs.ProbeArgs
///             {
///                 IntervalInSeconds = 15,
///                 Name = "probe-lb",
///                 NumberOfProbes = 2,
///                 Port = 80,
///                 ProbeThreshold = 1,
///                 Protocol = AzureNative.Network.ProbeProtocol.Http,
///                 RequestPath = "healthcheck.aspx",
///             },
///         },
///         ResourceGroupName = "rg1",
///         Sku = new AzureNative.Network.Inputs.LoadBalancerSkuArgs
///         {
///             Name = AzureNative.Network.LoadBalancerSkuName.Gateway,
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
/// 		_, err := network.NewLoadBalancer(ctx, "loadBalancer", &network.LoadBalancerArgs{
/// 			BackendAddressPools: network.BackendAddressPoolArray{
/// 				&network.BackendAddressPoolArgs{
/// 					Name: pulumi.String("be-lb1"),
/// 				},
/// 				&network.BackendAddressPoolArgs{
/// 					Name: pulumi.String("be-lb2"),
/// 				},
/// 			},
/// 			FrontendIPConfigurations: network.FrontendIPConfigurationArray{
/// 				&network.FrontendIPConfigurationArgs{
/// 					Name: pulumi.String("fe-lb"),
/// 					Subnet: &network.SubnetTypeArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb"),
/// 					},
/// 				},
/// 			},
/// 			InboundNatPools:  network.InboundNatPoolArray{},
/// 			LoadBalancerName: pulumi.String("lb"),
/// 			LoadBalancingRules: network.LoadBalancingRuleArray{
/// 				&network.LoadBalancingRuleArgs{
/// 					BackendAddressPool: &network.SubResourceArgs{},
/// 					BackendAddressPools: network.SubResourceArray{
/// 						&network.SubResourceArgs{
/// 							Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb1"),
/// 						},
/// 						&network.SubResourceArgs{
/// 							Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb2"),
/// 						},
/// 					},
/// 					BackendPort:      pulumi.Int(0),
/// 					EnableFloatingIP: pulumi.Bool(true),
/// 					FrontendIPConfiguration: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb"),
/// 					},
/// 					FrontendPort:         pulumi.Int(0),
/// 					IdleTimeoutInMinutes: pulumi.Int(15),
/// 					LoadDistribution:     pulumi.String(network.LoadDistributionDefault),
/// 					Name:                 pulumi.String("rulelb"),
/// 					Probe: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb"),
/// 					},
/// 					Protocol: pulumi.String(network.TransportProtocolAll),
/// 				},
/// 			},
/// 			Location:      pulumi.String("eastus"),
/// 			OutboundRules: network.OutboundRuleArray{},
/// 			Probes: network.ProbeArray{
/// 				&network.ProbeArgs{
/// 					IntervalInSeconds: pulumi.Int(15),
/// 					Name:              pulumi.String("probe-lb"),
/// 					NumberOfProbes:    pulumi.Int(2),
/// 					Port:              pulumi.Int(80),
/// 					ProbeThreshold:    pulumi.Int(1),
/// 					Protocol:          pulumi.String(network.ProbeProtocolHttp),
/// 					RequestPath:       pulumi.String("healthcheck.aspx"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Sku: &network.LoadBalancerSkuArgs{
/// 				Name: pulumi.String(network.LoadBalancerSkuNameGateway),
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
/// import com.pulumi.azurenative.network.LoadBalancer;
/// import com.pulumi.azurenative.network.LoadBalancerArgs;
/// import com.pulumi.azurenative.network.inputs.BackendAddressPoolArgs;
/// import com.pulumi.azurenative.network.inputs.FrontendIPConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.SubnetArgs;
/// import com.pulumi.azurenative.network.inputs.LoadBalancingRuleArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
/// import com.pulumi.azurenative.network.inputs.ProbeArgs;
/// import com.pulumi.azurenative.network.inputs.LoadBalancerSkuArgs;
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
///         var loadBalancer = new LoadBalancer("loadBalancer", LoadBalancerArgs.builder()
///             .backendAddressPools(
///                 BackendAddressPoolArgs.builder()
///                     .name("be-lb1")
///                     .build(),
///                 BackendAddressPoolArgs.builder()
///                     .name("be-lb2")
///                     .build())
///             .frontendIPConfigurations(FrontendIPConfigurationArgs.builder()
///                 .name("fe-lb")
///                 .subnet(SubnetArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb")
///                     .build())
///                 .build())
///             .inboundNatPools()
///             .loadBalancerName("lb")
///             .loadBalancingRules(LoadBalancingRuleArgs.builder()
///                 .backendAddressPool(SubResourceArgs.builder()
///                     .build())
///                 .backendAddressPools(
///                     SubResourceArgs.builder()
///                         .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb1")
///                         .build(),
///                     SubResourceArgs.builder()
///                         .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb2")
///                         .build())
///                 .backendPort(0)
///                 .enableFloatingIP(true)
///                 .frontendIPConfiguration(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb")
///                     .build())
///                 .frontendPort(0)
///                 .idleTimeoutInMinutes(15)
///                 .loadDistribution("Default")
///                 .name("rulelb")
///                 .probe(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb")
///                     .build())
///                 .protocol("All")
///                 .build())
///             .location("eastus")
///             .outboundRules()
///             .probes(ProbeArgs.builder()
///                 .intervalInSeconds(15)
///                 .name("probe-lb")
///                 .numberOfProbes(2)
///                 .port(80)
///                 .probeThreshold(1)
///                 .protocol("Http")
///                 .requestPath("healthcheck.aspx")
///                 .build())
///             .resourceGroupName("rg1")
///             .sku(LoadBalancerSkuArgs.builder()
///                 .name("Gateway")
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
/// const loadBalancer = new azure_native.network.LoadBalancer("loadBalancer", {
///     backendAddressPools: [
///         {
///             name: "be-lb1",
///         },
///         {
///             name: "be-lb2",
///         },
///     ],
///     frontendIPConfigurations: [{
///         name: "fe-lb",
///         subnet: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb",
///         },
///     }],
///     inboundNatPools: [],
///     loadBalancerName: "lb",
///     loadBalancingRules: [{
///         backendAddressPool: {},
///         backendAddressPools: [
///             {
///                 id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb1",
///             },
///             {
///                 id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb2",
///             },
///         ],
///         backendPort: 0,
///         enableFloatingIP: true,
///         frontendIPConfiguration: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///         },
///         frontendPort: 0,
///         idleTimeoutInMinutes: 15,
///         loadDistribution: azure_native.network.LoadDistribution.Default,
///         name: "rulelb",
///         probe: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb",
///         },
///         protocol: azure_native.network.TransportProtocol.All,
///     }],
///     location: "eastus",
///     outboundRules: [],
///     probes: [{
///         intervalInSeconds: 15,
///         name: "probe-lb",
///         numberOfProbes: 2,
///         port: 80,
///         probeThreshold: 1,
///         protocol: azure_native.network.ProbeProtocol.Http,
///         requestPath: "healthcheck.aspx",
///     }],
///     resourceGroupName: "rg1",
///     sku: {
///         name: azure_native.network.LoadBalancerSkuName.Gateway,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// load_balancer = azure_native.network.LoadBalancer("loadBalancer",
///     backend_address_pools=[
///         {
///             "name": "be-lb1",
///         },
///         {
///             "name": "be-lb2",
///         },
///     ],
///     frontend_ip_configurations=[{
///         "name": "fe-lb",
///         "subnet": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb",
///         },
///     }],
///     inbound_nat_pools=[],
///     load_balancer_name="lb",
///     load_balancing_rules=[{
///         "backend_address_pool": {},
///         "backend_address_pools": [
///             {
///                 "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb1",
///             },
///             {
///                 "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb2",
///             },
///         ],
///         "backend_port": 0,
///         "enable_floating_ip": True,
///         "frontend_ip_configuration": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///         },
///         "frontend_port": 0,
///         "idle_timeout_in_minutes": 15,
///         "load_distribution": azure_native.network.LoadDistribution.DEFAULT,
///         "name": "rulelb",
///         "probe": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb",
///         },
///         "protocol": azure_native.network.TransportProtocol.ALL,
///     }],
///     location="eastus",
///     outbound_rules=[],
///     probes=[{
///         "interval_in_seconds": 15,
///         "name": "probe-lb",
///         "number_of_probes": 2,
///         "port": 80,
///         "probe_threshold": 1,
///         "protocol": azure_native.network.ProbeProtocol.HTTP,
///         "request_path": "healthcheck.aspx",
///     }],
///     resource_group_name="rg1",
///     sku={
///         "name": azure_native.network.LoadBalancerSkuName.GATEWAY,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   loadBalancer:
///     type: azure-native:network:LoadBalancer
///     properties:
///       backendAddressPools:
///         - name: be-lb1
///         - name: be-lb2
///       frontendIPConfigurations:
///         - name: fe-lb
///           subnet:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb
///       inboundNatPools: []
///       loadBalancerName: lb
///       loadBalancingRules:
///         - backendAddressPool: {}
///           backendAddressPools:
///             - id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb1
///             - id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb2
///           backendPort: 0
///           enableFloatingIP: true
///           frontendIPConfiguration:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb
///           frontendPort: 0
///           idleTimeoutInMinutes: 15
///           loadDistribution: Default
///           name: rulelb
///           probe:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb
///           protocol: All
///       location: eastus
///       outboundRules: []
///       probes:
///         - intervalInSeconds: 15
///           name: probe-lb
///           numberOfProbes: 2
///           port: 80
///           probeThreshold: 1
///           protocol: Http
///           requestPath: healthcheck.aspx
///       resourceGroupName: rg1
///       sku:
///         name: Gateway
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create load balancer with Global Tier and one regional load balancer in its backend pool
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var loadBalancer = new AzureNative.Network.LoadBalancer("loadBalancer", new()
///     {
///         BackendAddressPools = new[]
///         {
///             new AzureNative.Network.Inputs.BackendAddressPoolArgs
///             {
///                 LoadBalancerBackendAddresses = new[]
///                 {
///                     new AzureNative.Network.Inputs.LoadBalancerBackendAddressArgs
///                     {
///                         LoadBalancerFrontendIPConfiguration = new AzureNative.Network.Inputs.SubResourceArgs
///                         {
///                             Id = "/subscriptions/subid/resourceGroups/regional-lb-rg1/providers/Microsoft.Network/loadBalancers/regional-lb/frontendIPConfigurations/fe-rlb",
///                         },
///                         Name = "regional-lb1-address",
///                     },
///                 },
///                 Name = "be-lb",
///             },
///         },
///         FrontendIPConfigurations = new[]
///         {
///             new AzureNative.Network.Inputs.FrontendIPConfigurationArgs
///             {
///                 Name = "fe-lb",
///                 Subnet = new AzureNative.Network.Inputs.SubnetArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb",
///                 },
///             },
///         },
///         LoadBalancerName = "lb",
///         LoadBalancingRules = new[]
///         {
///             new AzureNative.Network.Inputs.LoadBalancingRuleArgs
///             {
///                 BackendAddressPool = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb",
///                 },
///                 BackendPort = 80,
///                 EnableFloatingIP = false,
///                 FrontendIPConfiguration = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///                 },
///                 FrontendPort = 80,
///                 IdleTimeoutInMinutes = 15,
///                 LoadDistribution = AzureNative.Network.LoadDistribution.Default,
///                 Name = "rulelb",
///                 Probe = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb",
///                 },
///                 Protocol = AzureNative.Network.TransportProtocol.Tcp,
///             },
///         },
///         Location = "eastus",
///         Probes = new[]
///         {
///             new AzureNative.Network.Inputs.ProbeArgs
///             {
///                 IntervalInSeconds = 15,
///                 Name = "probe-lb",
///                 NumberOfProbes = 2,
///                 Port = 80,
///                 ProbeThreshold = 1,
///                 Protocol = AzureNative.Network.ProbeProtocol.Http,
///                 RequestPath = "healthcheck.aspx",
///             },
///         },
///         ResourceGroupName = "rg1",
///         Sku = new AzureNative.Network.Inputs.LoadBalancerSkuArgs
///         {
///             Name = AzureNative.Network.LoadBalancerSkuName.Standard,
///             Tier = AzureNative.Network.LoadBalancerSkuTier.Global,
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
/// 		_, err := network.NewLoadBalancer(ctx, "loadBalancer", &network.LoadBalancerArgs{
/// 			BackendAddressPools: network.BackendAddressPoolArray{
/// 				&network.BackendAddressPoolArgs{
/// 					LoadBalancerBackendAddresses: network.LoadBalancerBackendAddressArray{
/// 						&network.LoadBalancerBackendAddressArgs{
/// 							LoadBalancerFrontendIPConfiguration: &network.SubResourceArgs{
/// 								Id: pulumi.String("/subscriptions/subid/resourceGroups/regional-lb-rg1/providers/Microsoft.Network/loadBalancers/regional-lb/frontendIPConfigurations/fe-rlb"),
/// 							},
/// 							Name: pulumi.String("regional-lb1-address"),
/// 						},
/// 					},
/// 					Name: pulumi.String("be-lb"),
/// 				},
/// 			},
/// 			FrontendIPConfigurations: network.FrontendIPConfigurationArray{
/// 				&network.FrontendIPConfigurationArgs{
/// 					Name: pulumi.String("fe-lb"),
/// 					Subnet: &network.SubnetTypeArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb"),
/// 					},
/// 				},
/// 			},
/// 			LoadBalancerName: pulumi.String("lb"),
/// 			LoadBalancingRules: network.LoadBalancingRuleArray{
/// 				&network.LoadBalancingRuleArgs{
/// 					BackendAddressPool: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb"),
/// 					},
/// 					BackendPort:      pulumi.Int(80),
/// 					EnableFloatingIP: pulumi.Bool(false),
/// 					FrontendIPConfiguration: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb"),
/// 					},
/// 					FrontendPort:         pulumi.Int(80),
/// 					IdleTimeoutInMinutes: pulumi.Int(15),
/// 					LoadDistribution:     pulumi.String(network.LoadDistributionDefault),
/// 					Name:                 pulumi.String("rulelb"),
/// 					Probe: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb"),
/// 					},
/// 					Protocol: pulumi.String(network.TransportProtocolTcp),
/// 				},
/// 			},
/// 			Location: pulumi.String("eastus"),
/// 			Probes: network.ProbeArray{
/// 				&network.ProbeArgs{
/// 					IntervalInSeconds: pulumi.Int(15),
/// 					Name:              pulumi.String("probe-lb"),
/// 					NumberOfProbes:    pulumi.Int(2),
/// 					Port:              pulumi.Int(80),
/// 					ProbeThreshold:    pulumi.Int(1),
/// 					Protocol:          pulumi.String(network.ProbeProtocolHttp),
/// 					RequestPath:       pulumi.String("healthcheck.aspx"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Sku: &network.LoadBalancerSkuArgs{
/// 				Name: pulumi.String(network.LoadBalancerSkuNameStandard),
/// 				Tier: pulumi.String(network.LoadBalancerSkuTierGlobal),
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
/// import com.pulumi.azurenative.network.LoadBalancer;
/// import com.pulumi.azurenative.network.LoadBalancerArgs;
/// import com.pulumi.azurenative.network.inputs.BackendAddressPoolArgs;
/// import com.pulumi.azurenative.network.inputs.FrontendIPConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.SubnetArgs;
/// import com.pulumi.azurenative.network.inputs.LoadBalancingRuleArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
/// import com.pulumi.azurenative.network.inputs.ProbeArgs;
/// import com.pulumi.azurenative.network.inputs.LoadBalancerSkuArgs;
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
///         var loadBalancer = new LoadBalancer("loadBalancer", LoadBalancerArgs.builder()
///             .backendAddressPools(BackendAddressPoolArgs.builder()
///                 .loadBalancerBackendAddresses(LoadBalancerBackendAddressArgs.builder()
///                     .loadBalancerFrontendIPConfiguration(SubResourceArgs.builder()
///                         .id("/subscriptions/subid/resourceGroups/regional-lb-rg1/providers/Microsoft.Network/loadBalancers/regional-lb/frontendIPConfigurations/fe-rlb")
///                         .build())
///                     .name("regional-lb1-address")
///                     .build())
///                 .name("be-lb")
///                 .build())
///             .frontendIPConfigurations(FrontendIPConfigurationArgs.builder()
///                 .name("fe-lb")
///                 .subnet(SubnetArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb")
///                     .build())
///                 .build())
///             .loadBalancerName("lb")
///             .loadBalancingRules(LoadBalancingRuleArgs.builder()
///                 .backendAddressPool(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb")
///                     .build())
///                 .backendPort(80)
///                 .enableFloatingIP(false)
///                 .frontendIPConfiguration(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb")
///                     .build())
///                 .frontendPort(80)
///                 .idleTimeoutInMinutes(15)
///                 .loadDistribution("Default")
///                 .name("rulelb")
///                 .probe(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb")
///                     .build())
///                 .protocol("Tcp")
///                 .build())
///             .location("eastus")
///             .probes(ProbeArgs.builder()
///                 .intervalInSeconds(15)
///                 .name("probe-lb")
///                 .numberOfProbes(2)
///                 .port(80)
///                 .probeThreshold(1)
///                 .protocol("Http")
///                 .requestPath("healthcheck.aspx")
///                 .build())
///             .resourceGroupName("rg1")
///             .sku(LoadBalancerSkuArgs.builder()
///                 .name("Standard")
///                 .tier("Global")
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
/// const loadBalancer = new azure_native.network.LoadBalancer("loadBalancer", {
///     backendAddressPools: [{
///         loadBalancerBackendAddresses: [{
///             loadBalancerFrontendIPConfiguration: {
///                 id: "/subscriptions/subid/resourceGroups/regional-lb-rg1/providers/Microsoft.Network/loadBalancers/regional-lb/frontendIPConfigurations/fe-rlb",
///             },
///             name: "regional-lb1-address",
///         }],
///         name: "be-lb",
///     }],
///     frontendIPConfigurations: [{
///         name: "fe-lb",
///         subnet: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb",
///         },
///     }],
///     loadBalancerName: "lb",
///     loadBalancingRules: [{
///         backendAddressPool: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb",
///         },
///         backendPort: 80,
///         enableFloatingIP: false,
///         frontendIPConfiguration: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///         },
///         frontendPort: 80,
///         idleTimeoutInMinutes: 15,
///         loadDistribution: azure_native.network.LoadDistribution.Default,
///         name: "rulelb",
///         probe: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb",
///         },
///         protocol: azure_native.network.TransportProtocol.Tcp,
///     }],
///     location: "eastus",
///     probes: [{
///         intervalInSeconds: 15,
///         name: "probe-lb",
///         numberOfProbes: 2,
///         port: 80,
///         probeThreshold: 1,
///         protocol: azure_native.network.ProbeProtocol.Http,
///         requestPath: "healthcheck.aspx",
///     }],
///     resourceGroupName: "rg1",
///     sku: {
///         name: azure_native.network.LoadBalancerSkuName.Standard,
///         tier: azure_native.network.LoadBalancerSkuTier.Global,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// load_balancer = azure_native.network.LoadBalancer("loadBalancer",
///     backend_address_pools=[{
///         "load_balancer_backend_addresses": [{
///             "load_balancer_frontend_ip_configuration": {
///                 "id": "/subscriptions/subid/resourceGroups/regional-lb-rg1/providers/Microsoft.Network/loadBalancers/regional-lb/frontendIPConfigurations/fe-rlb",
///             },
///             "name": "regional-lb1-address",
///         }],
///         "name": "be-lb",
///     }],
///     frontend_ip_configurations=[{
///         "name": "fe-lb",
///         "subnet": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb",
///         },
///     }],
///     load_balancer_name="lb",
///     load_balancing_rules=[{
///         "backend_address_pool": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb",
///         },
///         "backend_port": 80,
///         "enable_floating_ip": False,
///         "frontend_ip_configuration": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///         },
///         "frontend_port": 80,
///         "idle_timeout_in_minutes": 15,
///         "load_distribution": azure_native.network.LoadDistribution.DEFAULT,
///         "name": "rulelb",
///         "probe": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb",
///         },
///         "protocol": azure_native.network.TransportProtocol.TCP,
///     }],
///     location="eastus",
///     probes=[{
///         "interval_in_seconds": 15,
///         "name": "probe-lb",
///         "number_of_probes": 2,
///         "port": 80,
///         "probe_threshold": 1,
///         "protocol": azure_native.network.ProbeProtocol.HTTP,
///         "request_path": "healthcheck.aspx",
///     }],
///     resource_group_name="rg1",
///     sku={
///         "name": azure_native.network.LoadBalancerSkuName.STANDARD,
///         "tier": azure_native.network.LoadBalancerSkuTier.GLOBAL_,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   loadBalancer:
///     type: azure-native:network:LoadBalancer
///     properties:
///       backendAddressPools:
///         - loadBalancerBackendAddresses:
///             - loadBalancerFrontendIPConfiguration:
///                 id: /subscriptions/subid/resourceGroups/regional-lb-rg1/providers/Microsoft.Network/loadBalancers/regional-lb/frontendIPConfigurations/fe-rlb
///               name: regional-lb1-address
///           name: be-lb
///       frontendIPConfigurations:
///         - name: fe-lb
///           subnet:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb
///       loadBalancerName: lb
///       loadBalancingRules:
///         - backendAddressPool:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb
///           backendPort: 80
///           enableFloatingIP: false
///           frontendIPConfiguration:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb
///           frontendPort: 80
///           idleTimeoutInMinutes: 15
///           loadDistribution: Default
///           name: rulelb
///           probe:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb
///           protocol: Tcp
///       location: eastus
///       probes:
///         - intervalInSeconds: 15
///           name: probe-lb
///           numberOfProbes: 2
///           port: 80
///           probeThreshold: 1
///           protocol: Http
///           requestPath: healthcheck.aspx
///       resourceGroupName: rg1
///       sku:
///         name: Standard
///         tier: Global
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create load balancer with Standard SKU
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var loadBalancer = new AzureNative.Network.LoadBalancer("loadBalancer", new()
///     {
///         BackendAddressPools = new[]
///         {
///             new AzureNative.Network.Inputs.BackendAddressPoolArgs
///             {
///                 Name = "be-lb",
///             },
///         },
///         FrontendIPConfigurations = new[]
///         {
///             new AzureNative.Network.Inputs.FrontendIPConfigurationArgs
///             {
///                 Name = "fe-lb",
///                 Subnet = new AzureNative.Network.Inputs.SubnetArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb",
///                 },
///             },
///         },
///         InboundNatPools = new[] {},
///         InboundNatRules = new[]
///         {
///             new AzureNative.Network.Inputs.InboundNatRuleArgs
///             {
///                 BackendPort = 3389,
///                 EnableFloatingIP = true,
///                 FrontendIPConfiguration = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///                 },
///                 FrontendPort = 3389,
///                 IdleTimeoutInMinutes = 15,
///                 Name = "in-nat-rule",
///                 Protocol = AzureNative.Network.TransportProtocol.Tcp,
///             },
///         },
///         LoadBalancerName = "lb",
///         LoadBalancingRules = new[]
///         {
///             new AzureNative.Network.Inputs.LoadBalancingRuleArgs
///             {
///                 BackendAddressPool = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb",
///                 },
///                 BackendPort = 80,
///                 EnableFloatingIP = true,
///                 FrontendIPConfiguration = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///                 },
///                 FrontendPort = 80,
///                 IdleTimeoutInMinutes = 15,
///                 LoadDistribution = AzureNative.Network.LoadDistribution.Default,
///                 Name = "rulelb",
///                 Probe = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb",
///                 },
///                 Protocol = AzureNative.Network.TransportProtocol.Tcp,
///             },
///         },
///         Location = "eastus",
///         OutboundRules = new[] {},
///         Probes = new[]
///         {
///             new AzureNative.Network.Inputs.ProbeArgs
///             {
///                 IntervalInSeconds = 15,
///                 Name = "probe-lb",
///                 NumberOfProbes = 2,
///                 Port = 80,
///                 ProbeThreshold = 1,
///                 Protocol = AzureNative.Network.ProbeProtocol.Http,
///                 RequestPath = "healthcheck.aspx",
///             },
///         },
///         ResourceGroupName = "rg1",
///         Sku = new AzureNative.Network.Inputs.LoadBalancerSkuArgs
///         {
///             Name = AzureNative.Network.LoadBalancerSkuName.Standard,
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
/// 		_, err := network.NewLoadBalancer(ctx, "loadBalancer", &network.LoadBalancerArgs{
/// 			BackendAddressPools: network.BackendAddressPoolArray{
/// 				&network.BackendAddressPoolArgs{
/// 					Name: pulumi.String("be-lb"),
/// 				},
/// 			},
/// 			FrontendIPConfigurations: network.FrontendIPConfigurationArray{
/// 				&network.FrontendIPConfigurationArgs{
/// 					Name: pulumi.String("fe-lb"),
/// 					Subnet: &network.SubnetTypeArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb"),
/// 					},
/// 				},
/// 			},
/// 			InboundNatPools: network.InboundNatPoolArray{},
/// 			InboundNatRules: network.InboundNatRuleTypeArray{
/// 				&network.InboundNatRuleTypeArgs{
/// 					BackendPort:      pulumi.Int(3389),
/// 					EnableFloatingIP: pulumi.Bool(true),
/// 					FrontendIPConfiguration: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb"),
/// 					},
/// 					FrontendPort:         pulumi.Int(3389),
/// 					IdleTimeoutInMinutes: pulumi.Int(15),
/// 					Name:                 pulumi.String("in-nat-rule"),
/// 					Protocol:             pulumi.String(network.TransportProtocolTcp),
/// 				},
/// 			},
/// 			LoadBalancerName: pulumi.String("lb"),
/// 			LoadBalancingRules: network.LoadBalancingRuleArray{
/// 				&network.LoadBalancingRuleArgs{
/// 					BackendAddressPool: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb"),
/// 					},
/// 					BackendPort:      pulumi.Int(80),
/// 					EnableFloatingIP: pulumi.Bool(true),
/// 					FrontendIPConfiguration: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb"),
/// 					},
/// 					FrontendPort:         pulumi.Int(80),
/// 					IdleTimeoutInMinutes: pulumi.Int(15),
/// 					LoadDistribution:     pulumi.String(network.LoadDistributionDefault),
/// 					Name:                 pulumi.String("rulelb"),
/// 					Probe: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb"),
/// 					},
/// 					Protocol: pulumi.String(network.TransportProtocolTcp),
/// 				},
/// 			},
/// 			Location:      pulumi.String("eastus"),
/// 			OutboundRules: network.OutboundRuleArray{},
/// 			Probes: network.ProbeArray{
/// 				&network.ProbeArgs{
/// 					IntervalInSeconds: pulumi.Int(15),
/// 					Name:              pulumi.String("probe-lb"),
/// 					NumberOfProbes:    pulumi.Int(2),
/// 					Port:              pulumi.Int(80),
/// 					ProbeThreshold:    pulumi.Int(1),
/// 					Protocol:          pulumi.String(network.ProbeProtocolHttp),
/// 					RequestPath:       pulumi.String("healthcheck.aspx"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Sku: &network.LoadBalancerSkuArgs{
/// 				Name: pulumi.String(network.LoadBalancerSkuNameStandard),
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
/// import com.pulumi.azurenative.network.LoadBalancer;
/// import com.pulumi.azurenative.network.LoadBalancerArgs;
/// import com.pulumi.azurenative.network.inputs.BackendAddressPoolArgs;
/// import com.pulumi.azurenative.network.inputs.FrontendIPConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.SubnetArgs;
/// import com.pulumi.azurenative.network.inputs.InboundNatRuleArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
/// import com.pulumi.azurenative.network.inputs.LoadBalancingRuleArgs;
/// import com.pulumi.azurenative.network.inputs.ProbeArgs;
/// import com.pulumi.azurenative.network.inputs.LoadBalancerSkuArgs;
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
///         var loadBalancer = new LoadBalancer("loadBalancer", LoadBalancerArgs.builder()
///             .backendAddressPools(BackendAddressPoolArgs.builder()
///                 .name("be-lb")
///                 .build())
///             .frontendIPConfigurations(FrontendIPConfigurationArgs.builder()
///                 .name("fe-lb")
///                 .subnet(SubnetArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb")
///                     .build())
///                 .build())
///             .inboundNatPools()
///             .inboundNatRules(InboundNatRuleArgs.builder()
///                 .backendPort(3389)
///                 .enableFloatingIP(true)
///                 .frontendIPConfiguration(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb")
///                     .build())
///                 .frontendPort(3389)
///                 .idleTimeoutInMinutes(15)
///                 .name("in-nat-rule")
///                 .protocol("Tcp")
///                 .build())
///             .loadBalancerName("lb")
///             .loadBalancingRules(LoadBalancingRuleArgs.builder()
///                 .backendAddressPool(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb")
///                     .build())
///                 .backendPort(80)
///                 .enableFloatingIP(true)
///                 .frontendIPConfiguration(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb")
///                     .build())
///                 .frontendPort(80)
///                 .idleTimeoutInMinutes(15)
///                 .loadDistribution("Default")
///                 .name("rulelb")
///                 .probe(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb")
///                     .build())
///                 .protocol("Tcp")
///                 .build())
///             .location("eastus")
///             .outboundRules()
///             .probes(ProbeArgs.builder()
///                 .intervalInSeconds(15)
///                 .name("probe-lb")
///                 .numberOfProbes(2)
///                 .port(80)
///                 .probeThreshold(1)
///                 .protocol("Http")
///                 .requestPath("healthcheck.aspx")
///                 .build())
///             .resourceGroupName("rg1")
///             .sku(LoadBalancerSkuArgs.builder()
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
/// const loadBalancer = new azure_native.network.LoadBalancer("loadBalancer", {
///     backendAddressPools: [{
///         name: "be-lb",
///     }],
///     frontendIPConfigurations: [{
///         name: "fe-lb",
///         subnet: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb",
///         },
///     }],
///     inboundNatPools: [],
///     inboundNatRules: [{
///         backendPort: 3389,
///         enableFloatingIP: true,
///         frontendIPConfiguration: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///         },
///         frontendPort: 3389,
///         idleTimeoutInMinutes: 15,
///         name: "in-nat-rule",
///         protocol: azure_native.network.TransportProtocol.Tcp,
///     }],
///     loadBalancerName: "lb",
///     loadBalancingRules: [{
///         backendAddressPool: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb",
///         },
///         backendPort: 80,
///         enableFloatingIP: true,
///         frontendIPConfiguration: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///         },
///         frontendPort: 80,
///         idleTimeoutInMinutes: 15,
///         loadDistribution: azure_native.network.LoadDistribution.Default,
///         name: "rulelb",
///         probe: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb",
///         },
///         protocol: azure_native.network.TransportProtocol.Tcp,
///     }],
///     location: "eastus",
///     outboundRules: [],
///     probes: [{
///         intervalInSeconds: 15,
///         name: "probe-lb",
///         numberOfProbes: 2,
///         port: 80,
///         probeThreshold: 1,
///         protocol: azure_native.network.ProbeProtocol.Http,
///         requestPath: "healthcheck.aspx",
///     }],
///     resourceGroupName: "rg1",
///     sku: {
///         name: azure_native.network.LoadBalancerSkuName.Standard,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// load_balancer = azure_native.network.LoadBalancer("loadBalancer",
///     backend_address_pools=[{
///         "name": "be-lb",
///     }],
///     frontend_ip_configurations=[{
///         "name": "fe-lb",
///         "subnet": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb",
///         },
///     }],
///     inbound_nat_pools=[],
///     inbound_nat_rules=[{
///         "backend_port": 3389,
///         "enable_floating_ip": True,
///         "frontend_ip_configuration": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///         },
///         "frontend_port": 3389,
///         "idle_timeout_in_minutes": 15,
///         "name": "in-nat-rule",
///         "protocol": azure_native.network.TransportProtocol.TCP,
///     }],
///     load_balancer_name="lb",
///     load_balancing_rules=[{
///         "backend_address_pool": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb",
///         },
///         "backend_port": 80,
///         "enable_floating_ip": True,
///         "frontend_ip_configuration": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///         },
///         "frontend_port": 80,
///         "idle_timeout_in_minutes": 15,
///         "load_distribution": azure_native.network.LoadDistribution.DEFAULT,
///         "name": "rulelb",
///         "probe": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb",
///         },
///         "protocol": azure_native.network.TransportProtocol.TCP,
///     }],
///     location="eastus",
///     outbound_rules=[],
///     probes=[{
///         "interval_in_seconds": 15,
///         "name": "probe-lb",
///         "number_of_probes": 2,
///         "port": 80,
///         "probe_threshold": 1,
///         "protocol": azure_native.network.ProbeProtocol.HTTP,
///         "request_path": "healthcheck.aspx",
///     }],
///     resource_group_name="rg1",
///     sku={
///         "name": azure_native.network.LoadBalancerSkuName.STANDARD,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   loadBalancer:
///     type: azure-native:network:LoadBalancer
///     properties:
///       backendAddressPools:
///         - name: be-lb
///       frontendIPConfigurations:
///         - name: fe-lb
///           subnet:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb
///       inboundNatPools: []
///       inboundNatRules:
///         - backendPort: 3389
///           enableFloatingIP: true
///           frontendIPConfiguration:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb
///           frontendPort: 3389
///           idleTimeoutInMinutes: 15
///           name: in-nat-rule
///           protocol: Tcp
///       loadBalancerName: lb
///       loadBalancingRules:
///         - backendAddressPool:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb
///           backendPort: 80
///           enableFloatingIP: true
///           frontendIPConfiguration:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb
///           frontendPort: 80
///           idleTimeoutInMinutes: 15
///           loadDistribution: Default
///           name: rulelb
///           probe:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb
///           protocol: Tcp
///       location: eastus
///       outboundRules: []
///       probes:
///         - intervalInSeconds: 15
///           name: probe-lb
///           numberOfProbes: 2
///           port: 80
///           probeThreshold: 1
///           protocol: Http
///           requestPath: healthcheck.aspx
///       resourceGroupName: rg1
///       sku:
///         name: Standard
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create load balancer with Sync Mode Property on Pool
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var loadBalancer = new AzureNative.Network.LoadBalancer("loadBalancer", new()
///     {
///         BackendAddressPools = new[]
///         {
///             new AzureNative.Network.Inputs.BackendAddressPoolArgs
///             {
///                 Name = "be-lb",
///                 SyncMode = AzureNative.Network.SyncMode.Automatic,
///                 VirtualNetwork = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb",
///                 },
///             },
///         },
///         FrontendIPConfigurations = new[]
///         {
///             new AzureNative.Network.Inputs.FrontendIPConfigurationArgs
///             {
///                 Name = "fe-lb",
///                 Subnet = new AzureNative.Network.Inputs.SubnetArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb",
///                 },
///             },
///         },
///         InboundNatPools = new[] {},
///         InboundNatRules = new[]
///         {
///             new AzureNative.Network.Inputs.InboundNatRuleArgs
///             {
///                 BackendPort = 3389,
///                 EnableFloatingIP = true,
///                 FrontendIPConfiguration = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///                 },
///                 FrontendPort = 3389,
///                 IdleTimeoutInMinutes = 15,
///                 Name = "in-nat-rule",
///                 Protocol = AzureNative.Network.TransportProtocol.Tcp,
///             },
///         },
///         LoadBalancerName = "lb",
///         LoadBalancingRules = new[]
///         {
///             new AzureNative.Network.Inputs.LoadBalancingRuleArgs
///             {
///                 BackendAddressPool = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb",
///                 },
///                 BackendPort = 80,
///                 EnableFloatingIP = true,
///                 FrontendIPConfiguration = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///                 },
///                 FrontendPort = 80,
///                 IdleTimeoutInMinutes = 15,
///                 LoadDistribution = AzureNative.Network.LoadDistribution.Default,
///                 Name = "rulelb",
///                 Probe = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb",
///                 },
///                 Protocol = AzureNative.Network.TransportProtocol.Tcp,
///             },
///         },
///         Location = "eastus",
///         OutboundRules = new[] {},
///         Probes = new[]
///         {
///             new AzureNative.Network.Inputs.ProbeArgs
///             {
///                 IntervalInSeconds = 15,
///                 Name = "probe-lb",
///                 NumberOfProbes = 2,
///                 Port = 80,
///                 ProbeThreshold = 1,
///                 Protocol = AzureNative.Network.ProbeProtocol.Http,
///                 RequestPath = "healthcheck.aspx",
///             },
///         },
///         ResourceGroupName = "rg1",
///         Sku = new AzureNative.Network.Inputs.LoadBalancerSkuArgs
///         {
///             Name = AzureNative.Network.LoadBalancerSkuName.Standard,
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
/// 		_, err := network.NewLoadBalancer(ctx, "loadBalancer", &network.LoadBalancerArgs{
/// 			BackendAddressPools: network.BackendAddressPoolArray{
/// 				&network.BackendAddressPoolArgs{
/// 					Name:     pulumi.String("be-lb"),
/// 					SyncMode: pulumi.String(network.SyncModeAutomatic),
/// 					VirtualNetwork: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb"),
/// 					},
/// 				},
/// 			},
/// 			FrontendIPConfigurations: network.FrontendIPConfigurationArray{
/// 				&network.FrontendIPConfigurationArgs{
/// 					Name: pulumi.String("fe-lb"),
/// 					Subnet: &network.SubnetTypeArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb"),
/// 					},
/// 				},
/// 			},
/// 			InboundNatPools: network.InboundNatPoolArray{},
/// 			InboundNatRules: network.InboundNatRuleTypeArray{
/// 				&network.InboundNatRuleTypeArgs{
/// 					BackendPort:      pulumi.Int(3389),
/// 					EnableFloatingIP: pulumi.Bool(true),
/// 					FrontendIPConfiguration: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb"),
/// 					},
/// 					FrontendPort:         pulumi.Int(3389),
/// 					IdleTimeoutInMinutes: pulumi.Int(15),
/// 					Name:                 pulumi.String("in-nat-rule"),
/// 					Protocol:             pulumi.String(network.TransportProtocolTcp),
/// 				},
/// 			},
/// 			LoadBalancerName: pulumi.String("lb"),
/// 			LoadBalancingRules: network.LoadBalancingRuleArray{
/// 				&network.LoadBalancingRuleArgs{
/// 					BackendAddressPool: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb"),
/// 					},
/// 					BackendPort:      pulumi.Int(80),
/// 					EnableFloatingIP: pulumi.Bool(true),
/// 					FrontendIPConfiguration: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb"),
/// 					},
/// 					FrontendPort:         pulumi.Int(80),
/// 					IdleTimeoutInMinutes: pulumi.Int(15),
/// 					LoadDistribution:     pulumi.String(network.LoadDistributionDefault),
/// 					Name:                 pulumi.String("rulelb"),
/// 					Probe: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb"),
/// 					},
/// 					Protocol: pulumi.String(network.TransportProtocolTcp),
/// 				},
/// 			},
/// 			Location:      pulumi.String("eastus"),
/// 			OutboundRules: network.OutboundRuleArray{},
/// 			Probes: network.ProbeArray{
/// 				&network.ProbeArgs{
/// 					IntervalInSeconds: pulumi.Int(15),
/// 					Name:              pulumi.String("probe-lb"),
/// 					NumberOfProbes:    pulumi.Int(2),
/// 					Port:              pulumi.Int(80),
/// 					ProbeThreshold:    pulumi.Int(1),
/// 					Protocol:          pulumi.String(network.ProbeProtocolHttp),
/// 					RequestPath:       pulumi.String("healthcheck.aspx"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Sku: &network.LoadBalancerSkuArgs{
/// 				Name: pulumi.String(network.LoadBalancerSkuNameStandard),
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
/// import com.pulumi.azurenative.network.LoadBalancer;
/// import com.pulumi.azurenative.network.LoadBalancerArgs;
/// import com.pulumi.azurenative.network.inputs.BackendAddressPoolArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
/// import com.pulumi.azurenative.network.inputs.FrontendIPConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.SubnetArgs;
/// import com.pulumi.azurenative.network.inputs.InboundNatRuleArgs;
/// import com.pulumi.azurenative.network.inputs.LoadBalancingRuleArgs;
/// import com.pulumi.azurenative.network.inputs.ProbeArgs;
/// import com.pulumi.azurenative.network.inputs.LoadBalancerSkuArgs;
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
///         var loadBalancer = new LoadBalancer("loadBalancer", LoadBalancerArgs.builder()
///             .backendAddressPools(BackendAddressPoolArgs.builder()
///                 .name("be-lb")
///                 .syncMode("Automatic")
///                 .virtualNetwork(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb")
///                     .build())
///                 .build())
///             .frontendIPConfigurations(FrontendIPConfigurationArgs.builder()
///                 .name("fe-lb")
///                 .subnet(SubnetArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb")
///                     .build())
///                 .build())
///             .inboundNatPools()
///             .inboundNatRules(InboundNatRuleArgs.builder()
///                 .backendPort(3389)
///                 .enableFloatingIP(true)
///                 .frontendIPConfiguration(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb")
///                     .build())
///                 .frontendPort(3389)
///                 .idleTimeoutInMinutes(15)
///                 .name("in-nat-rule")
///                 .protocol("Tcp")
///                 .build())
///             .loadBalancerName("lb")
///             .loadBalancingRules(LoadBalancingRuleArgs.builder()
///                 .backendAddressPool(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb")
///                     .build())
///                 .backendPort(80)
///                 .enableFloatingIP(true)
///                 .frontendIPConfiguration(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb")
///                     .build())
///                 .frontendPort(80)
///                 .idleTimeoutInMinutes(15)
///                 .loadDistribution("Default")
///                 .name("rulelb")
///                 .probe(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb")
///                     .build())
///                 .protocol("Tcp")
///                 .build())
///             .location("eastus")
///             .outboundRules()
///             .probes(ProbeArgs.builder()
///                 .intervalInSeconds(15)
///                 .name("probe-lb")
///                 .numberOfProbes(2)
///                 .port(80)
///                 .probeThreshold(1)
///                 .protocol("Http")
///                 .requestPath("healthcheck.aspx")
///                 .build())
///             .resourceGroupName("rg1")
///             .sku(LoadBalancerSkuArgs.builder()
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
/// const loadBalancer = new azure_native.network.LoadBalancer("loadBalancer", {
///     backendAddressPools: [{
///         name: "be-lb",
///         syncMode: azure_native.network.SyncMode.Automatic,
///         virtualNetwork: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb",
///         },
///     }],
///     frontendIPConfigurations: [{
///         name: "fe-lb",
///         subnet: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb",
///         },
///     }],
///     inboundNatPools: [],
///     inboundNatRules: [{
///         backendPort: 3389,
///         enableFloatingIP: true,
///         frontendIPConfiguration: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///         },
///         frontendPort: 3389,
///         idleTimeoutInMinutes: 15,
///         name: "in-nat-rule",
///         protocol: azure_native.network.TransportProtocol.Tcp,
///     }],
///     loadBalancerName: "lb",
///     loadBalancingRules: [{
///         backendAddressPool: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb",
///         },
///         backendPort: 80,
///         enableFloatingIP: true,
///         frontendIPConfiguration: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///         },
///         frontendPort: 80,
///         idleTimeoutInMinutes: 15,
///         loadDistribution: azure_native.network.LoadDistribution.Default,
///         name: "rulelb",
///         probe: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb",
///         },
///         protocol: azure_native.network.TransportProtocol.Tcp,
///     }],
///     location: "eastus",
///     outboundRules: [],
///     probes: [{
///         intervalInSeconds: 15,
///         name: "probe-lb",
///         numberOfProbes: 2,
///         port: 80,
///         probeThreshold: 1,
///         protocol: azure_native.network.ProbeProtocol.Http,
///         requestPath: "healthcheck.aspx",
///     }],
///     resourceGroupName: "rg1",
///     sku: {
///         name: azure_native.network.LoadBalancerSkuName.Standard,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// load_balancer = azure_native.network.LoadBalancer("loadBalancer",
///     backend_address_pools=[{
///         "name": "be-lb",
///         "sync_mode": azure_native.network.SyncMode.AUTOMATIC,
///         "virtual_network": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb",
///         },
///     }],
///     frontend_ip_configurations=[{
///         "name": "fe-lb",
///         "subnet": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb",
///         },
///     }],
///     inbound_nat_pools=[],
///     inbound_nat_rules=[{
///         "backend_port": 3389,
///         "enable_floating_ip": True,
///         "frontend_ip_configuration": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///         },
///         "frontend_port": 3389,
///         "idle_timeout_in_minutes": 15,
///         "name": "in-nat-rule",
///         "protocol": azure_native.network.TransportProtocol.TCP,
///     }],
///     load_balancer_name="lb",
///     load_balancing_rules=[{
///         "backend_address_pool": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb",
///         },
///         "backend_port": 80,
///         "enable_floating_ip": True,
///         "frontend_ip_configuration": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///         },
///         "frontend_port": 80,
///         "idle_timeout_in_minutes": 15,
///         "load_distribution": azure_native.network.LoadDistribution.DEFAULT,
///         "name": "rulelb",
///         "probe": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb",
///         },
///         "protocol": azure_native.network.TransportProtocol.TCP,
///     }],
///     location="eastus",
///     outbound_rules=[],
///     probes=[{
///         "interval_in_seconds": 15,
///         "name": "probe-lb",
///         "number_of_probes": 2,
///         "port": 80,
///         "probe_threshold": 1,
///         "protocol": azure_native.network.ProbeProtocol.HTTP,
///         "request_path": "healthcheck.aspx",
///     }],
///     resource_group_name="rg1",
///     sku={
///         "name": azure_native.network.LoadBalancerSkuName.STANDARD,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   loadBalancer:
///     type: azure-native:network:LoadBalancer
///     properties:
///       backendAddressPools:
///         - name: be-lb
///           syncMode: Automatic
///           virtualNetwork:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb
///       frontendIPConfigurations:
///         - name: fe-lb
///           subnet:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb/subnets/subnetlb
///       inboundNatPools: []
///       inboundNatRules:
///         - backendPort: 3389
///           enableFloatingIP: true
///           frontendIPConfiguration:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb
///           frontendPort: 3389
///           idleTimeoutInMinutes: 15
///           name: in-nat-rule
///           protocol: Tcp
///       loadBalancerName: lb
///       loadBalancingRules:
///         - backendAddressPool:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb
///           backendPort: 80
///           enableFloatingIP: true
///           frontendIPConfiguration:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb
///           frontendPort: 80
///           idleTimeoutInMinutes: 15
///           loadDistribution: Default
///           name: rulelb
///           probe:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb
///           protocol: Tcp
///       location: eastus
///       outboundRules: []
///       probes:
///         - intervalInSeconds: 15
///           name: probe-lb
///           numberOfProbes: 2
///           port: 80
///           probeThreshold: 1
///           protocol: Http
///           requestPath: healthcheck.aspx
///       resourceGroupName: rg1
///       sku:
///         name: Standard
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create load balancer with inbound nat pool
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var loadBalancer = new AzureNative.Network.LoadBalancer("loadBalancer", new()
///     {
///         BackendAddressPools = new[] {},
///         FrontendIPConfigurations = new[]
///         {
///             new AzureNative.Network.Inputs.FrontendIPConfigurationArgs
///             {
///                 Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/test",
///                 Name = "test",
///                 PrivateIPAllocationMethod = AzureNative.Network.IPAllocationMethod.Dynamic,
///                 Subnet = new AzureNative.Network.Inputs.SubnetArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/lbvnet/subnets/lbsubnet",
///                 },
///                 Zones = new() { },
///             },
///         },
///         InboundNatPools = new[]
///         {
///             new AzureNative.Network.Inputs.InboundNatPoolArgs
///             {
///                 BackendPort = 8888,
///                 EnableFloatingIP = true,
///                 EnableTcpReset = true,
///                 FrontendIPConfiguration = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/test",
///                 },
///                 FrontendPortRangeEnd = 8085,
///                 FrontendPortRangeStart = 8080,
///                 Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/inboundNatPools/test",
///                 IdleTimeoutInMinutes = 10,
///                 Name = "test",
///                 Protocol = AzureNative.Network.TransportProtocol.Tcp,
///             },
///         },
///         InboundNatRules = new[] {},
///         LoadBalancerName = "lb",
///         LoadBalancingRules = new[] {},
///         Location = "eastus",
///         OutboundRules = new[] {},
///         Probes = new[] {},
///         ResourceGroupName = "rg1",
///         Sku = new AzureNative.Network.Inputs.LoadBalancerSkuArgs
///         {
///             Name = AzureNative.Network.LoadBalancerSkuName.Standard,
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
/// 		_, err := network.NewLoadBalancer(ctx, "loadBalancer", &network.LoadBalancerArgs{
/// 			BackendAddressPools: network.BackendAddressPoolArray{},
/// 			FrontendIPConfigurations: network.FrontendIPConfigurationArray{
/// 				&network.FrontendIPConfigurationArgs{
/// 					Id:                        pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/test"),
/// 					Name:                      pulumi.String("test"),
/// 					PrivateIPAllocationMethod: pulumi.String(network.IPAllocationMethodDynamic),
/// 					Subnet: &network.SubnetTypeArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/lbvnet/subnets/lbsubnet"),
/// 					},
/// 					Zones: pulumi.StringArray{},
/// 				},
/// 			},
/// 			InboundNatPools: network.InboundNatPoolArray{
/// 				&network.InboundNatPoolArgs{
/// 					BackendPort:      pulumi.Int(8888),
/// 					EnableFloatingIP: pulumi.Bool(true),
/// 					EnableTcpReset:   pulumi.Bool(true),
/// 					FrontendIPConfiguration: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/test"),
/// 					},
/// 					FrontendPortRangeEnd:   pulumi.Int(8085),
/// 					FrontendPortRangeStart: pulumi.Int(8080),
/// 					Id:                     pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/inboundNatPools/test"),
/// 					IdleTimeoutInMinutes:   pulumi.Int(10),
/// 					Name:                   pulumi.String("test"),
/// 					Protocol:               pulumi.String(network.TransportProtocolTcp),
/// 				},
/// 			},
/// 			InboundNatRules:    network.InboundNatRuleTypeArray{},
/// 			LoadBalancerName:   pulumi.String("lb"),
/// 			LoadBalancingRules: network.LoadBalancingRuleArray{},
/// 			Location:           pulumi.String("eastus"),
/// 			OutboundRules:      network.OutboundRuleArray{},
/// 			Probes:             network.ProbeArray{},
/// 			ResourceGroupName:  pulumi.String("rg1"),
/// 			Sku: &network.LoadBalancerSkuArgs{
/// 				Name: pulumi.String(network.LoadBalancerSkuNameStandard),
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
/// import com.pulumi.azurenative.network.LoadBalancer;
/// import com.pulumi.azurenative.network.LoadBalancerArgs;
/// import com.pulumi.azurenative.network.inputs.FrontendIPConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.SubnetArgs;
/// import com.pulumi.azurenative.network.inputs.InboundNatPoolArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
/// import com.pulumi.azurenative.network.inputs.LoadBalancerSkuArgs;
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
///         var loadBalancer = new LoadBalancer("loadBalancer", LoadBalancerArgs.builder()
///             .backendAddressPools()
///             .frontendIPConfigurations(FrontendIPConfigurationArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/test")
///                 .name("test")
///                 .privateIPAllocationMethod("Dynamic")
///                 .subnet(SubnetArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/lbvnet/subnets/lbsubnet")
///                     .build())
///                 .zones()
///                 .build())
///             .inboundNatPools(InboundNatPoolArgs.builder()
///                 .backendPort(8888)
///                 .enableFloatingIP(true)
///                 .enableTcpReset(true)
///                 .frontendIPConfiguration(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/test")
///                     .build())
///                 .frontendPortRangeEnd(8085)
///                 .frontendPortRangeStart(8080)
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/inboundNatPools/test")
///                 .idleTimeoutInMinutes(10)
///                 .name("test")
///                 .protocol("Tcp")
///                 .build())
///             .inboundNatRules()
///             .loadBalancerName("lb")
///             .loadBalancingRules()
///             .location("eastus")
///             .outboundRules()
///             .probes()
///             .resourceGroupName("rg1")
///             .sku(LoadBalancerSkuArgs.builder()
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
/// const loadBalancer = new azure_native.network.LoadBalancer("loadBalancer", {
///     backendAddressPools: [],
///     frontendIPConfigurations: [{
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/test",
///         name: "test",
///         privateIPAllocationMethod: azure_native.network.IPAllocationMethod.Dynamic,
///         subnet: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/lbvnet/subnets/lbsubnet",
///         },
///         zones: [],
///     }],
///     inboundNatPools: [{
///         backendPort: 8888,
///         enableFloatingIP: true,
///         enableTcpReset: true,
///         frontendIPConfiguration: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/test",
///         },
///         frontendPortRangeEnd: 8085,
///         frontendPortRangeStart: 8080,
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/inboundNatPools/test",
///         idleTimeoutInMinutes: 10,
///         name: "test",
///         protocol: azure_native.network.TransportProtocol.Tcp,
///     }],
///     inboundNatRules: [],
///     loadBalancerName: "lb",
///     loadBalancingRules: [],
///     location: "eastus",
///     outboundRules: [],
///     probes: [],
///     resourceGroupName: "rg1",
///     sku: {
///         name: azure_native.network.LoadBalancerSkuName.Standard,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// load_balancer = azure_native.network.LoadBalancer("loadBalancer",
///     backend_address_pools=[],
///     frontend_ip_configurations=[{
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/test",
///         "name": "test",
///         "private_ip_allocation_method": azure_native.network.IPAllocationMethod.DYNAMIC,
///         "subnet": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/lbvnet/subnets/lbsubnet",
///         },
///         "zones": [],
///     }],
///     inbound_nat_pools=[{
///         "backend_port": 8888,
///         "enable_floating_ip": True,
///         "enable_tcp_reset": True,
///         "frontend_ip_configuration": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/test",
///         },
///         "frontend_port_range_end": 8085,
///         "frontend_port_range_start": 8080,
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/inboundNatPools/test",
///         "idle_timeout_in_minutes": 10,
///         "name": "test",
///         "protocol": azure_native.network.TransportProtocol.TCP,
///     }],
///     inbound_nat_rules=[],
///     load_balancer_name="lb",
///     load_balancing_rules=[],
///     location="eastus",
///     outbound_rules=[],
///     probes=[],
///     resource_group_name="rg1",
///     sku={
///         "name": azure_native.network.LoadBalancerSkuName.STANDARD,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   loadBalancer:
///     type: azure-native:network:LoadBalancer
///     properties:
///       backendAddressPools: []
///       frontendIPConfigurations:
///         - id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/test
///           name: test
///           privateIPAllocationMethod: Dynamic
///           subnet:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/lbvnet/subnets/lbsubnet
///           zones: []
///       inboundNatPools:
///         - backendPort: 8888
///           enableFloatingIP: true
///           enableTcpReset: true
///           frontendIPConfiguration:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/test
///           frontendPortRangeEnd: 8085
///           frontendPortRangeStart: 8080
///           id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/inboundNatPools/test
///           idleTimeoutInMinutes: 10
///           name: test
///           protocol: Tcp
///       inboundNatRules: []
///       loadBalancerName: lb
///       loadBalancingRules: []
///       location: eastus
///       outboundRules: []
///       probes: []
///       resourceGroupName: rg1
///       sku:
///         name: Standard
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create load balancer with outbound rules
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var loadBalancer = new AzureNative.Network.LoadBalancer("loadBalancer", new()
///     {
///         BackendAddressPools = new[]
///         {
///             new AzureNative.Network.Inputs.BackendAddressPoolArgs
///             {
///                 Name = "be-lb",
///             },
///         },
///         FrontendIPConfigurations = new[]
///         {
///             new AzureNative.Network.Inputs.FrontendIPConfigurationArgs
///             {
///                 Name = "fe-lb",
///                 PublicIPAddress = new AzureNative.Network.Inputs.PublicIPAddressArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pip",
///                 },
///             },
///         },
///         InboundNatPools = new[] {},
///         InboundNatRules = new[]
///         {
///             new AzureNative.Network.Inputs.InboundNatRuleArgs
///             {
///                 BackendPort = 3389,
///                 EnableFloatingIP = true,
///                 FrontendIPConfiguration = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///                 },
///                 FrontendPort = 3389,
///                 IdleTimeoutInMinutes = 15,
///                 Name = "in-nat-rule",
///                 Protocol = AzureNative.Network.TransportProtocol.Tcp,
///             },
///         },
///         LoadBalancerName = "lb",
///         LoadBalancingRules = new[]
///         {
///             new AzureNative.Network.Inputs.LoadBalancingRuleArgs
///             {
///                 BackendAddressPool = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb",
///                 },
///                 BackendPort = 80,
///                 DisableOutboundSnat = true,
///                 EnableFloatingIP = true,
///                 FrontendIPConfiguration = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///                 },
///                 FrontendPort = 80,
///                 IdleTimeoutInMinutes = 15,
///                 LoadDistribution = AzureNative.Network.LoadDistribution.Default,
///                 Name = "rulelb",
///                 Probe = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb",
///                 },
///                 Protocol = AzureNative.Network.TransportProtocol.Tcp,
///             },
///         },
///         Location = "eastus",
///         OutboundRules = new[]
///         {
///             new AzureNative.Network.Inputs.OutboundRuleArgs
///             {
///                 BackendAddressPool = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb",
///                 },
///                 FrontendIPConfigurations = new[]
///                 {
///                     new AzureNative.Network.Inputs.SubResourceArgs
///                     {
///                         Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///                     },
///                 },
///                 Name = "rule1",
///                 Protocol = AzureNative.Network.LoadBalancerOutboundRuleProtocol.All,
///             },
///         },
///         Probes = new[]
///         {
///             new AzureNative.Network.Inputs.ProbeArgs
///             {
///                 IntervalInSeconds = 15,
///                 Name = "probe-lb",
///                 NumberOfProbes = 2,
///                 Port = 80,
///                 ProbeThreshold = 1,
///                 Protocol = AzureNative.Network.ProbeProtocol.Http,
///                 RequestPath = "healthcheck.aspx",
///             },
///         },
///         ResourceGroupName = "rg1",
///         Sku = new AzureNative.Network.Inputs.LoadBalancerSkuArgs
///         {
///             Name = AzureNative.Network.LoadBalancerSkuName.Standard,
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
/// 		_, err := network.NewLoadBalancer(ctx, "loadBalancer", &network.LoadBalancerArgs{
/// 			BackendAddressPools: network.BackendAddressPoolArray{
/// 				&network.BackendAddressPoolArgs{
/// 					Name: pulumi.String("be-lb"),
/// 				},
/// 			},
/// 			FrontendIPConfigurations: network.FrontendIPConfigurationArray{
/// 				&network.FrontendIPConfigurationArgs{
/// 					Name: pulumi.String("fe-lb"),
/// 					PublicIPAddress: &network.PublicIPAddressTypeArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pip"),
/// 					},
/// 				},
/// 			},
/// 			InboundNatPools: network.InboundNatPoolArray{},
/// 			InboundNatRules: network.InboundNatRuleTypeArray{
/// 				&network.InboundNatRuleTypeArgs{
/// 					BackendPort:      pulumi.Int(3389),
/// 					EnableFloatingIP: pulumi.Bool(true),
/// 					FrontendIPConfiguration: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb"),
/// 					},
/// 					FrontendPort:         pulumi.Int(3389),
/// 					IdleTimeoutInMinutes: pulumi.Int(15),
/// 					Name:                 pulumi.String("in-nat-rule"),
/// 					Protocol:             pulumi.String(network.TransportProtocolTcp),
/// 				},
/// 			},
/// 			LoadBalancerName: pulumi.String("lb"),
/// 			LoadBalancingRules: network.LoadBalancingRuleArray{
/// 				&network.LoadBalancingRuleArgs{
/// 					BackendAddressPool: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb"),
/// 					},
/// 					BackendPort:         pulumi.Int(80),
/// 					DisableOutboundSnat: pulumi.Bool(true),
/// 					EnableFloatingIP:    pulumi.Bool(true),
/// 					FrontendIPConfiguration: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb"),
/// 					},
/// 					FrontendPort:         pulumi.Int(80),
/// 					IdleTimeoutInMinutes: pulumi.Int(15),
/// 					LoadDistribution:     pulumi.String(network.LoadDistributionDefault),
/// 					Name:                 pulumi.String("rulelb"),
/// 					Probe: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb"),
/// 					},
/// 					Protocol: pulumi.String(network.TransportProtocolTcp),
/// 				},
/// 			},
/// 			Location: pulumi.String("eastus"),
/// 			OutboundRules: network.OutboundRuleArray{
/// 				&network.OutboundRuleArgs{
/// 					BackendAddressPool: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb"),
/// 					},
/// 					FrontendIPConfigurations: network.SubResourceArray{
/// 						&network.SubResourceArgs{
/// 							Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb"),
/// 						},
/// 					},
/// 					Name:     pulumi.String("rule1"),
/// 					Protocol: pulumi.String(network.LoadBalancerOutboundRuleProtocolAll),
/// 				},
/// 			},
/// 			Probes: network.ProbeArray{
/// 				&network.ProbeArgs{
/// 					IntervalInSeconds: pulumi.Int(15),
/// 					Name:              pulumi.String("probe-lb"),
/// 					NumberOfProbes:    pulumi.Int(2),
/// 					Port:              pulumi.Int(80),
/// 					ProbeThreshold:    pulumi.Int(1),
/// 					Protocol:          pulumi.String(network.ProbeProtocolHttp),
/// 					RequestPath:       pulumi.String("healthcheck.aspx"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Sku: &network.LoadBalancerSkuArgs{
/// 				Name: pulumi.String(network.LoadBalancerSkuNameStandard),
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
/// import com.pulumi.azurenative.network.LoadBalancer;
/// import com.pulumi.azurenative.network.LoadBalancerArgs;
/// import com.pulumi.azurenative.network.inputs.BackendAddressPoolArgs;
/// import com.pulumi.azurenative.network.inputs.FrontendIPConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.PublicIPAddressArgs;
/// import com.pulumi.azurenative.network.inputs.InboundNatRuleArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
/// import com.pulumi.azurenative.network.inputs.LoadBalancingRuleArgs;
/// import com.pulumi.azurenative.network.inputs.OutboundRuleArgs;
/// import com.pulumi.azurenative.network.inputs.ProbeArgs;
/// import com.pulumi.azurenative.network.inputs.LoadBalancerSkuArgs;
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
///         var loadBalancer = new LoadBalancer("loadBalancer", LoadBalancerArgs.builder()
///             .backendAddressPools(BackendAddressPoolArgs.builder()
///                 .name("be-lb")
///                 .build())
///             .frontendIPConfigurations(FrontendIPConfigurationArgs.builder()
///                 .name("fe-lb")
///                 .publicIPAddress(PublicIPAddressArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pip")
///                     .build())
///                 .build())
///             .inboundNatPools()
///             .inboundNatRules(InboundNatRuleArgs.builder()
///                 .backendPort(3389)
///                 .enableFloatingIP(true)
///                 .frontendIPConfiguration(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb")
///                     .build())
///                 .frontendPort(3389)
///                 .idleTimeoutInMinutes(15)
///                 .name("in-nat-rule")
///                 .protocol("Tcp")
///                 .build())
///             .loadBalancerName("lb")
///             .loadBalancingRules(LoadBalancingRuleArgs.builder()
///                 .backendAddressPool(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb")
///                     .build())
///                 .backendPort(80)
///                 .disableOutboundSnat(true)
///                 .enableFloatingIP(true)
///                 .frontendIPConfiguration(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb")
///                     .build())
///                 .frontendPort(80)
///                 .idleTimeoutInMinutes(15)
///                 .loadDistribution("Default")
///                 .name("rulelb")
///                 .probe(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb")
///                     .build())
///                 .protocol("Tcp")
///                 .build())
///             .location("eastus")
///             .outboundRules(OutboundRuleArgs.builder()
///                 .backendAddressPool(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb")
///                     .build())
///                 .frontendIPConfigurations(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb")
///                     .build())
///                 .name("rule1")
///                 .protocol("All")
///                 .build())
///             .probes(ProbeArgs.builder()
///                 .intervalInSeconds(15)
///                 .name("probe-lb")
///                 .numberOfProbes(2)
///                 .port(80)
///                 .probeThreshold(1)
///                 .protocol("Http")
///                 .requestPath("healthcheck.aspx")
///                 .build())
///             .resourceGroupName("rg1")
///             .sku(LoadBalancerSkuArgs.builder()
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
/// const loadBalancer = new azure_native.network.LoadBalancer("loadBalancer", {
///     backendAddressPools: [{
///         name: "be-lb",
///     }],
///     frontendIPConfigurations: [{
///         name: "fe-lb",
///         publicIPAddress: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pip",
///         },
///     }],
///     inboundNatPools: [],
///     inboundNatRules: [{
///         backendPort: 3389,
///         enableFloatingIP: true,
///         frontendIPConfiguration: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///         },
///         frontendPort: 3389,
///         idleTimeoutInMinutes: 15,
///         name: "in-nat-rule",
///         protocol: azure_native.network.TransportProtocol.Tcp,
///     }],
///     loadBalancerName: "lb",
///     loadBalancingRules: [{
///         backendAddressPool: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb",
///         },
///         backendPort: 80,
///         disableOutboundSnat: true,
///         enableFloatingIP: true,
///         frontendIPConfiguration: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///         },
///         frontendPort: 80,
///         idleTimeoutInMinutes: 15,
///         loadDistribution: azure_native.network.LoadDistribution.Default,
///         name: "rulelb",
///         probe: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb",
///         },
///         protocol: azure_native.network.TransportProtocol.Tcp,
///     }],
///     location: "eastus",
///     outboundRules: [{
///         backendAddressPool: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb",
///         },
///         frontendIPConfigurations: [{
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///         }],
///         name: "rule1",
///         protocol: azure_native.network.LoadBalancerOutboundRuleProtocol.All,
///     }],
///     probes: [{
///         intervalInSeconds: 15,
///         name: "probe-lb",
///         numberOfProbes: 2,
///         port: 80,
///         probeThreshold: 1,
///         protocol: azure_native.network.ProbeProtocol.Http,
///         requestPath: "healthcheck.aspx",
///     }],
///     resourceGroupName: "rg1",
///     sku: {
///         name: azure_native.network.LoadBalancerSkuName.Standard,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// load_balancer = azure_native.network.LoadBalancer("loadBalancer",
///     backend_address_pools=[{
///         "name": "be-lb",
///     }],
///     frontend_ip_configurations=[{
///         "name": "fe-lb",
///         "public_ip_address": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pip",
///         },
///     }],
///     inbound_nat_pools=[],
///     inbound_nat_rules=[{
///         "backend_port": 3389,
///         "enable_floating_ip": True,
///         "frontend_ip_configuration": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///         },
///         "frontend_port": 3389,
///         "idle_timeout_in_minutes": 15,
///         "name": "in-nat-rule",
///         "protocol": azure_native.network.TransportProtocol.TCP,
///     }],
///     load_balancer_name="lb",
///     load_balancing_rules=[{
///         "backend_address_pool": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb",
///         },
///         "backend_port": 80,
///         "disable_outbound_snat": True,
///         "enable_floating_ip": True,
///         "frontend_ip_configuration": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///         },
///         "frontend_port": 80,
///         "idle_timeout_in_minutes": 15,
///         "load_distribution": azure_native.network.LoadDistribution.DEFAULT,
///         "name": "rulelb",
///         "probe": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb",
///         },
///         "protocol": azure_native.network.TransportProtocol.TCP,
///     }],
///     location="eastus",
///     outbound_rules=[{
///         "backend_address_pool": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb",
///         },
///         "frontend_ip_configurations": [{
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb",
///         }],
///         "name": "rule1",
///         "protocol": azure_native.network.LoadBalancerOutboundRuleProtocol.ALL,
///     }],
///     probes=[{
///         "interval_in_seconds": 15,
///         "name": "probe-lb",
///         "number_of_probes": 2,
///         "port": 80,
///         "probe_threshold": 1,
///         "protocol": azure_native.network.ProbeProtocol.HTTP,
///         "request_path": "healthcheck.aspx",
///     }],
///     resource_group_name="rg1",
///     sku={
///         "name": azure_native.network.LoadBalancerSkuName.STANDARD,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   loadBalancer:
///     type: azure-native:network:LoadBalancer
///     properties:
///       backendAddressPools:
///         - name: be-lb
///       frontendIPConfigurations:
///         - name: fe-lb
///           publicIPAddress:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pip
///       inboundNatPools: []
///       inboundNatRules:
///         - backendPort: 3389
///           enableFloatingIP: true
///           frontendIPConfiguration:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb
///           frontendPort: 3389
///           idleTimeoutInMinutes: 15
///           name: in-nat-rule
///           protocol: Tcp
///       loadBalancerName: lb
///       loadBalancingRules:
///         - backendAddressPool:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb
///           backendPort: 80
///           disableOutboundSnat: true
///           enableFloatingIP: true
///           frontendIPConfiguration:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb
///           frontendPort: 80
///           idleTimeoutInMinutes: 15
///           loadDistribution: Default
///           name: rulelb
///           probe:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/probes/probe-lb
///           protocol: Tcp
///       location: eastus
///       outboundRules:
///         - backendAddressPool:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/backendAddressPools/be-lb
///           frontendIPConfigurations:
///             - id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/loadBalancers/lb/frontendIPConfigurations/fe-lb
///           name: rule1
///           protocol: All
///       probes:
///         - intervalInSeconds: 15
///           name: probe-lb
///           numberOfProbes: 2
///           port: 80
///           probeThreshold: 1
///           protocol: Http
///           requestPath: healthcheck.aspx
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
/// $ pulumi import azure-native:network:LoadBalancer lb /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/loadBalancers/{loadBalancerName}
/// ```
class LoadBalancer extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Collection of backend address pools used by a load balancer.
  late final pulumi.Output<List<Map<String, dynamic>>?> backendAddressPools;

  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;

  /// The extended location of the load balancer.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;

  /// Object representing the frontend IPs to be used for the load balancer.
  late final pulumi.Output<List<Map<String, dynamic>>?>
  frontendIPConfigurations;

  /// Defines an external port range for inbound NAT to a single backend port on NICs associated with a load balancer. Inbound NAT rules are created automatically for each NIC associated with the Load Balancer using an external port from this range. Defining an Inbound NAT pool on your Load Balancer is mutually exclusive with defining inbound NAT rules. Inbound NAT pools are referenced from virtual machine scale sets. NICs that are associated with individual virtual machines cannot reference an inbound NAT pool. They have to reference individual inbound NAT rules.
  late final pulumi.Output<List<Map<String, dynamic>>?> inboundNatPools;

  /// Collection of inbound NAT Rules used by a load balancer. Defining inbound NAT rules on your load balancer is mutually exclusive with defining an inbound NAT pool. Inbound NAT pools are referenced from virtual machine scale sets. NICs that are associated with individual virtual machines cannot reference an Inbound NAT pool. They have to reference individual inbound NAT rules.
  late final pulumi.Output<List<Map<String, dynamic>>?> inboundNatRules;

  /// Object collection representing the load balancing rules Gets the provisioning.
  late final pulumi.Output<List<Map<String, dynamic>>?> loadBalancingRules;

  /// Resource location.
  late final pulumi.Output<String?> location;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// The outbound rules.
  late final pulumi.Output<List<Map<String, dynamic>>?> outboundRules;

  /// Collection of probe objects used in the load balancer.
  late final pulumi.Output<List<Map<String, dynamic>>?> probes;

  /// The provisioning state of the load balancer resource.
  late final pulumi.Output<String> provisioningState;

  /// The resource GUID property of the load balancer resource.
  late final pulumi.Output<String> resourceGuid;

  /// The load balancer SKU.
  late final pulumi.Output<LoadBalancerSkuResponse?> sku;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [LoadBalancer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LoadBalancer]. {@macro pulumi_network_load_balancer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LoadBalancer(
    String name, {
    LoadBalancerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:network:LoadBalancer',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    backendAddressPools = registerOutput<List<Map<String, dynamic>>?>(
      'backendAddressPools',
    );
    etag = registerOutput<String>('etag');
    extendedLocation = registerOutput<ExtendedLocationResponse?>(
      'extendedLocation',
    );
    frontendIPConfigurations = registerOutput<List<Map<String, dynamic>>?>(
      'frontendIPConfigurations',
    );
    inboundNatPools = registerOutput<List<Map<String, dynamic>>?>(
      'inboundNatPools',
    );
    inboundNatRules = registerOutput<List<Map<String, dynamic>>?>(
      'inboundNatRules',
    );
    loadBalancingRules = registerOutput<List<Map<String, dynamic>>?>(
      'loadBalancingRules',
    );
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    outboundRules = registerOutput<List<Map<String, dynamic>>?>(
      'outboundRules',
    );
    probes = registerOutput<List<Map<String, dynamic>>?>('probes');
    provisioningState = registerOutput<String>('provisioningState');
    resourceGuid = registerOutput<String>('resourceGuid');
    sku = registerOutput<LoadBalancerSkuResponse?>('sku');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
