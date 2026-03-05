import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_app_hybrid_connection_args.dart';
import 'function_app_hybrid_connection_state.dart';

/// Manages a Function App Hybrid Connection.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-rg",
///     location: "West Europe",
/// });
/// const exampleServicePlan = new azure.appservice.ServicePlan("example", {
///     name: "example-plan",
///     location: example.location,
///     resourceGroupName: example.name,
///     osType: "Windows",
///     skuName: "S1",
/// });
/// const exampleNamespace = new azure.relay.Namespace("example", {
///     name: "example-relay",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "Standard",
/// });
/// const exampleHybridConnection = new azure.relay.HybridConnection("example", {
///     name: "examplerhc1",
///     resourceGroupName: example.name,
///     relayNamespaceName: exampleNamespace.name,
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "storageaccountname",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "GRS",
/// });
/// const exampleWindowsWebApp = new azure.appservice.WindowsWebApp("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     servicePlanId: exampleServicePlan.id,
///     siteConfig: {},
/// });
/// const exampleWindowsFunctionApp = new azure.appservice.WindowsFunctionApp("example", {
///     name: "example-function-app",
///     location: example.location,
///     resourceGroupName: example.name,
///     servicePlanId: exampleServicePlan.id,
///     storageAccountName: exampleAccount.name,
///     storageAccountAccessKey: exampleAccount.primaryAccessKey,
///     siteConfig: {},
/// });
/// const exampleFunctionAppHybridConnection = new azure.appservice.FunctionAppHybridConnection("example", {
///     functionAppId: exampleWindowsWebApp.id,
///     relayId: exampleHybridConnection.id,
///     hostname: "myhostname.example",
///     port: 8081,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="West Europe")
/// example_service_plan = azure.appservice.ServicePlan("example",
///     name="example-plan",
///     location=example.location,
///     resource_group_name=example.name,
///     os_type="Windows",
///     sku_name="S1")
/// example_namespace = azure.relay.Namespace("example",
///     name="example-relay",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="Standard")
/// example_hybrid_connection = azure.relay.HybridConnection("example",
///     name="examplerhc1",
///     resource_group_name=example.name,
///     relay_namespace_name=example_namespace.name)
/// example_account = azure.storage.Account("example",
///     name="storageaccountname",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="GRS")
/// example_windows_web_app = azure.appservice.WindowsWebApp("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     service_plan_id=example_service_plan.id,
///     site_config={})
/// example_windows_function_app = azure.appservice.WindowsFunctionApp("example",
///     name="example-function-app",
///     location=example.location,
///     resource_group_name=example.name,
///     service_plan_id=example_service_plan.id,
///     storage_account_name=example_account.name,
///     storage_account_access_key=example_account.primary_access_key,
///     site_config={})
/// example_function_app_hybrid_connection = azure.appservice.FunctionAppHybridConnection("example",
///     function_app_id=example_windows_web_app.id,
///     relay_id=example_hybrid_connection.id,
///     hostname="myhostname.example",
///     port=8081)
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
///         Name = "example-rg",
///         Location = "West Europe",
///     });
///
///     var exampleServicePlan = new Azure.AppService.ServicePlan("example", new()
///     {
///         Name = "example-plan",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         OsType = "Windows",
///         SkuName = "S1",
///     });
///
///     var exampleNamespace = new Azure.Relay.Namespace("example", new()
///     {
///         Name = "example-relay",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "Standard",
///     });
///
///     var exampleHybridConnection = new Azure.Relay.HybridConnection("example", new()
///     {
///         Name = "examplerhc1",
///         ResourceGroupName = example.Name,
///         RelayNamespaceName = exampleNamespace.Name,
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "storageaccountname",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "GRS",
///     });
///
///     var exampleWindowsWebApp = new Azure.AppService.WindowsWebApp("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ServicePlanId = exampleServicePlan.Id,
///         SiteConfig = null,
///     });
///
///     var exampleWindowsFunctionApp = new Azure.AppService.WindowsFunctionApp("example", new()
///     {
///         Name = "example-function-app",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ServicePlanId = exampleServicePlan.Id,
///         StorageAccountName = exampleAccount.Name,
///         StorageAccountAccessKey = exampleAccount.PrimaryAccessKey,
///         SiteConfig = null,
///     });
///
///     var exampleFunctionAppHybridConnection = new Azure.AppService.FunctionAppHybridConnection("example", new()
///     {
///         FunctionAppId = exampleWindowsWebApp.Id,
///         RelayId = exampleHybridConnection.Id,
///         Hostname = "myhostname.example",
///         Port = 8081,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleServicePlan, err := appservice.NewServicePlan(ctx, "example", &appservice.ServicePlanArgs{
/// 			Name:              pulumi.String("example-plan"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			OsType:            pulumi.String("Windows"),
/// 			SkuName:           pulumi.String("S1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNamespace, err := relay.NewNamespace(ctx, "example", &relay.NamespaceArgs{
/// 			Name:              pulumi.String("example-relay"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleHybridConnection, err := relay.NewHybridConnection(ctx, "example", &relay.HybridConnectionArgs{
/// 			Name:               pulumi.String("examplerhc1"),
/// 			ResourceGroupName:  example.Name,
/// 			RelayNamespaceName: exampleNamespace.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("storageaccountname"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("GRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWindowsWebApp, err := appservice.NewWindowsWebApp(ctx, "example", &appservice.WindowsWebAppArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			ServicePlanId:     exampleServicePlan.ID(),
/// 			SiteConfig:        &appservice.WindowsWebAppSiteConfigArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewWindowsFunctionApp(ctx, "example", &appservice.WindowsFunctionAppArgs{
/// 			Name:                    pulumi.String("example-function-app"),
/// 			Location:                example.Location,
/// 			ResourceGroupName:       example.Name,
/// 			ServicePlanId:           exampleServicePlan.ID(),
/// 			StorageAccountName:      exampleAccount.Name,
/// 			StorageAccountAccessKey: exampleAccount.PrimaryAccessKey,
/// 			SiteConfig:              &appservice.WindowsFunctionAppSiteConfigArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewFunctionAppHybridConnection(ctx, "example", &appservice.FunctionAppHybridConnectionArgs{
/// 			FunctionAppId: exampleWindowsWebApp.ID(),
/// 			RelayId:       exampleHybridConnection.ID(),
/// 			Hostname:      pulumi.String("myhostname.example"),
/// 			Port:          pulumi.Int(8081),
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
/// import com.pulumi.azure.appservice.ServicePlan;
/// import com.pulumi.azure.appservice.ServicePlanArgs;
/// import com.pulumi.azure.relay.Namespace;
/// import com.pulumi.azure.relay.NamespaceArgs;
/// import com.pulumi.azure.relay.HybridConnection;
/// import com.pulumi.azure.relay.HybridConnectionArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.appservice.WindowsWebApp;
/// import com.pulumi.azure.appservice.WindowsWebAppArgs;
/// import com.pulumi.azure.appservice.inputs.WindowsWebAppSiteConfigArgs;
/// import com.pulumi.azure.appservice.WindowsFunctionApp;
/// import com.pulumi.azure.appservice.WindowsFunctionAppArgs;
/// import com.pulumi.azure.appservice.inputs.WindowsFunctionAppSiteConfigArgs;
/// import com.pulumi.azure.appservice.FunctionAppHybridConnection;
/// import com.pulumi.azure.appservice.FunctionAppHybridConnectionArgs;
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
///             .name("example-rg")
///             .location("West Europe")
///             .build());
///
///         var exampleServicePlan = new ServicePlan("exampleServicePlan", ServicePlanArgs.builder()
///             .name("example-plan")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .osType("Windows")
///             .skuName("S1")
///             .build());
///
///         var exampleNamespace = new Namespace("exampleNamespace", NamespaceArgs.builder()
///             .name("example-relay")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("Standard")
///             .build());
///
///         var exampleHybridConnection = new HybridConnection("exampleHybridConnection", HybridConnectionArgs.builder()
///             .name("examplerhc1")
///             .resourceGroupName(example.name())
///             .relayNamespaceName(exampleNamespace.name())
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("storageaccountname")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("GRS")
///             .build());
///
///         var exampleWindowsWebApp = new WindowsWebApp("exampleWindowsWebApp", WindowsWebAppArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .servicePlanId(exampleServicePlan.id())
///             .siteConfig(WindowsWebAppSiteConfigArgs.builder()
///                 .build())
///             .build());
///
///         var exampleWindowsFunctionApp = new WindowsFunctionApp("exampleWindowsFunctionApp", WindowsFunctionAppArgs.builder()
///             .name("example-function-app")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .servicePlanId(exampleServicePlan.id())
///             .storageAccountName(exampleAccount.name())
///             .storageAccountAccessKey(exampleAccount.primaryAccessKey())
///             .siteConfig(WindowsFunctionAppSiteConfigArgs.builder()
///                 .build())
///             .build());
///
///         var exampleFunctionAppHybridConnection = new FunctionAppHybridConnection("exampleFunctionAppHybridConnection", FunctionAppHybridConnectionArgs.builder()
///             .functionAppId(exampleWindowsWebApp.id())
///             .relayId(exampleHybridConnection.id())
///             .hostname("myhostname.example")
///             .port(8081)
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
///       name: example-rg
///       location: West Europe
///   exampleServicePlan:
///     type: azure:appservice:ServicePlan
///     name: example
///     properties:
///       name: example-plan
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       osType: Windows
///       skuName: S1
///   exampleNamespace:
///     type: azure:relay:Namespace
///     name: example
///     properties:
///       name: example-relay
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: Standard
///   exampleHybridConnection:
///     type: azure:relay:HybridConnection
///     name: example
///     properties:
///       name: examplerhc1
///       resourceGroupName: ${example.name}
///       relayNamespaceName: ${exampleNamespace.name}
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: storageaccountname
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: GRS
///   exampleWindowsWebApp:
///     type: azure:appservice:WindowsWebApp
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       servicePlanId: ${exampleServicePlan.id}
///       siteConfig: {}
///   exampleWindowsFunctionApp:
///     type: azure:appservice:WindowsFunctionApp
///     name: example
///     properties:
///       name: example-function-app
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       servicePlanId: ${exampleServicePlan.id}
///       storageAccountName: ${exampleAccount.name}
///       storageAccountAccessKey: ${exampleAccount.primaryAccessKey}
///       siteConfig: {}
///   exampleFunctionAppHybridConnection:
///     type: azure:appservice:FunctionAppHybridConnection
///     name: example
///     properties:
///       functionAppId: ${exampleWindowsWebApp.id}
///       relayId: ${exampleHybridConnection.id}
///       hostname: myhostname.example
///       port: 8081
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
/// * `Microsoft.Web` - 2023-12-01
///
/// ## Import
///
/// a Function App Hybrid Connection can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/functionAppHybridConnection:FunctionAppHybridConnection example "/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.Web/sites/site1/hybridConnectionNamespaces/hybridConnectionNamespace1/relays/relay1"
/// ```
class FunctionAppHybridConnection extends pulumi.CustomResource {
  /// The ID of the Function App for this Hybrid Connection. Changing this forces a new resource to be created.
  late final pulumi.Output<String> functionAppId;
  /// The hostname of the endpoint.
  late final pulumi.Output<String> hostname;
  /// The name of the Relay Namespace.
  late final pulumi.Output<String> namespaceName;
  /// The port to use for the endpoint
  late final pulumi.Output<int> port;
  /// The ID of the Relay Hybrid Connection to use. Changing this forces a new resource to be created.
  late final pulumi.Output<String> relayId;
  /// The name of the Relay in use.
  late final pulumi.Output<String> relayName;
  /// The name of the Relay key with `Send` permission to use. Defaults to `RootManageSharedAccessKey`
  late final pulumi.Output<String?> sendKeyName;
  /// The Primary Access Key for the `send_key_name`
  late final pulumi.Output<String> sendKeyValue;
  /// The Service Bus Namespace.
  late final pulumi.Output<String> serviceBusNamespace;
  /// The suffix for the endpoint.
  late final pulumi.Output<String> serviceBusSuffix;

