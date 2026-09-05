import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_function_app_slot_args.dart';
import 'linux_function_app_slot_auth_settings.dart';
import 'linux_function_app_slot_auth_settings_v2.dart';
import 'linux_function_app_slot_backup.dart';
import 'linux_function_app_slot_connection_string.dart';
import 'linux_function_app_slot_identity.dart';
import 'linux_function_app_slot_site_config.dart';
import 'linux_function_app_slot_site_credential.dart';
import 'linux_function_app_slot_state.dart';
import 'linux_function_app_slot_storage_account.dart';

/// Manages a Linux Function App Slot.
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
///     functionAppId: exampleLinuxFunctionApp.id,
///     storageAccountName: exampleAccount.name,
///     siteConfig: {},
/// });
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
///     function_app_id=example_linux_function_app.id,
///     storage_account_name=example_account.name,
///     site_config={})
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
///         FunctionAppId = exampleLinuxFunctionApp.Id,
///         StorageAccountName = exampleAccount.Name,
///         SiteConfig = null,
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
/// 			ServicePlanId:      exampleServicePlan.ID().ToIDOutput().ToStringOutput(),
/// 			StorageAccountName: exampleAccount.Name,
/// 			SiteConfig:         &appservice.LinuxFunctionAppSiteConfigArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewLinuxFunctionAppSlot(ctx, "example", &appservice.LinuxFunctionAppSlotArgs{
/// 			Name:               pulumi.String("example-linux-function-app-slot"),
/// 			FunctionAppId:      exampleLinuxFunctionApp.ID().ToIDOutput().ToStringOutput(),
/// 			StorageAccountName: exampleAccount.Name,
/// 			SiteConfig:         &appservice.LinuxFunctionAppSlotSiteConfigArgs{},
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
///   function_app_id      = azure_appservice_linuxfunctionapp.example.id
///   storage_account_name = azure_storage_account.example.name
///   site_config          = {}
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
///             .functionAppId(exampleLinuxFunctionApp.id())
///             .storageAccountName(exampleAccount.name())
///             .siteConfig(LinuxFunctionAppSlotSiteConfigArgs.builder()
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
///       functionAppId: ${exampleLinuxFunctionApp.id}
///       storageAccountName: ${exampleAccount.name}
///       siteConfig: {}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Web` - 2023-12-01, 2023-01-01
///
/// ## Import
///
/// A Linux Function App Slot can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/linuxFunctionAppSlot:LinuxFunctionAppSlot example "/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.Web/sites/site1/slots/slot1"
/// ```
class LinuxFunctionAppSlot extends pulumi.CustomResource {
  /// A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values.
  late final pulumi.Output<Map<String, String>?> appSettings;
  /// an `authSettings` block as detailed below.
  late final pulumi.Output<LinuxFunctionAppSlotAuthSettings?> authSettings;
  /// an `authSettingsV2` block as detailed below.
  late final pulumi.Output<LinuxFunctionAppSlotAuthSettingsV2?> authSettingsV2;
  /// a `backup` block as detailed below.
  late final pulumi.Output<LinuxFunctionAppSlotBackup?> backup;
  /// Should built in logging be enabled. Configures `AzureWebJobsDashboard` app setting based on the configured storage setting. Defaults to `true`.
  late final pulumi.Output<bool?> builtinLoggingEnabled;
  /// Should the Function App Slot use Client Certificates.
  late final pulumi.Output<bool?> clientCertificateEnabled;
  /// Paths to exclude when using client certificates, separated by ;
  ///
  /// &gt; **Note:** TLS 1.3 and HTTP 2.0 don't support TLS renegotiation. These protocols will not work if your app is configured with client certificate settings that use TLS renegotiation. Either set `clientCertificateEnabled` to `false`, or set `clientCertificateMode` to `Optional` or `Required` and remove all `clientCertificateExclusionPaths`.
  late final pulumi.Output<String?> clientCertificateExclusionPaths;
  /// The mode of the Function App Slot's client certificates requirement for incoming requests. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. Defaults to `Optional`.
  late final pulumi.Output<String?> clientCertificateMode;
  /// a `connectionString` block as detailed below.
  late final pulumi.Output<List<LinuxFunctionAppSlotConnectionString>?> connectionStrings;
  /// Force disable the content share settings.
  late final pulumi.Output<bool?> contentShareForceDisabled;
  /// The identifier used by App Service to perform domain ownership verification via DNS TXT record.
  late final pulumi.Output<String> customDomainVerificationId;
  /// The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps in Consumption Plans. Defaults to `0`.
  late final pulumi.Output<int?> dailyMemoryTimeQuota;
  /// The default hostname of the Linux Function App Slot.
  late final pulumi.Output<String> defaultHostname;
  /// Is the Linux Function App Slot enabled. Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// Are the default FTP Basic Authentication publishing credentials enabled. Defaults to `true`.
  late final pulumi.Output<bool?> ftpPublishBasicAuthenticationEnabled;
  /// The ID of the Linux Function App this Slot is a member of. Changing this forces a new resource to be created.
  late final pulumi.Output<String> functionAppId;
  /// The runtime version associated with the Function App Slot. Defaults to `~4`.
  late final pulumi.Output<String?> functionsExtensionVersion;
  /// The ID of the App Service Environment used by Function App Slot.
  late final pulumi.Output<String> hostingEnvironmentId;
  /// Can the Function App Slot only be accessed via HTTPS?. Defaults to `false`.
  late final pulumi.Output<bool?> httpsOnly;
  /// An `identity` block as detailed below.
  late final pulumi.Output<LinuxFunctionAppSlotIdentity?> identity;
  /// The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity)
  late final pulumi.Output<String> keyVaultReferenceIdentityId;
  /// The Kind value for this Linux Function App Slot.
  late final pulumi.Output<String> kind;
  /// Specifies the name of the Function App Slot. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A list of outbound IP addresses. For example `["52.23.25.3", "52.143.43.12"]`
  late final pulumi.Output<List<String>> outboundIpAddressLists;
  /// A comma separated list of outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12`.
  late final pulumi.Output<String> outboundIpAddresses;
  /// A list of possible outbound IP addresses, not all of which are necessarily in use. This is a superset of `outboundIpAddressList`. For example `["52.23.25.3", "52.143.43.12"]`.
  late final pulumi.Output<List<String>> possibleOutboundIpAddressLists;
  /// A comma separated list of possible outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12,52.143.43.17`. This is a superset of `outboundIpAddresses`. For example `["52.23.25.3", "52.143.43.12","52.143.43.17"]`.
  late final pulumi.Output<String> possibleOutboundIpAddresses;
  /// Should public network access be enabled for the Function App. Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// The ID of the Service Plan in which to run this slot. If not specified the same Service Plan as the Linux Function App will be used.
  late final pulumi.Output<String?> servicePlanId;
  /// a `siteConfig` block as detailed below.
  late final pulumi.Output<LinuxFunctionAppSlotSiteConfig> siteConfig;
  /// A `siteCredential` block as defined below.
  late final pulumi.Output<List<LinuxFunctionAppSlotSiteCredential>> siteCredentials;
  /// The access key which will be used to access the storage account for the Function App Slot.
  late final pulumi.Output<String?> storageAccountAccessKey;
  /// The backend storage account name which will be used by this Function App Slot.
  late final pulumi.Output<String?> storageAccountName;
  /// One or more `storageAccount` blocks as defined below.
  late final pulumi.Output<List<LinuxFunctionAppSlotStorageAccount>?> storageAccounts;
  /// The Key Vault Secret ID, optionally including version, that contains the Connection String to connect to the storage account for this Function App.
  ///
  /// &gt; **Note:** `storageKeyVaultSecretId` cannot be used with `storageAccountName`.
  ///
  /// &gt; **Note:** `storageKeyVaultSecretId` used without a version will use the latest version of the secret, however, the service can take up to 24h to pick up a rotation of the latest version. See the [official docs](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#rotation) for more information.
  late final pulumi.Output<String?> storageKeyVaultSecretId;
  /// Should the Function App Slot use its Managed Identity to access storage.
  ///
  /// &gt; **Note:** One of `storageAccountAccessKey` or `storageUsesManagedIdentity` must be specified when using `storageAccountName`.
  late final pulumi.Output<bool?> storageUsesManagedIdentity;
  /// A mapping of tags which should be assigned to the Linux Function App.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Whether backup and restore operations over the linked virtual network are enabled. Defaults to `false`.
  late final pulumi.Output<bool?> virtualNetworkBackupRestoreEnabled;
  /// The subnet id which will be used by this Function App Slot for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration).
  ///
  /// &gt; **Note:** The AzureRM Terraform provider provides regional virtual network integration via the standalone resource appServiceVirtualNetworkSwiftConnection and in-line within this resource using the `virtualNetworkSubnetId` property. You cannot use both methods simultaneously. If the virtual network is set via the resource `appServiceVirtualNetworkSwiftConnection` then `ignoreChanges` should be used in the function app slot configuration.
  ///
  /// &gt; **Note:** Assigning the `virtualNetworkSubnetId` property requires [RBAC permissions on the subnet](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#permissions)
  late final pulumi.Output<String?> virtualNetworkSubnetId;
  /// Specifies whether traffic for the image pull should be routed over virtual network. Defaults to `false`.
  ///
  /// &gt; **Note:** The feature can also be enabled via the app setting `WEBSITE_PULL_IMAGE_OVER_VNET`. The Setting is enabled by default for an app running in the App Service Environment.
  late final pulumi.Output<bool?> vnetImagePullEnabled;
  /// Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to `true`.
  late final pulumi.Output<bool?> webdeployPublishBasicAuthenticationEnabled;

