import 'package:pulumi/pulumi.dart' as pulumi;
import 'hybrid_connection_args.dart';
import 'hybrid_connection_state.dart';

/// Manages an App Service Hybrid Connection for an existing App Service, Relay and Service Bus.
///
/// &gt; **NOTE:** This resource has been deprecated and will be removed in version 6.0 of the provider. Please use `azure.appservice.FunctionAppHybridConnection` and `azure.appservice.WebAppHybridConnection` resources instead.
///
/// ## Example Usage
///
/// This example provisions an App Service, a Relay Hybrid Connection, and a Service Bus using their outputs to create the App Service Hybrid Connection.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "exampleResourceGroup1",
///     location: "West Europe",
/// });
/// const examplePlan = new azure.appservice.Plan("example", {
///     name: "exampleAppServicePlan1",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: {
///         tier: "Standard",
///         size: "S1",
///     },
/// });
/// const exampleAppService = new azure.appservice.AppService("example", {
///     name: "exampleAppService1",
///     location: example.location,
///     resourceGroupName: example.name,
///     appServicePlanId: examplePlan.id,
/// });
/// const exampleNamespace = new azure.relay.Namespace("example", {
///     name: "exampleRN1",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "Standard",
/// });
/// const exampleHybridConnection = new azure.relay.HybridConnection("example", {
///     name: "exampleRHC1",
///     resourceGroupName: example.name,
///     relayNamespaceName: exampleNamespace.name,
///     userMetadata: "examplemetadata",
/// });
/// const exampleHybridConnection2 = new azure.appservice.HybridConnection("example", {
///     appServiceName: exampleAppService.name,
///     resourceGroupName: example.name,
///     relayId: exampleHybridConnection.id,
///     hostname: "testhostname.example",
///     port: 8080,
///     sendKeyName: "exampleSharedAccessKey",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="exampleResourceGroup1",
///     location="West Europe")
/// example_plan = azure.appservice.Plan("example",
///     name="exampleAppServicePlan1",
///     location=example.location,
///     resource_group_name=example.name,
///     sku={
///         "tier": "Standard",
///         "size": "S1",
///     })
/// example_app_service = azure.appservice.AppService("example",
///     name="exampleAppService1",
///     location=example.location,
///     resource_group_name=example.name,
///     app_service_plan_id=example_plan.id)
/// example_namespace = azure.relay.Namespace("example",
///     name="exampleRN1",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="Standard")
/// example_hybrid_connection = azure.relay.HybridConnection("example",
///     name="exampleRHC1",
///     resource_group_name=example.name,
///     relay_namespace_name=example_namespace.name,
///     user_metadata="examplemetadata")
/// example_hybrid_connection2 = azure.appservice.HybridConnection("example",
///     app_service_name=example_app_service.name,
///     resource_group_name=example.name,
///     relay_id=example_hybrid_connection.id,
///     hostname="testhostname.example",
///     port=8080,
///     send_key_name="exampleSharedAccessKey")
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
///         Name = "exampleResourceGroup1",
///         Location = "West Europe",
///     });
///
///     var examplePlan = new Azure.AppService.Plan("example", new()
///     {
///         Name = "exampleAppServicePlan1",
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
///         Name = "exampleAppService1",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AppServicePlanId = examplePlan.Id,
///     });
///
///     var exampleNamespace = new Azure.Relay.Namespace("example", new()
///     {
///         Name = "exampleRN1",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "Standard",
///     });
///
///     var exampleHybridConnection = new Azure.Relay.HybridConnection("example", new()
///     {
///         Name = "exampleRHC1",
///         ResourceGroupName = example.Name,
///         RelayNamespaceName = exampleNamespace.Name,
///         UserMetadata = "examplemetadata",
///     });
///
///     var exampleHybridConnection2 = new Azure.AppService.HybridConnection("example", new()
///     {
///         AppServiceName = exampleAppService.Name,
///         ResourceGroupName = example.Name,
///         RelayId = exampleHybridConnection.Id,
///         Hostname = "testhostname.example",
///         Port = 8080,
///         SendKeyName = "exampleSharedAccessKey",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/relay"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("exampleResourceGroup1"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePlan, err := appservice.NewPlan(ctx, "example", &appservice.PlanArgs{
/// 			Name:              pulumi.String("exampleAppServicePlan1"),
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
/// 			Name:              pulumi.String("exampleAppService1"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AppServicePlanId:  examplePlan.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNamespace, err := relay.NewNamespace(ctx, "example", &relay.NamespaceArgs{
/// 			Name:              pulumi.String("exampleRN1"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleHybridConnection, err := relay.NewHybridConnection(ctx, "example", &relay.HybridConnectionArgs{
/// 			Name:               pulumi.String("exampleRHC1"),
/// 			ResourceGroupName:  example.Name,
/// 			RelayNamespaceName: exampleNamespace.Name,
/// 			UserMetadata:       pulumi.String("examplemetadata"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewHybridConnection(ctx, "example", &appservice.HybridConnectionArgs{
/// 			AppServiceName:    exampleAppService.Name,
/// 			ResourceGroupName: example.Name,
/// 			RelayId:           exampleHybridConnection.ID(),
/// 			Hostname:          pulumi.String("testhostname.example"),
/// 			Port:              pulumi.Int(8080),
/// 			SendKeyName:       pulumi.String("exampleSharedAccessKey"),
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
///   name     = "exampleResourceGroup1"
///   location = "West Europe"
/// }
/// resource "azure_appservice_plan" "example" {
///   name                = "exampleAppServicePlan1"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku = {
///     tier = "Standard"
///     size = "S1"
///   }
/// }
/// resource "azure_appservice_appservice" "example" {
///   name                = "exampleAppService1"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   app_service_plan_id = azure_appservice_plan.example.id
/// }
/// resource "azure_relay_namespace" "example" {
///   name                = "exampleRN1"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku_name            = "Standard"
/// }
/// resource "azure_relay_hybridconnection" "example" {
///   name                 = "exampleRHC1"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   relay_namespace_name = azure_relay_namespace.example.name
///   user_metadata        = "examplemetadata"
/// }
/// resource "azure_appservice_hybridconnection" "example" {
///   app_service_name    = azure_appservice_appservice.example.name
///   resource_group_name = azure_core_resourcegroup.example.name
///   relay_id            = azure_relay_hybridconnection.example.id
///   hostname            = "testhostname.example"
///   port                = 8080
///   send_key_name       = "exampleSharedAccessKey"
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
/// import com.pulumi.azure.relay.Namespace;
/// import com.pulumi.azure.relay.NamespaceArgs;
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
///             .name("exampleResourceGroup1")
///             .location("West Europe")
///             .build());
///
///         var examplePlan = new Plan("examplePlan", PlanArgs.builder()
///             .name("exampleAppServicePlan1")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku(PlanSkuArgs.builder()
///                 .tier("Standard")
///                 .size("S1")
///                 .build())
///             .build());
///
///         var exampleAppService = new AppService("exampleAppService", AppServiceArgs.builder()
///             .name("exampleAppService1")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .appServicePlanId(examplePlan.id())
///             .build());
///
///         var exampleNamespace = new Namespace("exampleNamespace", NamespaceArgs.builder()
///             .name("exampleRN1")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("Standard")
///             .build());
///
///         var exampleHybridConnection = new com.pulumi.azure.relay.HybridConnection("exampleHybridConnection", com.pulumi.azure.relay.HybridConnectionArgs.builder()
///             .name("exampleRHC1")
///             .resourceGroupName(example.name())
///             .relayNamespaceName(exampleNamespace.name())
///             .userMetadata("examplemetadata")
///             .build());
///
///         var exampleHybridConnection2 = new com.pulumi.azure.appservice.HybridConnection("exampleHybridConnection2", com.pulumi.azure.appservice.HybridConnectionArgs.builder()
///             .appServiceName(exampleAppService.name())
///             .resourceGroupName(example.name())
///             .relayId(exampleHybridConnection.id())
///             .hostname("testhostname.example")
///             .port(8080)
///             .sendKeyName("exampleSharedAccessKey")
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
///       name: exampleResourceGroup1
///       location: West Europe
///   examplePlan:
///     type: azure:appservice:Plan
///     name: example
///     properties:
///       name: exampleAppServicePlan1
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku:
///         tier: Standard
///         size: S1
///   exampleAppService:
///     type: azure:appservice:AppService
///     name: example
///     properties:
///       name: exampleAppService1
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       appServicePlanId: ${examplePlan.id}
///   exampleNamespace:
///     type: azure:relay:Namespace
///     name: example
///     properties:
///       name: exampleRN1
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: Standard
///   exampleHybridConnection:
///     type: azure:relay:HybridConnection
///     name: example
///     properties:
///       name: exampleRHC1
///       resourceGroupName: ${example.name}
///       relayNamespaceName: ${exampleNamespace.name}
///       userMetadata: examplemetadata
///   exampleHybridConnection2:
///     type: azure:appservice:HybridConnection
///     name: example
///     properties:
///       appServiceName: ${exampleAppService.name}
///       resourceGroupName: ${example.name}
///       relayId: ${exampleHybridConnection.id}
///       hostname: testhostname.example
///       port: 8080
///       sendKeyName: exampleSharedAccessKey
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Relay` - 2021-11-01
///
/// ## Import
///
/// App Service Hybrid Connections can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/hybridConnection:HybridConnection example /subscriptions/00000000-0000-0000-0000-00000000000/resourceGroups/exampleResourceGroup1/providers/Microsoft.Web/sites/exampleAppService1/hybridConnectionNamespaces/exampleRN1/relays/exampleRHC1
/// ```
class HybridConnection extends pulumi.CustomResource {
  /// Specifies the name of the App Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> appServiceName;
  /// The hostname of the endpoint.
  late final pulumi.Output<String> hostname;
  /// The name of the Relay Namespace.
  late final pulumi.Output<String> namespaceName;
  /// The port of the endpoint.
  late final pulumi.Output<int> port;
  /// The ID of the Service Bus Relay. Changing this forces a new resource to be created.
  late final pulumi.Output<String> relayId;
  late final pulumi.Output<String> relayName;
  /// The name of the resource group in which to create the App Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The name of the Service Bus key which has Send permissions. Defaults to `RootManageSharedAccessKey`.
  late final pulumi.Output<String?> sendKeyName;
  /// The value of the Service Bus Primary Access key.
  late final pulumi.Output<String> sendKeyValue;
  /// The name of the Service Bus namespace.
  late final pulumi.Output<String> serviceBusNamespace;
  /// The suffix for the service bus endpoint.
  late final pulumi.Output<String> serviceBusSuffix;

