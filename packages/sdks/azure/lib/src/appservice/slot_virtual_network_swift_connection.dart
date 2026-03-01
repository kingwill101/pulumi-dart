import 'package:pulumi/pulumi.dart' as pulumi;
import 'slot_virtual_network_swift_connection_args.dart';
import 'slot_virtual_network_swift_connection_state.dart';

/// Manages an App Service Slot's Virtual Network Association (this is for the [Regional VNet Integration](https://docs.microsoft.com/azure/app-service/web-sites-integrate-with-vnet#regional-vnet-integration) which is still in preview).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-virtual-network",
///     addressSpaces: ["10.0.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "example-subnet",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.1.0/24"],
///     delegations: [{
///         name: "example-delegation",
///         serviceDelegation: {
///             name: "Microsoft.Web/serverFarms",
///             actions: ["Microsoft.Network/virtualNetworks/subnets/action"],
///         },
///     }],
/// });
/// const examplePlan = new azure.appservice.Plan("example", {
///     name: "example-service-plan",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: {
///         tier: "Standard",
///         size: "S1",
///     },
/// });
/// const exampleAppService = new azure.appservice.AppService("example", {
///     name: "example-app-service",
///     location: example.location,
///     resourceGroupName: example.name,
///     appServicePlanId: examplePlan.id,
/// });
/// const example_staging = new azure.appservice.Slot("example-staging", {
///     name: "staging",
///     appServiceName: exampleAppService.name,
///     location: example.location,
///     resourceGroupName: example.name,
///     appServicePlanId: examplePlan.id,
/// });
/// const exampleSlotVirtualNetworkSwiftConnection = new azure.appservice.SlotVirtualNetworkSwiftConnection("example", {
///     slotName: example_staging.name,
///     appServiceId: exampleAppService.id,
///     subnetId: exampleSubnet.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-virtual-network",
///     address_spaces=["10.0.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_subnet = azure.network.Subnet("example",
///     name="example-subnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.1.0/24"],
///     delegations=[{
///         "name": "example-delegation",
///         "service_delegation": {
///             "name": "Microsoft.Web/serverFarms",
///             "actions": ["Microsoft.Network/virtualNetworks/subnets/action"],
///         },
///     }])
/// example_plan = azure.appservice.Plan("example",
///     name="example-service-plan",
///     location=example.location,
///     resource_group_name=example.name,
///     sku={
///         "tier": "Standard",
///         "size": "S1",
///     })
/// example_app_service = azure.appservice.AppService("example",
///     name="example-app-service",
///     location=example.location,
///     resource_group_name=example.name,
///     app_service_plan_id=example_plan.id)
/// example_staging = azure.appservice.Slot("example-staging",
///     name="staging",
///     app_service_name=example_app_service.name,
///     location=example.location,
///     resource_group_name=example.name,
///     app_service_plan_id=example_plan.id)
/// example_slot_virtual_network_swift_connection = azure.appservice.SlotVirtualNetworkSwiftConnection("example",
///     slot_name=example_staging.name,
///     app_service_id=example_app_service.id,
///     subnet_id=example_subnet.id)
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
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example-virtual-network",
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "example-subnet",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.1.0/24",
///         },
///         Delegations = new[]
///         {
///             new Azure.Network.Inputs.SubnetDelegationArgs
///             {
///                 Name = "example-delegation",
///                 ServiceDelegation = new Azure.Network.Inputs.SubnetDelegationServiceDelegationArgs
///                 {
///                     Name = "Microsoft.Web/serverFarms",
///                     Actions = new[]
///                     {
///                         "Microsoft.Network/virtualNetworks/subnets/action",
///                     },
///                 },
///             },
///         },
///     });
///
///     var examplePlan = new Azure.AppService.Plan("example", new()
///     {
///         Name = "example-service-plan",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = new Azure.AppService.Inputs.PlanSkuArgs
///         {
///             Tier = "Standard",
///             Size = "S1",
///         },
///     });
///
///     var exampleAppService = new Azure.AppService.AppService("example", new()
///     {
///         Name = "example-app-service",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AppServicePlanId = examplePlan.Id,
///     });
///
///     var example_staging = new Azure.AppService.Slot("example-staging", new()
///     {
///         Name = "staging",
///         AppServiceName = exampleAppService.Name,
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AppServicePlanId = examplePlan.Id,
///     });
///
///     var exampleSlotVirtualNetworkSwiftConnection = new Azure.AppService.SlotVirtualNetworkSwiftConnection("example", new()
///     {
///         SlotName = example_staging.Name,
///         AppServiceId = exampleAppService.Id,
///         SubnetId = exampleSubnet.Id,
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
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name: pulumi.String("example-virtual-network"),
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("example-subnet"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.1.0/24"),
/// 			},
/// 			Delegations: network.SubnetDelegationArray{
/// 				&network.SubnetDelegationArgs{
/// 					Name: pulumi.String("example-delegation"),
/// 					ServiceDelegation: &network.SubnetDelegationServiceDelegationArgs{
/// 						Name: pulumi.String("Microsoft.Web/serverFarms"),
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
/// 		examplePlan, err := appservice.NewPlan(ctx, "example", &appservice.PlanArgs{
/// 			Name:              pulumi.String("example-service-plan"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku: &appservice.PlanSkuArgs{
/// 				Tier: pulumi.String("Standard"),
/// 				Size: pulumi.String("S1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAppService, err := appservice.NewAppService(ctx, "example", &appservice.AppServiceArgs{
/// 			Name:              pulumi.String("example-app-service"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AppServicePlanId:  examplePlan.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example_staging, err := appservice.NewSlot(ctx, "example-staging", &appservice.SlotArgs{
/// 			Name:              pulumi.String("staging"),
/// 			AppServiceName:    exampleAppService.Name,
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AppServicePlanId:  examplePlan.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewSlotVirtualNetworkSwiftConnection(ctx, "example", &appservice.SlotVirtualNetworkSwiftConnectionArgs{
/// 			SlotName:     example_staging.Name,
/// 			AppServiceId: exampleAppService.ID(),
/// 			SubnetId:     exampleSubnet.ID(),
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
/// import com.pulumi.azure.appservice.Plan;
/// import com.pulumi.azure.appservice.PlanArgs;
/// import com.pulumi.azure.appservice.inputs.PlanSkuArgs;
/// import com.pulumi.azure.appservice.AppService;
/// import com.pulumi.azure.appservice.AppServiceArgs;
/// import com.pulumi.azure.appservice.Slot;
/// import com.pulumi.azure.appservice.SlotArgs;
/// import com.pulumi.azure.appservice.SlotVirtualNetworkSwiftConnection;
/// import com.pulumi.azure.appservice.SlotVirtualNetworkSwiftConnectionArgs;
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
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-virtual-network")
///             .addressSpaces("10.0.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("example-subnet")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.1.0/24")
///             .delegations(SubnetDelegationArgs.builder()
///                 .name("example-delegation")
///                 .serviceDelegation(SubnetDelegationServiceDelegationArgs.builder()
///                     .name("Microsoft.Web/serverFarms")
///                     .actions("Microsoft.Network/virtualNetworks/subnets/action")
///                     .build())
///                 .build())
///             .build());
///
///         var examplePlan = new Plan("examplePlan", PlanArgs.builder()
///             .name("example-service-plan")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku(PlanSkuArgs.builder()
///                 .tier("Standard")
///                 .size("S1")
///                 .build())
///             .build());
///
///         var exampleAppService = new AppService("exampleAppService", AppServiceArgs.builder()
///             .name("example-app-service")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .appServicePlanId(examplePlan.id())
///             .build());
///
///         var example_staging = new Slot("example-staging", SlotArgs.builder()
///             .name("staging")
///             .appServiceName(exampleAppService.name())
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .appServicePlanId(examplePlan.id())
///             .build());
///
///         var exampleSlotVirtualNetworkSwiftConnection = new SlotVirtualNetworkSwiftConnection("exampleSlotVirtualNetworkSwiftConnection", SlotVirtualNetworkSwiftConnectionArgs.builder()
///             .slotName(example_staging.name())
///             .appServiceId(exampleAppService.id())
///             .subnetId(exampleSubnet.id())
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
///       name: example-resources
///       location: West Europe
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example-virtual-network
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: example-subnet
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.1.0/24
///       delegations:
///         - name: example-delegation
///           serviceDelegation:
///             name: Microsoft.Web/serverFarms
///             actions:
///               - Microsoft.Network/virtualNetworks/subnets/action
///   examplePlan:
///     type: azure:appservice:Plan
///     name: example
///     properties:
///       name: example-service-plan
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku:
///         tier: Standard
///         size: S1
///   exampleAppService:
///     type: azure:appservice:AppService
///     name: example
///     properties:
///       name: example-app-service
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       appServicePlanId: ${examplePlan.id}
///   example-staging:
///     type: azure:appservice:Slot
///     properties:
///       name: staging
///       appServiceName: ${exampleAppService.name}
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       appServicePlanId: ${examplePlan.id}
///   exampleSlotVirtualNetworkSwiftConnection:
///     type: azure:appservice:SlotVirtualNetworkSwiftConnection
///     name: example
///     properties:
///       slotName: ${["example-staging"].name}
///       appServiceId: ${exampleAppService.id}
///       subnetId: ${exampleSubnet.id}
/// ```
///
///
/// ## Import
///
/// App Service Slot Virtual Network Associations can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/slotVirtualNetworkSwiftConnection:SlotVirtualNetworkSwiftConnection myassociation /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Web/sites/instance1/slots/staging/config/virtualNetwork
/// ```
class SlotVirtualNetworkSwiftConnection extends pulumi.CustomResource {
  /// The ID of the App Service or Function App to associate to the VNet. Changing this forces a new resource to be created.
  late final pulumi.Output<String> appServiceId;
  /// The name of the App Service Slot or Function App Slot. Changing this forces a new resource to be created.
  late final pulumi.Output<String> slotName;
  /// The ID of the subnet the app service will be associated to (the subnet must have a `service_delegation` configured for `Microsoft.Web/serverFarms`).
  late final pulumi.Output<String> subnetId;

  /// Creates a new [SlotVirtualNetworkSwiftConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SlotVirtualNetworkSwiftConnection]. {@macro pulumi_appservice_slot_virtual_network_swift_connection_slot_virtual_network_swift_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SlotVirtualNetworkSwiftConnection(
    String name, {
    SlotVirtualNetworkSwiftConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/slotVirtualNetworkSwiftConnection:SlotVirtualNetworkSwiftConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appServiceId = registerOutput<String>('appServiceId');
    this.slotName = registerOutput<String>('slotName');
    this.subnetId = registerOutput<String>('subnetId');
  }

  /// Gets an existing [SlotVirtualNetworkSwiftConnection] resource's state with the given [name] and [id].
  static SlotVirtualNetworkSwiftConnection get(
    String name,
    pulumi.Input<String> id, {
    SlotVirtualNetworkSwiftConnectionState? state,
  }) {
    return SlotVirtualNetworkSwiftConnection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SlotVirtualNetworkSwiftConnection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/slotVirtualNetworkSwiftConnection:SlotVirtualNetworkSwiftConnection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appServiceId = registerOutput<String>('appServiceId');
    this.slotName = registerOutput<String>('slotName');
    this.subnetId = registerOutput<String>('subnetId');
  }
}