  /// Creates a new [LinuxFunctionAppSlot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinuxFunctionAppSlot]. {@macro pulumi_appservice_linux_function_app_slot_linux_function_app_slot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinuxFunctionAppSlot(
    String name, {
    LinuxFunctionAppSlotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/linuxFunctionAppSlot:LinuxFunctionAppSlot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
          additionalSecretOutputs: const ['customDomainVerificationId', 'siteCredentials', 'storageAccountAccessKey'],
        ) {
    appSettings = registerOutput<Map<String, String>?>('appSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    authSettings = registerOutput<LinuxFunctionAppSlotAuthSettings?>('authSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxFunctionAppSlotAuthSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    authSettingsV2 = registerOutput<LinuxFunctionAppSlotAuthSettingsV2?>('authSettingsV2', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxFunctionAppSlotAuthSettingsV2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    backup = registerOutput<LinuxFunctionAppSlotBackup?>('backup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxFunctionAppSlotBackup.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    builtinLoggingEnabled = registerOutput<bool?>('builtinLoggingEnabled');
    clientCertificateEnabled = registerOutput<bool?>('clientCertificateEnabled');
    clientCertificateExclusionPaths = registerOutput<String?>('clientCertificateExclusionPaths');
    clientCertificateMode = registerOutput<String?>('clientCertificateMode');
    connectionStrings = registerOutput<List<LinuxFunctionAppSlotConnectionString>?>('connectionStrings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LinuxFunctionAppSlotConnectionString>(guardedValue, (value) => LinuxFunctionAppSlotConnectionString.fromMap((value as Map).cast<String, dynamic>())); });
    contentShareForceDisabled = registerOutput<bool?>('contentShareForceDisabled');
    customDomainVerificationId = registerOutput<String>('customDomainVerificationId', isSecret: true);
    dailyMemoryTimeQuota = registerOutput<int?>('dailyMemoryTimeQuota');
    defaultHostname = registerOutput<String>('defaultHostname');
    enabled = registerOutput<bool?>('enabled');
    ftpPublishBasicAuthenticationEnabled = registerOutput<bool?>('ftpPublishBasicAuthenticationEnabled');
    functionAppId = registerOutput<String>('functionAppId');
    functionsExtensionVersion = registerOutput<String?>('functionsExtensionVersion');
    hostingEnvironmentId = registerOutput<String>('hostingEnvironmentId');
    httpsOnly = registerOutput<bool?>('httpsOnly');
    identity = registerOutput<LinuxFunctionAppSlotIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxFunctionAppSlotIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    keyVaultReferenceIdentityId = registerOutput<String>('keyVaultReferenceIdentityId');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    outboundIpAddressLists = registerOutput<List<String>>('outboundIpAddressLists', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    outboundIpAddresses = registerOutput<String>('outboundIpAddresses');
    possibleOutboundIpAddressLists = registerOutput<List<String>>('possibleOutboundIpAddressLists', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    possibleOutboundIpAddresses = registerOutput<String>('possibleOutboundIpAddresses');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    servicePlanId = registerOutput<String?>('servicePlanId');
    siteConfig = registerOutput<LinuxFunctionAppSlotSiteConfig>('siteConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxFunctionAppSlotSiteConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    siteCredentials = registerOutput<List<LinuxFunctionAppSlotSiteCredential>>('siteCredentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LinuxFunctionAppSlotSiteCredential>(guardedValue, (value) => LinuxFunctionAppSlotSiteCredential.fromMap((value as Map).cast<String, dynamic>())); }, isSecret: true);
    storageAccountAccessKey = registerOutput<String?>('storageAccountAccessKey', isSecret: true);
    storageAccountName = registerOutput<String?>('storageAccountName');
    storageAccounts = registerOutput<List<LinuxFunctionAppSlotStorageAccount>?>('storageAccounts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LinuxFunctionAppSlotStorageAccount>(guardedValue, (value) => LinuxFunctionAppSlotStorageAccount.fromMap((value as Map).cast<String, dynamic>())); });
    storageKeyVaultSecretId = registerOutput<String?>('storageKeyVaultSecretId');
    storageUsesManagedIdentity = registerOutput<bool?>('storageUsesManagedIdentity');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    virtualNetworkBackupRestoreEnabled = registerOutput<bool?>('virtualNetworkBackupRestoreEnabled');
    virtualNetworkSubnetId = registerOutput<String?>('virtualNetworkSubnetId');
    vnetImagePullEnabled = registerOutput<bool?>('vnetImagePullEnabled');
    webdeployPublishBasicAuthenticationEnabled = registerOutput<bool?>('webdeployPublishBasicAuthenticationEnabled');
  }

  /// Gets an existing [LinuxFunctionAppSlot] resource's state with the given [name] and [id].
  static LinuxFunctionAppSlot get(
    String name,
    pulumi.Input<String> id, {
    LinuxFunctionAppSlotState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return LinuxFunctionAppSlot._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  LinuxFunctionAppSlot._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/linuxFunctionAppSlot:LinuxFunctionAppSlot',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appSettings = registerOutput<Map<String, String>?>('appSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    authSettings = registerOutput<LinuxFunctionAppSlotAuthSettings?>('authSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxFunctionAppSlotAuthSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    authSettingsV2 = registerOutput<LinuxFunctionAppSlotAuthSettingsV2?>('authSettingsV2', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxFunctionAppSlotAuthSettingsV2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    backup = registerOutput<LinuxFunctionAppSlotBackup?>('backup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxFunctionAppSlotBackup.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    builtinLoggingEnabled = registerOutput<bool?>('builtinLoggingEnabled');
    clientCertificateEnabled = registerOutput<bool?>('clientCertificateEnabled');
    clientCertificateExclusionPaths = registerOutput<String?>('clientCertificateExclusionPaths');
    clientCertificateMode = registerOutput<String?>('clientCertificateMode');
    connectionStrings = registerOutput<List<LinuxFunctionAppSlotConnectionString>?>('connectionStrings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LinuxFunctionAppSlotConnectionString>(guardedValue, (value) => LinuxFunctionAppSlotConnectionString.fromMap((value as Map).cast<String, dynamic>())); });
    contentShareForceDisabled = registerOutput<bool?>('contentShareForceDisabled');
    customDomainVerificationId = registerOutput<String>('customDomainVerificationId', isSecret: true);
    dailyMemoryTimeQuota = registerOutput<int?>('dailyMemoryTimeQuota');
    defaultHostname = registerOutput<String>('defaultHostname');
    enabled = registerOutput<bool?>('enabled');
    ftpPublishBasicAuthenticationEnabled = registerOutput<bool?>('ftpPublishBasicAuthenticationEnabled');
    functionAppId = registerOutput<String>('functionAppId');
    functionsExtensionVersion = registerOutput<String?>('functionsExtensionVersion');
    hostingEnvironmentId = registerOutput<String>('hostingEnvironmentId');
    httpsOnly = registerOutput<bool?>('httpsOnly');
    identity = registerOutput<LinuxFunctionAppSlotIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxFunctionAppSlotIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    keyVaultReferenceIdentityId = registerOutput<String>('keyVaultReferenceIdentityId');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    outboundIpAddressLists = registerOutput<List<String>>('outboundIpAddressLists', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    outboundIpAddresses = registerOutput<String>('outboundIpAddresses');
    possibleOutboundIpAddressLists = registerOutput<List<String>>('possibleOutboundIpAddressLists', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    possibleOutboundIpAddresses = registerOutput<String>('possibleOutboundIpAddresses');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    servicePlanId = registerOutput<String?>('servicePlanId');
    siteConfig = registerOutput<LinuxFunctionAppSlotSiteConfig>('siteConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxFunctionAppSlotSiteConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    siteCredentials = registerOutput<List<LinuxFunctionAppSlotSiteCredential>>('siteCredentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LinuxFunctionAppSlotSiteCredential>(guardedValue, (value) => LinuxFunctionAppSlotSiteCredential.fromMap((value as Map).cast<String, dynamic>())); }, isSecret: true);
    storageAccountAccessKey = registerOutput<String?>('storageAccountAccessKey', isSecret: true);
    storageAccountName = registerOutput<String?>('storageAccountName');
    storageAccounts = registerOutput<List<LinuxFunctionAppSlotStorageAccount>?>('storageAccounts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LinuxFunctionAppSlotStorageAccount>(guardedValue, (value) => LinuxFunctionAppSlotStorageAccount.fromMap((value as Map).cast<String, dynamic>())); });
    storageKeyVaultSecretId = registerOutput<String?>('storageKeyVaultSecretId');
    storageUsesManagedIdentity = registerOutput<bool?>('storageUsesManagedIdentity');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    virtualNetworkBackupRestoreEnabled = registerOutput<bool?>('virtualNetworkBackupRestoreEnabled');
    virtualNetworkSubnetId = registerOutput<String?>('virtualNetworkSubnetId');
    vnetImagePullEnabled = registerOutput<bool?>('vnetImagePullEnabled');
    webdeployPublishBasicAuthenticationEnabled = registerOutput<bool?>('webdeployPublishBasicAuthenticationEnabled');
  }

  /// Creates a typed reference to an existing [LinuxFunctionAppSlot] resource.
  LinuxFunctionAppSlot.reference(String urn)
    : super(
        'azure:appservice/linuxFunctionAppSlot:LinuxFunctionAppSlot',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['customDomainVerificationId', 'siteCredentials', 'storageAccountAccessKey'],
        isResourceReference: true,
      ) {
    appSettings = registerOutput<Map<String, String>?>('appSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    authSettings = registerOutput<LinuxFunctionAppSlotAuthSettings?>('authSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxFunctionAppSlotAuthSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    authSettingsV2 = registerOutput<LinuxFunctionAppSlotAuthSettingsV2?>('authSettingsV2', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxFunctionAppSlotAuthSettingsV2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    backup = registerOutput<LinuxFunctionAppSlotBackup?>('backup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxFunctionAppSlotBackup.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    builtinLoggingEnabled = registerOutput<bool?>('builtinLoggingEnabled');
    clientCertificateEnabled = registerOutput<bool?>('clientCertificateEnabled');
    clientCertificateExclusionPaths = registerOutput<String?>('clientCertificateExclusionPaths');
    clientCertificateMode = registerOutput<String?>('clientCertificateMode');
    connectionStrings = registerOutput<List<LinuxFunctionAppSlotConnectionString>?>('connectionStrings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LinuxFunctionAppSlotConnectionString>(guardedValue, (value) => LinuxFunctionAppSlotConnectionString.fromMap((value as Map).cast<String, dynamic>())); });
    contentShareForceDisabled = registerOutput<bool?>('contentShareForceDisabled');
    customDomainVerificationId = registerOutput<String>('customDomainVerificationId', isSecret: true);
    dailyMemoryTimeQuota = registerOutput<int?>('dailyMemoryTimeQuota');
    defaultHostname = registerOutput<String>('defaultHostname');
    enabled = registerOutput<bool?>('enabled');
    ftpPublishBasicAuthenticationEnabled = registerOutput<bool?>('ftpPublishBasicAuthenticationEnabled');
    functionAppId = registerOutput<String>('functionAppId');
    functionsExtensionVersion = registerOutput<String?>('functionsExtensionVersion');
    hostingEnvironmentId = registerOutput<String>('hostingEnvironmentId');
    httpsOnly = registerOutput<bool?>('httpsOnly');
    identity = registerOutput<LinuxFunctionAppSlotIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxFunctionAppSlotIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    keyVaultReferenceIdentityId = registerOutput<String>('keyVaultReferenceIdentityId');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    outboundIpAddressLists = registerOutput<List<String>>('outboundIpAddressLists', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    outboundIpAddresses = registerOutput<String>('outboundIpAddresses');
    possibleOutboundIpAddressLists = registerOutput<List<String>>('possibleOutboundIpAddressLists', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    possibleOutboundIpAddresses = registerOutput<String>('possibleOutboundIpAddresses');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    servicePlanId = registerOutput<String?>('servicePlanId');
    siteConfig = registerOutput<LinuxFunctionAppSlotSiteConfig>('siteConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxFunctionAppSlotSiteConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    siteCredentials = registerOutput<List<LinuxFunctionAppSlotSiteCredential>>('siteCredentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LinuxFunctionAppSlotSiteCredential>(guardedValue, (value) => LinuxFunctionAppSlotSiteCredential.fromMap((value as Map).cast<String, dynamic>())); }, isSecret: true);
    storageAccountAccessKey = registerOutput<String?>('storageAccountAccessKey', isSecret: true);
    storageAccountName = registerOutput<String?>('storageAccountName');
    storageAccounts = registerOutput<List<LinuxFunctionAppSlotStorageAccount>?>('storageAccounts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LinuxFunctionAppSlotStorageAccount>(guardedValue, (value) => LinuxFunctionAppSlotStorageAccount.fromMap((value as Map).cast<String, dynamic>())); });
    storageKeyVaultSecretId = registerOutput<String?>('storageKeyVaultSecretId');
    storageUsesManagedIdentity = registerOutput<bool?>('storageUsesManagedIdentity');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    virtualNetworkBackupRestoreEnabled = registerOutput<bool?>('virtualNetworkBackupRestoreEnabled');
    virtualNetworkSubnetId = registerOutput<String?>('virtualNetworkSubnetId');
    vnetImagePullEnabled = registerOutput<bool?>('vnetImagePullEnabled');
    webdeployPublishBasicAuthenticationEnabled = registerOutput<bool?>('webdeployPublishBasicAuthenticationEnabled');
  }
}