  /// Creates a new [FunctionAppHybridConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FunctionAppHybridConnection]. {@macro pulumi_appservice_function_app_hybrid_connection_function_app_hybrid_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FunctionAppHybridConnection(
    String name, {
    FunctionAppHybridConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/functionAppHybridConnection:FunctionAppHybridConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    functionAppId = registerOutput<String>('functionAppId');
    hostname = registerOutput<String>('hostname');
    namespaceName = registerOutput<String>('namespaceName');
    port = registerOutput<int>('port');
    relayId = registerOutput<String>('relayId');
    relayName = registerOutput<String>('relayName');
    sendKeyName = registerOutput<String?>('sendKeyName');
    sendKeyValue = registerOutput<String>('sendKeyValue');
    serviceBusNamespace = registerOutput<String>('serviceBusNamespace');
    serviceBusSuffix = registerOutput<String>('serviceBusSuffix');
  }

  /// Gets an existing [FunctionAppHybridConnection] resource's state with the given [name] and [id].
  static FunctionAppHybridConnection get(
    String name,
    pulumi.Input<String> id, {
    FunctionAppHybridConnectionState? state,
  }) {
    return FunctionAppHybridConnection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FunctionAppHybridConnection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/functionAppHybridConnection:FunctionAppHybridConnection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    functionAppId = registerOutput<String>('functionAppId');
    hostname = registerOutput<String>('hostname');
    namespaceName = registerOutput<String>('namespaceName');
    port = registerOutput<int>('port');
    relayId = registerOutput<String>('relayId');
    relayName = registerOutput<String>('relayName');
    sendKeyName = registerOutput<String?>('sendKeyName');
    sendKeyValue = registerOutput<String>('sendKeyValue');
    serviceBusNamespace = registerOutput<String>('serviceBusNamespace');
    serviceBusSuffix = registerOutput<String>('serviceBusSuffix');
  }
}
