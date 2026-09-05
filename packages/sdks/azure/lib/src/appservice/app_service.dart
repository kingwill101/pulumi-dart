import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_service_args.dart';
import 'app_service_auth_settings.dart';
import 'app_service_backup.dart';
import 'app_service_connection_string.dart';
import 'app_service_identity.dart';
import 'app_service_logs.dart';
import 'app_service_site_config.dart';
import 'app_service_site_credential.dart';
import 'app_service_source_control.dart';
import 'app_service_state.dart';
import 'app_service_storage_account.dart';

/// Manages an App Service (within an App Service Plan).
///
/// &gt; **NOTE:** This resource has been deprecated and will be removed in version 6.0 of the provider. Please use `azure.appservice.LinuxWebApp` and `azure.appservice.WindowsWebApp` resources instead.
///
/// &gt; **Note:** When using Slots - the `appSettings`, `connectionString` and `siteConfig` blocks on the `azure.appservice.AppService` resource will be overwritten when promoting a Slot using the `azure.appservice.ActiveSlot` resource.
///
/// ## Example Usage
///
/// This example provisions a Windows App Service.
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
/// const examplePlan = new azure.appservice.Plan("example", {
///     name: "example-appserviceplan",
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
///     siteConfig: {
///         dotnetFrameworkVersion: "v4.0",
///         scmType: "LocalGit",
///     },
///     appSettings: {
///         SOME_KEY: "some-value",
///     },
///     connectionStrings: [{
///         name: "Database",
///         type: "SQLServer",
///         value: "Server=some-server.mydomain.com;Integrated Security=SSPI",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_plan = azure.appservice.Plan("example",
///     name="example-appserviceplan",
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
///     app_service_plan_id=example_plan.id,
///     site_config={
///         "dotnet_framework_version": "v4.0",
///         "scm_type": "LocalGit",
///     },
///     app_settings={
///         "SOME_KEY": "some-value",
///     },
///     connection_strings=[{
///         "name": "Database",
///         "type": "SQLServer",
///         "value": "Server=some-server.mydomain.com;Integrated Security=SSPI",
///     }])
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
///     var examplePlan = new Azure.AppService.Plan("example", new()
///     {
///         Name = "example-appserviceplan",
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
///         SiteConfig = new Azure.AppService.Inputs.AppServiceSiteConfigArgs
///         {
///             DotnetFrameworkVersion = "v4.0",
///             ScmType = "LocalGit",
///         },
///         AppSettings =
///         {
///             { "SOME_KEY", "some-value" },
///         },
///         ConnectionStrings = new[]
///         {
///             new Azure.AppService.Inputs.AppServiceConnectionStringArgs
///             {
///                 Name = "Database",
///                 Type = "SQLServer",
///                 Value = "Server=some-server.mydomain.com;Integrated Security=SSPI",
///             },
///         },
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
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePlan, err := appservice.NewPlan(ctx, "example", &appservice.PlanArgs{
/// 			Name:              pulumi.String("example-appserviceplan"),
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
/// 		_, err = appservice.NewAppService(ctx, "example", &appservice.AppServiceArgs{
/// 			Name:              pulumi.String("example-app-service"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AppServicePlanId:  examplePlan.ID().ToIDOutput().ToStringOutput(),
/// 			SiteConfig: &appservice.AppServiceSiteConfigArgs{
/// 				DotnetFrameworkVersion: pulumi.String("v4.0"),
/// 				ScmType:                pulumi.String("LocalGit"),
/// 			},
/// 			AppSettings: pulumi.StringMap{
/// 				"SOME_KEY": pulumi.String("some-value"),
/// 			},
/// 			ConnectionStrings: appservice.AppServiceConnectionStringArray{
/// 				&appservice.AppServiceConnectionStringArgs{
/// 					Name:  pulumi.String("Database"),
/// 					Type:  pulumi.String("SQLServer"),
/// 					Value: pulumi.String("Server=some-server.mydomain.com;Integrated Security=SSPI"),
/// 				},
/// 			},
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
/// resource "azure_appservice_plan" "example" {
///   name                = "example-appserviceplan"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku = {
///     tier = "Standard"
///     size = "S1"
///   }
/// }
/// resource "azure_appservice_appservice" "example" {
///   name                = "example-app-service"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   app_service_plan_id = azure_appservice_plan.example.id
///   site_config = {
///     dotnet_framework_version = "v4.0"
///     scm_type                 = "LocalGit"
///   }
///   app_settings = {
///     "SOME_KEY" = "some-value"
///   }
///   connection_strings {
///     name  = "Database"
///     type  = "SQLServer"
///     value = "Server=some-server.mydomain.com;Integrated Security=SSPI"
///   }
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
/// import com.pulumi.azure.appservice.inputs.AppServiceSiteConfigArgs;
/// import com.pulumi.azure.appservice.inputs.AppServiceConnectionStringArgs;
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
///         var examplePlan = new Plan("examplePlan", PlanArgs.builder()
///             .name("example-appserviceplan")
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
///             .siteConfig(AppServiceSiteConfigArgs.builder()
///                 .dotnetFrameworkVersion("v4.0")
///                 .scmType("LocalGit")
///                 .build())
///             .appSettings(Map.of("SOME_KEY", "some-value"))
///             .connectionStrings(AppServiceConnectionStringArgs.builder()
///                 .name("Database")
///                 .type("SQLServer")
///                 .value("Server=some-server.mydomain.com;Integrated Security=SSPI")
///                 .build())
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
///   examplePlan:
///     type: azure:appservice:Plan
///     name: example
///     properties:
///       name: example-appserviceplan
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
///       siteConfig:
///         dotnetFrameworkVersion: v4.0
///         scmType: LocalGit
///       appSettings:
///         SOME_KEY: some-value
///       connectionStrings:
///         - name: Database
///           type: SQLServer
///           value: Server=some-server.mydomain.com;Integrated Security=SSPI
/// ```
///
///
/// ## Import
///
/// App Services can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/appService:AppService instance1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Web/sites/instance1
/// ```
class AppService extends pulumi.CustomResource {
  /// The ID of the App Service Plan within which to create this App Service.
  late final pulumi.Output<String> appServicePlanId;
  /// A key-value pair of App Settings.
  late final pulumi.Output<Map<String, String>> appSettings;
  /// A `authSettings` block as defined below.
  late final pulumi.Output<AppServiceAuthSettings> authSettings;
  /// A `backup` block as defined below.
  late final pulumi.Output<AppServiceBackup?> backup;
  /// Should the App Service send session affinity cookies, which route client requests in the same session to the same instance?
  late final pulumi.Output<bool?> clientAffinityEnabled;
  /// Does the App Service require client certificates for incoming requests? Defaults to `false`.
  late final pulumi.Output<bool?> clientCertEnabled;
  /// Mode of client certificates for this App Service. Possible values are `Required`, `Optional` and `OptionalInteractiveUser`. If this parameter is set, `clientCertEnabled` must be set to `true`, otherwise this parameter is ignored.
  late final pulumi.Output<String> clientCertMode;
  /// One or more `connectionString` blocks as defined below.
  late final pulumi.Output<List<AppServiceConnectionString>> connectionStrings;
  /// An identifier used by App Service to perform domain ownership verification via DNS TXT record.
  late final pulumi.Output<String> customDomainVerificationId;
  /// The Default Hostname associated with the App Service - such as `mysite.azurewebsites.net`
  late final pulumi.Output<String> defaultSiteHostname;
  /// Is the App Service Enabled? Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// Can the App Service only be accessed via HTTPS? Defaults to `false`.
  late final pulumi.Output<bool?> httpsOnly;
  /// An `identity` block as defined below.
  late final pulumi.Output<AppServiceIdentity?> identity;
  /// The User Assigned Identity Id used for looking up KeyVault secrets. The identity must be assigned to the application. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity)
  late final pulumi.Output<String> keyVaultReferenceIdentityId;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// A `logs` block as defined below.
  late final pulumi.Output<AppServiceLogs> logs;
  /// Specifies the name of the App Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A list of outbound IP addresses - such as `["52.23.25.3", "52.143.43.12"]`
  late final pulumi.Output<List<String>> outboundIpAddressLists;
  /// A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12`
  late final pulumi.Output<String> outboundIpAddresses;
  /// A list of outbound IP addresses - such as `["52.23.25.3", "52.143.43.12", "52.143.43.17"]` - not all of which are necessarily in use. Superset of `outboundIpAddressList`.
  late final pulumi.Output<List<String>> possibleOutboundIpAddressLists;
  /// A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12,52.143.43.17` - not all of which are necessarily in use. Superset of `outboundIpAddresses`.
  late final pulumi.Output<String> possibleOutboundIpAddresses;
  /// The name of the resource group in which to create the App Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A `siteConfig` block as defined below.
  late final pulumi.Output<AppServiceSiteConfig> siteConfig;
  /// A `siteCredential` block as defined below, which contains the site-level credentials used to publish to this App Service.
  late final pulumi.Output<List<AppServiceSiteCredential>> siteCredentials;
  /// A `sourceControl` block as defined below.
  late final pulumi.Output<AppServiceSourceControl> sourceControl;
  /// One or more `storageAccount` blocks as defined below.
  late final pulumi.Output<List<AppServiceStorageAccount>> storageAccounts;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [AppService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppService]. {@macro pulumi_appservice_app_service_app_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppService(
    String name, {
    AppServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/appService:AppService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    appServicePlanId = registerOutput<String>('appServicePlanId');
    appSettings = registerOutput<Map<String, String>>('appSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    authSettings = registerOutput<AppServiceAuthSettings>('authSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppServiceAuthSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    backup = registerOutput<AppServiceBackup?>('backup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppServiceBackup.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clientAffinityEnabled = registerOutput<bool?>('clientAffinityEnabled');
    clientCertEnabled = registerOutput<bool?>('clientCertEnabled');
    clientCertMode = registerOutput<String>('clientCertMode');
    connectionStrings = registerOutput<List<AppServiceConnectionString>>('connectionStrings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AppServiceConnectionString>(guardedValue, (value) => AppServiceConnectionString.fromMap((value as Map).cast<String, dynamic>())); });
    customDomainVerificationId = registerOutput<String>('customDomainVerificationId');
    defaultSiteHostname = registerOutput<String>('defaultSiteHostname');
    enabled = registerOutput<bool?>('enabled');
    httpsOnly = registerOutput<bool?>('httpsOnly');
    identity = registerOutput<AppServiceIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    keyVaultReferenceIdentityId = registerOutput<String>('keyVaultReferenceIdentityId');
    location = registerOutput<String>('location');
    logs = registerOutput<AppServiceLogs>('logs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppServiceLogs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    outboundIpAddressLists = registerOutput<List<String>>('outboundIpAddressLists', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    outboundIpAddresses = registerOutput<String>('outboundIpAddresses');
    possibleOutboundIpAddressLists = registerOutput<List<String>>('possibleOutboundIpAddressLists', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    possibleOutboundIpAddresses = registerOutput<String>('possibleOutboundIpAddresses');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    siteConfig = registerOutput<AppServiceSiteConfig>('siteConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppServiceSiteConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    siteCredentials = registerOutput<List<AppServiceSiteCredential>>('siteCredentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AppServiceSiteCredential>(guardedValue, (value) => AppServiceSiteCredential.fromMap((value as Map).cast<String, dynamic>())); });
    sourceControl = registerOutput<AppServiceSourceControl>('sourceControl', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppServiceSourceControl.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageAccounts = registerOutput<List<AppServiceStorageAccount>>('storageAccounts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AppServiceStorageAccount>(guardedValue, (value) => AppServiceStorageAccount.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [AppService] resource's state with the given [name] and [id].
  static AppService get(
    String name,
    pulumi.Input<String> id, {
    AppServiceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AppService._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AppService._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/appService:AppService',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appServicePlanId = registerOutput<String>('appServicePlanId');
    appSettings = registerOutput<Map<String, String>>('appSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    authSettings = registerOutput<AppServiceAuthSettings>('authSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppServiceAuthSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    backup = registerOutput<AppServiceBackup?>('backup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppServiceBackup.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clientAffinityEnabled = registerOutput<bool?>('clientAffinityEnabled');
    clientCertEnabled = registerOutput<bool?>('clientCertEnabled');
    clientCertMode = registerOutput<String>('clientCertMode');
    connectionStrings = registerOutput<List<AppServiceConnectionString>>('connectionStrings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AppServiceConnectionString>(guardedValue, (value) => AppServiceConnectionString.fromMap((value as Map).cast<String, dynamic>())); });
    customDomainVerificationId = registerOutput<String>('customDomainVerificationId');
    defaultSiteHostname = registerOutput<String>('defaultSiteHostname');
    enabled = registerOutput<bool?>('enabled');
    httpsOnly = registerOutput<bool?>('httpsOnly');
    identity = registerOutput<AppServiceIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    keyVaultReferenceIdentityId = registerOutput<String>('keyVaultReferenceIdentityId');
    location = registerOutput<String>('location');
    logs = registerOutput<AppServiceLogs>('logs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppServiceLogs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    outboundIpAddressLists = registerOutput<List<String>>('outboundIpAddressLists', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    outboundIpAddresses = registerOutput<String>('outboundIpAddresses');
    possibleOutboundIpAddressLists = registerOutput<List<String>>('possibleOutboundIpAddressLists', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    possibleOutboundIpAddresses = registerOutput<String>('possibleOutboundIpAddresses');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    siteConfig = registerOutput<AppServiceSiteConfig>('siteConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppServiceSiteConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    siteCredentials = registerOutput<List<AppServiceSiteCredential>>('siteCredentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AppServiceSiteCredential>(guardedValue, (value) => AppServiceSiteCredential.fromMap((value as Map).cast<String, dynamic>())); });
    sourceControl = registerOutput<AppServiceSourceControl>('sourceControl', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppServiceSourceControl.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageAccounts = registerOutput<List<AppServiceStorageAccount>>('storageAccounts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AppServiceStorageAccount>(guardedValue, (value) => AppServiceStorageAccount.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [AppService] resource.
  AppService.reference(String urn)
    : super(
        'azure:appservice/appService:AppService',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    appServicePlanId = registerOutput<String>('appServicePlanId');
    appSettings = registerOutput<Map<String, String>>('appSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    authSettings = registerOutput<AppServiceAuthSettings>('authSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppServiceAuthSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    backup = registerOutput<AppServiceBackup?>('backup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppServiceBackup.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clientAffinityEnabled = registerOutput<bool?>('clientAffinityEnabled');
    clientCertEnabled = registerOutput<bool?>('clientCertEnabled');
    clientCertMode = registerOutput<String>('clientCertMode');
    connectionStrings = registerOutput<List<AppServiceConnectionString>>('connectionStrings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AppServiceConnectionString>(guardedValue, (value) => AppServiceConnectionString.fromMap((value as Map).cast<String, dynamic>())); });
    customDomainVerificationId = registerOutput<String>('customDomainVerificationId');
    defaultSiteHostname = registerOutput<String>('defaultSiteHostname');
    enabled = registerOutput<bool?>('enabled');
    httpsOnly = registerOutput<bool?>('httpsOnly');
    identity = registerOutput<AppServiceIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    keyVaultReferenceIdentityId = registerOutput<String>('keyVaultReferenceIdentityId');
    location = registerOutput<String>('location');
    logs = registerOutput<AppServiceLogs>('logs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppServiceLogs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    outboundIpAddressLists = registerOutput<List<String>>('outboundIpAddressLists', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    outboundIpAddresses = registerOutput<String>('outboundIpAddresses');
    possibleOutboundIpAddressLists = registerOutput<List<String>>('possibleOutboundIpAddressLists', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    possibleOutboundIpAddresses = registerOutput<String>('possibleOutboundIpAddresses');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    siteConfig = registerOutput<AppServiceSiteConfig>('siteConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppServiceSiteConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    siteCredentials = registerOutput<List<AppServiceSiteCredential>>('siteCredentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AppServiceSiteCredential>(guardedValue, (value) => AppServiceSiteCredential.fromMap((value as Map).cast<String, dynamic>())); });
    sourceControl = registerOutput<AppServiceSourceControl>('sourceControl', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppServiceSourceControl.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageAccounts = registerOutput<List<AppServiceStorageAccount>>('storageAccounts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AppServiceStorageAccount>(guardedValue, (value) => AppServiceStorageAccount.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
