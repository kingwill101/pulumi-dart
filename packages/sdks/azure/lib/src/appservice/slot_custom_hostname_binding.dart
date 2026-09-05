import 'package:pulumi/pulumi.dart' as pulumi;
import 'slot_custom_hostname_binding_args.dart';
import 'slot_custom_hostname_binding_state.dart';

/// Manages a Hostname Binding within an App Service Slot.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "some-resource-group",
///     location: "West Europe",
/// });
/// const examplePlan = new azure.appservice.Plan("example", {
///     name: "some-app-service-plan",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: {
///         tier: "Standard",
///         size: "S1",
///     },
/// });
/// const exampleAppService = new azure.appservice.AppService("example", {
///     name: "some-app-service",
///     location: example.location,
///     resourceGroupName: example.name,
///     appServicePlanId: examplePlan.id,
/// });
/// const exampleSlot = new azure.appservice.Slot("example", {
///     name: "staging",
///     location: example.location,
///     resourceGroupName: example.name,
///     appServiceName: exampleAppService.name,
///     appServicePlanId: examplePlan.id,
/// });
/// const exampleSlotCustomHostnameBinding = new azure.appservice.SlotCustomHostnameBinding("example", {
///     appServiceSlotId: exampleSlot.id,
///     hostname: "www.mywebsite.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="some-resource-group",
///     location="West Europe")
/// example_plan = azure.appservice.Plan("example",
///     name="some-app-service-plan",
///     location=example.location,
///     resource_group_name=example.name,
///     sku={
///         "tier": "Standard",
///         "size": "S1",
///     })
/// example_app_service = azure.appservice.AppService("example",
///     name="some-app-service",
///     location=example.location,
///     resource_group_name=example.name,
///     app_service_plan_id=example_plan.id)
/// example_slot = azure.appservice.Slot("example",
///     name="staging",
///     location=example.location,
///     resource_group_name=example.name,
///     app_service_name=example_app_service.name,
///     app_service_plan_id=example_plan.id)
/// example_slot_custom_hostname_binding = azure.appservice.SlotCustomHostnameBinding("example",
///     app_service_slot_id=example_slot.id,
///     hostname="www.mywebsite.com")
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
///         Name = "some-resource-group",
///         Location = "West Europe",
///     });
///
///     var examplePlan = new Azure.AppService.Plan("example", new()
///     {
///         Name = "some-app-service-plan",
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
///         Name = "some-app-service",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AppServicePlanId = examplePlan.Id,
///     });
///
///     var exampleSlot = new Azure.AppService.Slot("example", new()
///     {
///         Name = "staging",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AppServiceName = exampleAppService.Name,
///         AppServicePlanId = examplePlan.Id,
///     });
///
///     var exampleSlotCustomHostnameBinding = new Azure.AppService.SlotCustomHostnameBinding("example", new()
///     {
///         AppServiceSlotId = exampleSlot.Id,
///         Hostname = "www.mywebsite.com",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("some-resource-group"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePlan, err := appservice.NewPlan(ctx, "example", &appservice.PlanArgs{
/// 			Name:              pulumi.String("some-app-service-plan"),
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
/// 			Name:              pulumi.String("some-app-service"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AppServicePlanId:  examplePlan.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSlot, err := appservice.NewSlot(ctx, "example", &appservice.SlotArgs{
/// 			Name:              pulumi.String("staging"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AppServiceName:    exampleAppService.Name,
/// 			AppServicePlanId:  examplePlan.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewSlotCustomHostnameBinding(ctx, "example", &appservice.SlotCustomHostnameBindingArgs{
/// 			AppServiceSlotId: exampleSlot.ID().ToIDOutput().ToStringOutput(),
/// 			Hostname:         pulumi.String("www.mywebsite.com"),
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "some-resource-group"
///   location = "West Europe"
/// }
/// resource "azure_appservice_plan" "example" {
///   name                = "some-app-service-plan"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku = {
///     tier = "Standard"
///     size = "S1"
///   }
/// }
/// resource "azure_appservice_appservice" "example" {
///   name                = "some-app-service"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   app_service_plan_id = azure_appservice_plan.example.id
/// }
/// resource "azure_appservice_slot" "example" {
///   name                = "staging"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   app_service_name    = azure_appservice_appservice.example.name
///   app_service_plan_id = azure_appservice_plan.example.id
/// }
/// resource "azure_appservice_slotcustomhostnamebinding" "example" {
///   app_service_slot_id = azure_appservice_slot.example.id
///   hostname            = "www.mywebsite.com"
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
/// import com.pulumi.azure.appservice.Plan;
/// import com.pulumi.azure.appservice.PlanArgs;
/// import com.pulumi.azure.appservice.inputs.PlanSkuArgs;
/// import com.pulumi.azure.appservice.AppService;
/// import com.pulumi.azure.appservice.AppServiceArgs;
/// import com.pulumi.azure.appservice.Slot;
/// import com.pulumi.azure.appservice.SlotArgs;
/// import com.pulumi.azure.appservice.SlotCustomHostnameBinding;
/// import com.pulumi.azure.appservice.SlotCustomHostnameBindingArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("some-resource-group")
///             .location("West Europe")
///             .build());
///
///         var examplePlan = new Plan("examplePlan", PlanArgs.builder()
///             .name("some-app-service-plan")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku(PlanSkuArgs.builder()
///                 .tier("Standard")
///                 .size("S1")
///                 .build())
///             .build());
///
///         var exampleAppService = new AppService("exampleAppService", AppServiceArgs.builder()
///             .name("some-app-service")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .appServicePlanId(examplePlan.id())
///             .build());
///
///         var exampleSlot = new Slot("exampleSlot", SlotArgs.builder()
///             .name("staging")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .appServiceName(exampleAppService.name())
///             .appServicePlanId(examplePlan.id())
///             .build());
///
///         var exampleSlotCustomHostnameBinding = new SlotCustomHostnameBinding("exampleSlotCustomHostnameBinding", SlotCustomHostnameBindingArgs.builder()
///             .appServiceSlotId(exampleSlot.id())
///             .hostname("www.mywebsite.com")
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
///       name: some-resource-group
///       location: West Europe
///   examplePlan:
///     type: azure:appservice:Plan
///     name: example
///     properties:
///       name: some-app-service-plan
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku:
///         tier: Standard
///         size: S1
///   exampleAppService:
///     type: azure:appservice:AppService
///     name: example
///     properties:
///       name: some-app-service
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       appServicePlanId: ${examplePlan.id}
///   exampleSlot:
///     type: azure:appservice:Slot
///     name: example
///     properties:
///       name: staging
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       appServiceName: ${exampleAppService.name}
///       appServicePlanId: ${examplePlan.id}
///   exampleSlotCustomHostnameBinding:
///     type: azure:appservice:SlotCustomHostnameBinding
///     name: example
///     properties:
///       appServiceSlotId: ${exampleSlot.id}
///       hostname: www.mywebsite.com
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Web` - 2023-12-01
///
/// ## Import
///
/// App Service Custom Hostname Bindings can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/slotCustomHostnameBinding:SlotCustomHostnameBinding mywebsite /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Web/sites/instance1/slots/staging/hostNameBindings/mywebsite.com
/// ```
class SlotCustomHostnameBinding extends pulumi.CustomResource {
  /// The ID of the App Service Slot. Changing this forces a new resource to be created.
  late final pulumi.Output<String> appServiceSlotId;
  /// Specifies the Custom Hostname to use for the App Service, example `www.example.com`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** A CNAME needs to be configured from this Hostname to the Azure Website - otherwise Azure will reject the Hostname Binding.
  late final pulumi.Output<String> hostname;
  /// The SSL type. Possible values are `IpBasedEnabled` and `SniEnabled`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> sslState;
  /// The SSL certificate thumbprint. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `thumbprint` must be specified when `sslState` is set.
  late final pulumi.Output<String> thumbprint;
  /// The virtual IP address assigned to the hostname if IP based SSL is enabled.
  late final pulumi.Output<String> virtualIp;