  /// Creates a new [HybridConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HybridConnection]. {@macro pulumi_appservice_hybrid_connection_hybrid_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HybridConnection(
    String name, {
    HybridConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/hybridConnection:HybridConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appServiceName = registerOutput<String>('appServiceName');
    hostname = registerOutput<String>('hostname');
    namespaceName = registerOutput<String>('namespaceName');
    port = registerOutput<int>('port');
    relayId = registerOutput<String>('relayId');
    relayName = registerOutput<String>('relayName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sendKeyName = registerOutput<String?>('sendKeyName');
    sendKeyValue = registerOutput<String>('sendKeyValue');
    serviceBusNamespace = registerOutput<String>('serviceBusNamespace');
    serviceBusSuffix = registerOutput<String>('serviceBusSuffix');
  }

  /// Gets an existing [HybridConnection] resource's state with the given [name] and [id].
  static HybridConnection get(
    String name,
    pulumi.Input<String> id, {
    HybridConnectionState? state,
  }) {
    return HybridConnection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HybridConnection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/hybridConnection:HybridConnection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appServiceName = registerOutput<String>('appServiceName');
    hostname = registerOutput<String>('hostname');
    namespaceName = registerOutput<String>('namespaceName');
    port = registerOutput<int>('port');
    relayId = registerOutput<String>('relayId');
    relayName = registerOutput<String>('relayName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sendKeyName = registerOutput<String?>('sendKeyName');
    sendKeyValue = registerOutput<String>('sendKeyValue');
    serviceBusNamespace = registerOutput<String>('serviceBusNamespace');
    serviceBusSuffix = registerOutput<String>('serviceBusSuffix');
  }
}
