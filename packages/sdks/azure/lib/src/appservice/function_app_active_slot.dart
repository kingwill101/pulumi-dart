import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_app_active_slot_args.dart';
import 'function_app_active_slot_state.dart';

/// Manages a Function App Active Slot.
///
/// ## Example Usage
///
/// ### Windows Function App
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
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "windowsfunctionappsa",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleServicePlan = new azure.appservice.ServicePlan("example", {
///     name: "example-app-service-plan",
///     resourceGroupName: example.name,
///     location: example.location,
///     osType: "Windows",
///     skuName: "Y1",
/// });
/// const exampleWindowsFunctionApp = new azure.appservice.WindowsFunctionApp("example", {
///     name: "example-windows-function-app",
///     resourceGroupName: example.name,
///     location: example.location,
///     storageAccountName: exampleAccount.name,
///     servicePlanId: exampleServicePlan.id,
///     siteConfig: {},
/// });
/// const exampleWindowsFunctionAppSlot = new azure.appservice.WindowsFunctionAppSlot("example", {
///     name: "example-windows-function-app-slot",
///     functionAppId: exampleWindowsFunctionApp.id,
///     storageAccountName: exampleAccount.name,
///     siteConfig: {},
/// });
/// const exampleFunctionAppActiveSlot = new azure.appservice.FunctionAppActiveSlot("example", {slotId: exampleWindowsFunctionAppSlot.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="windowsfunctionappsa",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_service_plan = azure.appservice.ServicePlan("example",
///     name="example-app-service-plan",
///     resource_group_name=example.name,
///     location=example.location,
///     os_type="Windows",
///     sku_name="Y1")
/// example_windows_function_app = azure.appservice.WindowsFunctionApp("example",
///     name="example-windows-function-app",
///     resource_group_name=example.name,
///     location=example.location,
///     storage_account_name=example_account.name,
///     service_plan_id=example_service_plan.id,
///     site_config={})
/// example_windows_function_app_slot = azure.appservice.WindowsFunctionAppSlot("example",
///     name="example-windows-function-app-slot",
///     function_app_id=example_windows_function_app.id,
///     storage_account_name=example_account.name,
///     site_config={})
/// example_function_app_active_slot = azure.appservice.FunctionAppActiveSlot("example", slot_id=example_windows_function_app_slot.id)
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
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "windowsfunctionappsa",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleServicePlan = new Azure.AppService.ServicePlan("example", new()
///     {
///         Name = "example-app-service-plan",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         OsType = "Windows",
///         SkuName = "Y1",
///     });
///
///     var exampleWindowsFunctionApp = new Azure.AppService.WindowsFunctionApp("example", new()
///     {
///         Name = "example-windows-function-app",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         StorageAccountName = exampleAccount.Name,
///         ServicePlanId = exampleServicePlan.Id,
///         SiteConfig = null,
///     });
///
///     var exampleWindowsFunctionAppSlot = new Azure.AppService.WindowsFunctionAppSlot("example", new()
///     {
///         Name = "example-windows-function-app-slot",
///         FunctionAppId = exampleWindowsFunctionApp.Id,
///         StorageAccountName = exampleAccount.Name,
///         SiteConfig = null,
///     });
///
///     var exampleFunctionAppActiveSlot = new Azure.AppService.FunctionAppActiveSlot("example", new()
///     {
///         SlotId = exampleWindowsFunctionAppSlot.Id,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
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
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("windowsfunctionappsa"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleServicePlan, err := appservice.NewServicePlan(ctx, "example", &appservice.ServicePlanArgs{
/// 			Name:              pulumi.String("example-app-service-plan"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			OsType:            pulumi.String("Windows"),
/// 			SkuName:           pulumi.String("Y1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWindowsFunctionApp, err := appservice.NewWindowsFunctionApp(ctx, "example", &appservice.WindowsFunctionAppArgs{
/// 			Name:               pulumi.String("example-windows-function-app"),
/// 			ResourceGroupName:  example.Name,
/// 			Location:           example.Location,
/// 			StorageAccountName: exampleAccount.Name,
/// 			ServicePlanId:      exampleServicePlan.ID(),
/// 			SiteConfig:         &appservice.WindowsFunctionAppSiteConfigArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWindowsFunctionAppSlot, err := appservice.NewWindowsFunctionAppSlot(ctx, "example", &appservice.WindowsFunctionAppSlotArgs{
/// 			Name:               pulumi.String("example-windows-function-app-slot"),
/// 			FunctionAppId:      exampleWindowsFunctionApp.ID(),
/// 			StorageAccountName: exampleAccount.Name,
/// 			SiteConfig:         &appservice.WindowsFunctionAppSlotSiteConfigArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewFunctionAppActiveSlot(ctx, "example", &appservice.FunctionAppActiveSlotArgs{
/// 			SlotId: exampleWindowsFunctionAppSlot.ID(),
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
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_storage_account" "example" {
///   name                     = "windowsfunctionappsa"
///   resource_group_name      = azure_core_resourcegroup.example.name
///   location                 = azure_core_resourcegroup.example.location
///   account_tier             = "Standard"
///   account_replication_type = "LRS"
/// }
/// resource "azure_appservice_serviceplan" "example" {
///   name                = "example-app-service-plan"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   os_type             = "Windows"
///   sku_name            = "Y1"
/// }
/// resource "azure_appservice_windowsfunctionapp" "example" {
///   name                 = "example-windows-function-app"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   location             = azure_core_resourcegroup.example.location
///   storage_account_name = azure_storage_account.example.name
///   service_plan_id      = azure_appservice_serviceplan.example.id
///   site_config          = {}
/// }
/// resource "azure_appservice_windowsfunctionappslot" "example" {
///   name                 = "example-windows-function-app-slot"
///   function_app_id      = azure_appservice_windowsfunctionapp.example.id
///   storage_account_name = azure_storage_account.example.name
///   site_config          = {}
/// }
/// resource "azure_appservice_functionappactiveslot" "example" {
///   slot_id = azure_appservice_windowsfunctionappslot.example.id
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
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.appservice.ServicePlan;
/// import com.pulumi.azure.appservice.ServicePlanArgs;
/// import com.pulumi.azure.appservice.WindowsFunctionApp;
/// import com.pulumi.azure.appservice.WindowsFunctionAppArgs;
/// import com.pulumi.azure.appservice.inputs.WindowsFunctionAppSiteConfigArgs;
/// import com.pulumi.azure.appservice.WindowsFunctionAppSlot;
/// import com.pulumi.azure.appservice.WindowsFunctionAppSlotArgs;
/// import com.pulumi.azure.appservice.inputs.WindowsFunctionAppSlotSiteConfigArgs;
/// import com.pulumi.azure.appservice.FunctionAppActiveSlot;
/// import com.pulumi.azure.appservice.FunctionAppActiveSlotArgs;
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
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("windowsfunctionappsa")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleServicePlan = new ServicePlan("exampleServicePlan", ServicePlanArgs.builder()
///             .name("example-app-service-plan")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .osType("Windows")
///             .skuName("Y1")
///             .build());
///
///         var exampleWindowsFunctionApp = new WindowsFunctionApp("exampleWindowsFunctionApp", WindowsFunctionAppArgs.builder()
///             .name("example-windows-function-app")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .storageAccountName(exampleAccount.name())
///             .servicePlanId(exampleServicePlan.id())
///             .siteConfig(WindowsFunctionAppSiteConfigArgs.builder()
///                 .build())
///             .build());
///
///         var exampleWindowsFunctionAppSlot = new WindowsFunctionAppSlot("exampleWindowsFunctionAppSlot", WindowsFunctionAppSlotArgs.builder()
///             .name("example-windows-function-app-slot")
///             .functionAppId(exampleWindowsFunctionApp.id())
///             .storageAccountName(exampleAccount.name())
///             .siteConfig(WindowsFunctionAppSlotSiteConfigArgs.builder()
///                 .build())
///             .build());
///
///         var exampleFunctionAppActiveSlot = new FunctionAppActiveSlot("exampleFunctionAppActiveSlot", FunctionAppActiveSlotArgs.builder()
///             .slotId(exampleWindowsFunctionAppSlot.id())
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
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: windowsfunctionappsa
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleServicePlan:
///     type: azure:appservice:ServicePlan
///     name: example
///     properties:
///       name: example-app-service-plan
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       osType: Windows
///       skuName: Y1
///   exampleWindowsFunctionApp:
///     type: azure:appservice:WindowsFunctionApp
///     name: example
///     properties:
///       name: example-windows-function-app
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       storageAccountName: ${exampleAccount.name}
///       servicePlanId: ${exampleServicePlan.id}
///       siteConfig: {}
///   exampleWindowsFunctionAppSlot:
///     type: azure:appservice:WindowsFunctionAppSlot
///     name: example
///     properties:
///       name: example-windows-function-app-slot
///       functionAppId: ${exampleWindowsFunctionApp.id}
///       storageAccountName: ${exampleAccount.name}
///       siteConfig: {}
///   exampleFunctionAppActiveSlot:
///     type: azure:appservice:FunctionAppActiveSlot
///     name: example
///     properties:
///       slotId: ${exampleWindowsFunctionAppSlot.id}
/// ```
///
///
/// ### Linux Function App
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
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "linuxfunctionappsa",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleServicePlan = new azure.appservice.ServicePlan("example", {
///     name: "example-app-service-plan",
///     resourceGroupName: example.name,
///     location: example.location,
///     osType: "Linux",
///     skuName: "Y1",
/// });
/// const exampleLinuxFunctionApp = new azure.appservice.LinuxFunctionApp("example", {
///     name: "example-linux-function-app",
///     resourceGroupName: example.name,
///     location: example.location,
///     servicePlanId: exampleServicePlan.id,
///     storageAccountName: exampleAccount.name,
///     siteConfig: {},
/// });
/// const exampleLinuxFunctionAppSlot = new azure.appservice.LinuxFunctionAppSlot("example", {
///     name: "example-linux-function-app-slot",
///     functionAppId: exampleLinuxFunctionApp.name,
///     storageAccountName: exampleAccount.name,
///     siteConfig: {},
/// });
/// const exampleFunctionAppActiveSlot = new azure.appservice.FunctionAppActiveSlot("example", {slotId: exampleLinuxFunctionAppSlot.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="linuxfunctionappsa",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_service_plan = azure.appservice.ServicePlan("example",
///     name="example-app-service-plan",
///     resource_group_name=example.name,
///     location=example.location,
///     os_type="Linux",
///     sku_name="Y1")
/// example_linux_function_app = azure.appservice.LinuxFunctionApp("example",
///     name="example-linux-function-app",
///     resource_group_name=example.name,
///     location=example.location,
///     service_plan_id=example_service_plan.id,
///     storage_account_name=example_account.name,
///     site_config={})
/// example_linux_function_app_slot = azure.appservice.LinuxFunctionAppSlot("example",
///     name="example-linux-function-app-slot",
///     function_app_id=example_linux_function_app.name,
///     storage_account_name=example_account.name,
///     site_config={})
/// example_function_app_active_slot = azure.appservice.FunctionAppActiveSlot("example", slot_id=example_linux_function_app_slot.id)
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
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "linuxfunctionappsa",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleServicePlan = new Azure.AppService.ServicePlan("example", new()
///     {
///         Name = "example-app-service-plan",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         OsType = "Linux",
///         SkuName = "Y1",
///     });
///
///     var exampleLinuxFunctionApp = new Azure.AppService.LinuxFunctionApp("example", new()
///     {
///         Name = "example-linux-function-app",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         ServicePlanId = exampleServicePlan.Id,
///         StorageAccountName = exampleAccount.Name,
///         SiteConfig = null,
///     });
///
///     var exampleLinuxFunctionAppSlot = new Azure.AppService.LinuxFunctionAppSlot("example", new()
///     {
///         Name = "example-linux-function-app-slot",
///         FunctionAppId = exampleLinuxFunctionApp.Name,
///         StorageAccountName = exampleAccount.Name,
///         SiteConfig = null,
///     });
///
///     var exampleFunctionAppActiveSlot = new Azure.AppService.FunctionAppActiveSlot("example", new()
///     {
///         SlotId = exampleLinuxFunctionAppSlot.Id,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
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
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("linuxfunctionappsa"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleServicePlan, err := appservice.NewServicePlan(ctx, "example", &appservice.ServicePlanArgs{
/// 			Name:              pulumi.String("example-app-service-plan"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			OsType:            pulumi.String("Linux"),
/// 			SkuName:           pulumi.String("Y1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLinuxFunctionApp, err := appservice.NewLinuxFunctionApp(ctx, "example", &appservice.LinuxFunctionAppArgs{
/// 			Name:               pulumi.String("example-linux-function-app"),
/// 			ResourceGroupName:  example.Name,
/// 			Location:           example.Location,
/// 			ServicePlanId:      exampleServicePlan.ID(),
/// 			StorageAccountName: exampleAccount.Name,
/// 			SiteConfig:         &appservice.LinuxFunctionAppSiteConfigArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLinuxFunctionAppSlot, err := appservice.NewLinuxFunctionAppSlot(ctx, "example", &appservice.LinuxFunctionAppSlotArgs{
/// 			Name:               pulumi.String("example-linux-function-app-slot"),
/// 			FunctionAppId:      exampleLinuxFunctionApp.Name,
/// 			StorageAccountName: exampleAccount.Name,
/// 			SiteConfig:         &appservice.LinuxFunctionAppSlotSiteConfigArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewFunctionAppActiveSlot(ctx, "example", &appservice.FunctionAppActiveSlotArgs{
/// 			SlotId: exampleLinuxFunctionAppSlot.ID(),
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
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_storage_account" "example" {
///   name                     = "linuxfunctionappsa"
///   resource_group_name      = azure_core_resourcegroup.example.name
///   location                 = azure_core_resourcegroup.example.location
///   account_tier             = "Standard"
///   account_replication_type = "LRS"
/// }
/// resource "azure_appservice_serviceplan" "example" {
///   name                = "example-app-service-plan"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   os_type             = "Linux"
///   sku_name            = "Y1"
/// }
/// resource "azure_appservice_linuxfunctionapp" "example" {
///   name                 = "example-linux-function-app"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   location             = azure_core_resourcegroup.example.location
///   service_plan_id      = azure_appservice_serviceplan.example.id
///   storage_account_name = azure_storage_account.example.name
///   site_config          = {}
/// }
/// resource "azure_appservice_linuxfunctionappslot" "example" {
///   name                 = "example-linux-function-app-slot"
///   function_app_id      = azure_appservice_linuxfunctionapp.example.name
///   storage_account_name = azure_storage_account.example.name
///   site_config          = {}
/// }
/// resource "azure_appservice_functionappactiveslot" "example" {
///   slot_id = azure_appservice_linuxfunctionappslot.example.id
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
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.appservice.ServicePlan;
/// import com.pulumi.azure.appservice.ServicePlanArgs;
/// import com.pulumi.azure.appservice.LinuxFunctionApp;
/// import com.pulumi.azure.appservice.LinuxFunctionAppArgs;
/// import com.pulumi.azure.appservice.inputs.LinuxFunctionAppSiteConfigArgs;
/// import com.pulumi.azure.appservice.LinuxFunctionAppSlot;
/// import com.pulumi.azure.appservice.LinuxFunctionAppSlotArgs;
/// import com.pulumi.azure.appservice.inputs.LinuxFunctionAppSlotSiteConfigArgs;
/// import com.pulumi.azure.appservice.FunctionAppActiveSlot;
/// import com.pulumi.azure.appservice.FunctionAppActiveSlotArgs;
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
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("linuxfunctionappsa")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleServicePlan = new ServicePlan("exampleServicePlan", ServicePlanArgs.builder()
///             .name("example-app-service-plan")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .osType("Linux")
///             .skuName("Y1")
///             .build());
///
///         var exampleLinuxFunctionApp = new LinuxFunctionApp("exampleLinuxFunctionApp", LinuxFunctionAppArgs.builder()
///             .name("example-linux-function-app")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .servicePlanId(exampleServicePlan.id())
///             .storageAccountName(exampleAccount.name())
///             .siteConfig(LinuxFunctionAppSiteConfigArgs.builder()
///                 .build())
///             .build());
///
///         var exampleLinuxFunctionAppSlot = new LinuxFunctionAppSlot("exampleLinuxFunctionAppSlot", LinuxFunctionAppSlotArgs.builder()
///             .name("example-linux-function-app-slot")
///             .functionAppId(exampleLinuxFunctionApp.name())
///             .storageAccountName(exampleAccount.name())
///             .siteConfig(LinuxFunctionAppSlotSiteConfigArgs.builder()
///                 .build())
///             .build());
///
///         var exampleFunctionAppActiveSlot = new FunctionAppActiveSlot("exampleFunctionAppActiveSlot", FunctionAppActiveSlotArgs.builder()
///             .slotId(exampleLinuxFunctionAppSlot.id())
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
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: linuxfunctionappsa
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleServicePlan:
///     type: azure:appservice:ServicePlan
///     name: example
///     properties:
///       name: example-app-service-plan
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       osType: Linux
///       skuName: Y1
///   exampleLinuxFunctionApp:
///     type: azure:appservice:LinuxFunctionApp
///     name: example
///     properties:
///       name: example-linux-function-app
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       servicePlanId: ${exampleServicePlan.id}
///       storageAccountName: ${exampleAccount.name}
///       siteConfig: {}
///   exampleLinuxFunctionAppSlot:
///     type: azure:appservice:LinuxFunctionAppSlot
///     name: example
///     properties:
///       name: example-linux-function-app-slot
///       functionAppId: ${exampleLinuxFunctionApp.name}
///       storageAccountName: ${exampleAccount.name}
///       siteConfig: {}
///   exampleFunctionAppActiveSlot:
///     type: azure:appservice:FunctionAppActiveSlot
///     name: example
///     properties:
///       slotId: ${exampleLinuxFunctionAppSlot.id}
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
/// a Function App Active Slot can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/functionAppActiveSlot:FunctionAppActiveSlot example "/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.Web/sites/site1"
/// ```
class FunctionAppActiveSlot extends pulumi.CustomResource {
  /// The timestamp of the last successful swap with `Production`
  late final pulumi.Output<String> lastSuccessfulSwap;
  /// The swap action should overwrite the Production slot's network configuration with the configuration from this slot. Defaults to `true`. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> overwriteNetworkConfig;
  /// The ID of the Slot to swap with `Production`.
  late final pulumi.Output<String> slotId;

  /// Creates a new [FunctionAppActiveSlot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FunctionAppActiveSlot]. {@macro pulumi_appservice_function_app_active_slot_function_app_active_slot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FunctionAppActiveSlot(
    String name, {
    FunctionAppActiveSlotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/functionAppActiveSlot:FunctionAppActiveSlot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    lastSuccessfulSwap = registerOutput<String>('lastSuccessfulSwap');
    overwriteNetworkConfig = registerOutput<bool?>('overwriteNetworkConfig');
    slotId = registerOutput<String>('slotId');
  }

  /// Gets an existing [FunctionAppActiveSlot] resource's state with the given [name] and [id].
  static FunctionAppActiveSlot get(
    String name,
    pulumi.Input<String> id, {
    FunctionAppActiveSlotState? state,
  }) {
    return FunctionAppActiveSlot._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FunctionAppActiveSlot._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/functionAppActiveSlot:FunctionAppActiveSlot',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    lastSuccessfulSwap = registerOutput<String>('lastSuccessfulSwap');
    overwriteNetworkConfig = registerOutput<bool?>('overwriteNetworkConfig');
    slotId = registerOutput<String>('slotId');
  }
}