  /// Creates a new [SlotCustomHostnameBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SlotCustomHostnameBinding]. {@macro pulumi_appservice_slot_custom_hostname_binding_slot_custom_hostname_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SlotCustomHostnameBinding(
    String name, {
    SlotCustomHostnameBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/slotCustomHostnameBinding:SlotCustomHostnameBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    appServiceSlotId = registerOutput<String>('appServiceSlotId');
    hostname = registerOutput<String>('hostname');
    sslState = registerOutput<String>('sslState');
    thumbprint = registerOutput<String>('thumbprint');
    virtualIp = registerOutput<String>('virtualIp');
  }

  /// Gets an existing [SlotCustomHostnameBinding] resource's state with the given [name] and [id].
  static SlotCustomHostnameBinding get(
    String name,
    pulumi.Input<String> id, {
    SlotCustomHostnameBindingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SlotCustomHostnameBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SlotCustomHostnameBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/slotCustomHostnameBinding:SlotCustomHostnameBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appServiceSlotId = registerOutput<String>('appServiceSlotId');
    hostname = registerOutput<String>('hostname');
    sslState = registerOutput<String>('sslState');
    thumbprint = registerOutput<String>('thumbprint');
    virtualIp = registerOutput<String>('virtualIp');
  }

  /// Creates a typed reference to an existing [SlotCustomHostnameBinding] resource.
  SlotCustomHostnameBinding.reference(String urn)
    : super(
        'azure:appservice/slotCustomHostnameBinding:SlotCustomHostnameBinding',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    appServiceSlotId = registerOutput<String>('appServiceSlotId');
    hostname = registerOutput<String>('hostname');
    sslState = registerOutput<String>('sslState');
    thumbprint = registerOutput<String>('thumbprint');
    virtualIp = registerOutput<String>('virtualIp');
  }
}
