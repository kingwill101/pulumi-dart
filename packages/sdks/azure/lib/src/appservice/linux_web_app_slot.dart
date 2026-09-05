import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_web_app_slot_args.dart';
import 'linux_web_app_slot_auth_settings.dart';
import 'linux_web_app_slot_auth_settings_v2.dart';
import 'linux_web_app_slot_backup.dart';
import 'linux_web_app_slot_connection_string.dart';
import 'linux_web_app_slot_identity.dart';
import 'linux_web_app_slot_logs.dart';
import 'linux_web_app_slot_site_config.dart';
import 'linux_web_app_slot_site_credential.dart';
import 'linux_web_app_slot_state.dart';
import 'linux_web_app_slot_storage_account.dart';

/// Manages a Linux Web App Slot.
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
/// const exampleServicePlan = new azure.appservice.ServicePlan("example", {
///     name: "example-plan",
///     resourceGroupName: example.name,
///     location: example.location,
///     osType: "Linux",
///     skuName: "P1v2",
/// });
/// const exampleLinuxWebApp = new azure.appservice.LinuxWebApp("example", {
///     name: "example-linux-web-app",
///     resourceGroupName: example.name,
///     location: exampleServicePlan.location,
///     servicePlanId: exampleServicePlan.id,
///     siteConfig: {},
/// });
/// const exampleLinuxWebAppSlot = new azure.appservice.LinuxWebAppSlot("example", {
///     name: "example-slot",
///     appServiceId: exampleLinuxWebApp.id,
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
/// example_service_plan = azure.appservice.ServicePlan("example",
///     name="example-plan",
///     resource_group_name=example.name,
///     location=example.location,
///     os_type="Linux",
///     sku_name="P1v2")
/// example_linux_web_app = azure.appservice.LinuxWebApp("example",
///     name="example-linux-web-app",
///     resource_group_name=example.name,
///     location=example_service_plan.location,
///     service_plan_id=example_service_plan.id,
///     site_config={})
/// example_linux_web_app_slot = azure.appservice.LinuxWebAppSlot("example",
///     name="example-slot",
///     app_service_id=example_linux_web_app.id,
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
///     var exampleServicePlan = new Azure.AppService.ServicePlan("example", new()
///     {
///         Name = "example-plan",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         OsType = "Linux",
///         SkuName = "P1v2",
///     });
///
///     var exampleLinuxWebApp = new Azure.AppService.LinuxWebApp("example", new()
///     {
///         Name = "example-linux-web-app",
///         ResourceGroupName = example.Name,
///         Location = exampleServicePlan.Location,
///         ServicePlanId = exampleServicePlan.Id,
///         SiteConfig = null,
///     });
///
///     var exampleLinuxWebAppSlot = new Azure.AppService.LinuxWebAppSlot("example", new()
///     {
///         Name = "example-slot",
///         AppServiceId = exampleLinuxWebApp.Id,
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
/// 		exampleServicePlan, err := appservice.NewServicePlan(ctx, "example", &appservice.ServicePlanArgs{
/// 			Name:              pulumi.String("example-plan"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			OsType:            pulumi.String("Linux"),
/// 			SkuName:           pulumi.String("P1v2"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLinuxWebApp, err := appservice.NewLinuxWebApp(ctx, "example", &appservice.LinuxWebAppArgs{
/// 			Name:              pulumi.String("example-linux-web-app"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          exampleServicePlan.Location,
/// 			ServicePlanId:     exampleServicePlan.ID().ToIDOutput().ToStringOutput(),
/// 			SiteConfig:        &appservice.LinuxWebAppSiteConfigArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewLinuxWebAppSlot(ctx, "example", &appservice.LinuxWebAppSlotArgs{
/// 			Name:         pulumi.String("example-slot"),
/// 			AppServiceId: exampleLinuxWebApp.ID().ToIDOutput().ToStringOutput(),
/// 			SiteConfig:   &appservice.LinuxWebAppSlotSiteConfigArgs{},
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
/// resource "azure_appservice_serviceplan" "example" {
///   name                = "example-plan"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   os_type             = "Linux"
///   sku_name            = "P1v2"
/// }
/// resource "azure_appservice_linuxwebapp" "example" {
///   name                = "example-linux-web-app"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_appservice_serviceplan.example.location
///   service_plan_id     = azure_appservice_serviceplan.example.id
///   site_config         = {}
/// }
/// resource "azure_appservice_linuxwebappslot" "example" {
///   name           = "example-slot"
///   app_service_id = azure_appservice_linuxwebapp.example.id
///   site_config    = {}
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
/// import com.pulumi.azure.appservice.LinuxWebApp;
/// import com.pulumi.azure.appservice.LinuxWebAppArgs;
/// import com.pulumi.azure.appservice.inputs.LinuxWebAppSiteConfigArgs;
/// import com.pulumi.azure.appservice.LinuxWebAppSlot;
/// import com.pulumi.azure.appservice.LinuxWebAppSlotArgs;
/// import com.pulumi.azure.appservice.inputs.LinuxWebAppSlotSiteConfigArgs;
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
///         var exampleServicePlan = new ServicePlan("exampleServicePlan", ServicePlanArgs.builder()
///             .name("example-plan")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .osType("Linux")
///             .skuName("P1v2")
///             .build());
///
///         var exampleLinuxWebApp = new LinuxWebApp("exampleLinuxWebApp", LinuxWebAppArgs.builder()
///             .name("example-linux-web-app")
///             .resourceGroupName(example.name())
///             .location(exampleServicePlan.location())
///             .servicePlanId(exampleServicePlan.id())
///             .siteConfig(LinuxWebAppSiteConfigArgs.builder()
///                 .build())
///             .build());
///
///         var exampleLinuxWebAppSlot = new LinuxWebAppSlot("exampleLinuxWebAppSlot", LinuxWebAppSlotArgs.builder()
///             .name("example-slot")
///             .appServiceId(exampleLinuxWebApp.id())
///             .siteConfig(LinuxWebAppSlotSiteConfigArgs.builder()
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
///   exampleServicePlan:
///     type: azure:appservice:ServicePlan
///     name: example
///     properties:
///       name: example-plan
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       osType: Linux
///       skuName: P1v2
///   exampleLinuxWebApp:
///     type: azure:appservice:LinuxWebApp
///     name: example
///     properties:
///       name: example-linux-web-app
///       resourceGroupName: ${example.name}
///       location: ${exampleServicePlan.location}
///       servicePlanId: ${exampleServicePlan.id}
///       siteConfig: {}
///   exampleLinuxWebAppSlot:
///     type: azure:appservice:LinuxWebAppSlot
///     name: example
///     properties:
///       name: example-slot
///       appServiceId: ${exampleLinuxWebApp.id}
///       siteConfig: {}
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
/// Linux Web Apps can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/linuxWebAppSlot:LinuxWebAppSlot example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.Web/sites/site1/slots/slot1
/// ```
class LinuxWebAppSlot extends pulumi.CustomResource {
  /// A `appMetadata`.
  late final pulumi.Output<Map<String, String>> appMetadata;
  /// The ID of the Linux Web App this Deployment Slot will be part of.
  late final pulumi.Output<String> appServiceId;
  /// A map of key-value pairs of App Settings.
  late final pulumi.Output<Map<String, String>?> appSettings;
  /// An `authSettings` block as defined below.
  late final pulumi.Output<LinuxWebAppSlotAuthSettings?> authSettings;
  /// An `authSettingsV2` block as defined below.
  late final pulumi.Output<LinuxWebAppSlotAuthSettingsV2?> authSettingsV2;
  /// A `backup` block as defined below.
  late final pulumi.Output<LinuxWebAppSlotBackup?> backup;
  /// Should Client Affinity be enabled?
  late final pulumi.Output<bool?> clientAffinityEnabled;
  /// Should Client Certificates be enabled?
  late final pulumi.Output<bool?> clientCertificateEnabled;
  /// Paths to exclude when using client certificates, separated by ;
  ///
  /// &gt; **Note:** TLS 1.3 and HTTP 2.0 don't support TLS renegotiation. These protocols will not work if your app is configured with client certificate settings that use TLS renegotiation. Either set `clientCertificateEnabled` to `false`, or set `clientCertificateMode` to `Optional` or `Required` and remove all `clientCertificateExclusionPaths`.
  late final pulumi.Output<String?> clientCertificateExclusionPaths;
  /// The Client Certificate mode. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. This property has no effect when `clientCertEnabled` is `false`. Defaults to `Required`.
  late final pulumi.Output<String?> clientCertificateMode;
  /// One or more `connectionString` blocks as defined below.
  late final pulumi.Output<List<LinuxWebAppSlotConnectionString>?> connectionStrings;
  /// The identifier used by App Service to perform domain ownership verification via DNS TXT record.
  late final pulumi.Output<String> customDomainVerificationId;
  /// The default hostname of the Linux Web App.
  late final pulumi.Output<String> defaultHostname;
  /// Should the Linux Web App be enabled? Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// Should the default FTP Basic Authentication publishing profile be enabled. Defaults to `true`.
  late final pulumi.Output<bool?> ftpPublishBasicAuthenticationEnabled;
  /// The ID of the App Service Environment used by App Service Slot.
  late final pulumi.Output<String> hostingEnvironmentId;
  /// Should the Linux Web App require HTTPS connections. Defaults to `false`.
  late final pulumi.Output<bool?> httpsOnly;
  /// An `identity` block as defined below.
  late final pulumi.Output<LinuxWebAppSlotIdentity?> identity;
  /// The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity).
  late final pulumi.Output<String> keyVaultReferenceIdentityId;
  /// The Kind value for this Linux Web App.
  late final pulumi.Output<String> kind;
  /// A `logs` block as defined below.
  late final pulumi.Output<LinuxWebAppSlotLogs?> logs;
  /// The name which should be used for this Linux Web App Slot. Changing this forces a new Linux Web App Slot to be created.
  ///
  /// &gt; **Note:** Terraform will perform a name availability check as part of the creation progress, if this Web App is part of an App Service Environment terraform will require Read permission on the ASE for this to complete reliably.
  late final pulumi.Output<String> name;
  /// A list of outbound IP addresses - such as `["52.23.25.3", "52.143.43.12"]`
  late final pulumi.Output<List<String>> outboundIpAddressLists;
  /// A comma-separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12`.
  late final pulumi.Output<String> outboundIpAddresses;
  /// A `possibleOutboundIpAddressList`.
  late final pulumi.Output<List<String>> possibleOutboundIpAddressLists;
  /// A comma-separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12,52.143.43.17` - not all of which are necessarily in use. Superset of `outboundIpAddresses`.
  late final pulumi.Output<String> possibleOutboundIpAddresses;
  /// Should public network access be enabled for the Web App. Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// The ID of the Service Plan in which to run this slot. If not specified the same Service Plan as the Linux Web App will be used.
  ///
  /// &gt; **Note:** `servicePlanId` should only be specified if it differs from the Service Plan of the associated Linux Web App.
  late final pulumi.Output<String?> servicePlanId;
  /// A `siteConfig` block as defined below.
  late final pulumi.Output<LinuxWebAppSlotSiteConfig> siteConfig;
  /// A `siteCredential` block as defined below.
  late final pulumi.Output<List<LinuxWebAppSlotSiteCredential>> siteCredentials;
  /// One or more `storageAccount` blocks as defined below.
  late final pulumi.Output<List<LinuxWebAppSlotStorageAccount>?> storageAccounts;
  /// A mapping of tags that should be assigned to the Linux Web App.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Whether backup and restore operations over the linked virtual network are enabled. Defaults to `false`.
  late final pulumi.Output<bool?> virtualNetworkBackupRestoreEnabled;
  /// The subnet id which will be used by this Web App Slot for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration).
  ///
  /// &gt; **Note:** The AzureRM Terraform provider provides regional virtual network integration via the standalone resource appServiceVirtualNetworkSwiftConnection and in-line within this resource using the `virtualNetworkSubnetId` property. You cannot use both methods simultaneously. If the virtual network is set via the resource `appServiceVirtualNetworkSwiftConnection` then `ignoreChanges` should be used in the web app slot configuration.
  ///
  /// &gt; **Note:** Assigning the `virtualNetworkSubnetId` property requires [RBAC permissions on the subnet](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#permissions)
  late final pulumi.Output<String?> virtualNetworkSubnetId;
  /// Should the traffic for the image pull be routed over virtual network enabled. Defaults to `false`.
  ///
  /// &gt; **Note:** The feature can also be enabled via the app setting `WEBSITE_PULL_IMAGE_OVER_VNET`. Must be set to `true` when running in an App Service Environment.
  late final pulumi.Output<bool?> vnetImagePullEnabled;
  /// Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to `true`.
  ///
  /// &gt; **Note:** Setting this value to true will disable the ability to use `zipDeployFile` which currently relies on the default publishing profile.
  late final pulumi.Output<bool?> webdeployPublishBasicAuthenticationEnabled;
  /// The local path and filename of the Zip packaged application to deploy to this Linux Web App.
  ///
  /// &gt; **Note:** Using this value requires `WEBSITE_RUN_FROM_PACKAGE=1` to be set on the App in `appSettings`. Refer to the [Azure docs](https://docs.microsoft.com/en-us/azure/app-service/deploy-run-package) for further details.
  late final pulumi.Output<String> zipDeployFile;

  /// Creates a new [LinuxWebAppSlot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinuxWebAppSlot]. {@macro pulumi_appservice_linux_web_app_slot_linux_web_app_slot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinuxWebAppSlot(
    String name, {
    LinuxWebAppSlotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/linuxWebAppSlot:LinuxWebAppSlot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
          additionalSecretOutputs: const ['customDomainVerificationId', 'siteCredentials'],
        ) {
    appMetadata = registerOutput<Map<String, String>>('appMetadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    appServiceId = registerOutput<String>('appServiceId');
    appSettings = registerOutput<Map<String, String>?>('appSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    authSettings = registerOutput<LinuxWebAppSlotAuthSettings?>('authSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxWebAppSlotAuthSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    authSettingsV2 = registerOutput<LinuxWebAppSlotAuthSettingsV2?>('authSettingsV2', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxWebAppSlotAuthSettingsV2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    backup = registerOutput<LinuxWebAppSlotBackup?>('backup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxWebAppSlotBackup.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clientAffinityEnabled = registerOutput<bool?>('clientAffinityEnabled');
    clientCertificateEnabled = registerOutput<bool?>('clientCertificateEnabled');
    clientCertificateExclusionPaths = registerOutput<String?>('clientCertificateExclusionPaths');
    clientCertificateMode = registerOutput<String?>('clientCertificateMode');
    connectionStrings = registerOutput<List<LinuxWebAppSlotConnectionString>?>('connectionStrings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LinuxWebAppSlotConnectionString>(guardedValue, (value) => LinuxWebAppSlotConnectionString.fromMap((value as Map).cast<String, dynamic>())); });
    customDomainVerificationId = registerOutput<String>('customDomainVerificationId', isSecret: true);
    defaultHostname = registerOutput<String>('defaultHostname');
    enabled = registerOutput<bool?>('enabled');
    ftpPublishBasicAuthenticationEnabled = registerOutput<bool?>('ftpPublishBasicAuthenticationEnabled');
    hostingEnvironmentId = registerOutput<String>('hostingEnvironmentId');
    httpsOnly = registerOutput<bool?>('httpsOnly');
    identity = registerOutput<LinuxWebAppSlotIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxWebAppSlotIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    keyVaultReferenceIdentityId = registerOutput<String>('keyVaultReferenceIdentityId');
    kind = registerOutput<String>('kind');
    logs = registerOutput<LinuxWebAppSlotLogs?>('logs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxWebAppSlotLogs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    outboundIpAddressLists = registerOutput<List<String>>('outboundIpAddressLists', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    outboundIpAddresses = registerOutput<String>('outboundIpAddresses');
    possibleOutboundIpAddressLists = registerOutput<List<String>>('possibleOutboundIpAddressLists', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    possibleOutboundIpAddresses = registerOutput<String>('possibleOutboundIpAddresses');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    servicePlanId = registerOutput<String?>('servicePlanId');
    siteConfig = registerOutput<LinuxWebAppSlotSiteConfig>('siteConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxWebAppSlotSiteConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    siteCredentials = registerOutput<List<LinuxWebAppSlotSiteCredential>>('siteCredentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LinuxWebAppSlotSiteCredential>(guardedValue, (value) => LinuxWebAppSlotSiteCredential.fromMap((value as Map).cast<String, dynamic>())); }, isSecret: true);
    storageAccounts = registerOutput<List<LinuxWebAppSlotStorageAccount>?>('storageAccounts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LinuxWebAppSlotStorageAccount>(guardedValue, (value) => LinuxWebAppSlotStorageAccount.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    virtualNetworkBackupRestoreEnabled = registerOutput<bool?>('virtualNetworkBackupRestoreEnabled');
    virtualNetworkSubnetId = registerOutput<String?>('virtualNetworkSubnetId');
    vnetImagePullEnabled = registerOutput<bool?>('vnetImagePullEnabled');
    webdeployPublishBasicAuthenticationEnabled = registerOutput<bool?>('webdeployPublishBasicAuthenticationEnabled');
    zipDeployFile = registerOutput<String>('zipDeployFile');
  }

  /// Gets an existing [LinuxWebAppSlot] resource's state with the given [name] and [id].
  static LinuxWebAppSlot get(
    String name,
    pulumi.Input<String> id, {
    LinuxWebAppSlotState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return LinuxWebAppSlot._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  LinuxWebAppSlot._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/linuxWebAppSlot:LinuxWebAppSlot',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appMetadata = registerOutput<Map<String, String>>('appMetadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    appServiceId = registerOutput<String>('appServiceId');
    appSettings = registerOutput<Map<String, String>?>('appSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    authSettings = registerOutput<LinuxWebAppSlotAuthSettings?>('authSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxWebAppSlotAuthSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    authSettingsV2 = registerOutput<LinuxWebAppSlotAuthSettingsV2?>('authSettingsV2', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxWebAppSlotAuthSettingsV2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    backup = registerOutput<LinuxWebAppSlotBackup?>('backup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxWebAppSlotBackup.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clientAffinityEnabled = registerOutput<bool?>('clientAffinityEnabled');
    clientCertificateEnabled = registerOutput<bool?>('clientCertificateEnabled');
    clientCertificateExclusionPaths = registerOutput<String?>('clientCertificateExclusionPaths');
    clientCertificateMode = registerOutput<String?>('clientCertificateMode');
    connectionStrings = registerOutput<List<LinuxWebAppSlotConnectionString>?>('connectionStrings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LinuxWebAppSlotConnectionString>(guardedValue, (value) => LinuxWebAppSlotConnectionString.fromMap((value as Map).cast<String, dynamic>())); });
    customDomainVerificationId = registerOutput<String>('customDomainVerificationId', isSecret: true);
    defaultHostname = registerOutput<String>('defaultHostname');
    enabled = registerOutput<bool?>('enabled');
    ftpPublishBasicAuthenticationEnabled = registerOutput<bool?>('ftpPublishBasicAuthenticationEnabled');
    hostingEnvironmentId = registerOutput<String>('hostingEnvironmentId');
    httpsOnly = registerOutput<bool?>('httpsOnly');
    identity = registerOutput<LinuxWebAppSlotIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxWebAppSlotIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    keyVaultReferenceIdentityId = registerOutput<String>('keyVaultReferenceIdentityId');
    kind = registerOutput<String>('kind');
    logs = registerOutput<LinuxWebAppSlotLogs?>('logs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxWebAppSlotLogs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    outboundIpAddressLists = registerOutput<List<String>>('outboundIpAddressLists', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    outboundIpAddresses = registerOutput<String>('outboundIpAddresses');
    possibleOutboundIpAddressLists = registerOutput<List<String>>('possibleOutboundIpAddressLists', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    possibleOutboundIpAddresses = registerOutput<String>('possibleOutboundIpAddresses');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    servicePlanId = registerOutput<String?>('servicePlanId');
    siteConfig = registerOutput<LinuxWebAppSlotSiteConfig>('siteConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxWebAppSlotSiteConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    siteCredentials = registerOutput<List<LinuxWebAppSlotSiteCredential>>('siteCredentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LinuxWebAppSlotSiteCredential>(guardedValue, (value) => LinuxWebAppSlotSiteCredential.fromMap((value as Map).cast<String, dynamic>())); }, isSecret: true);
    storageAccounts = registerOutput<List<LinuxWebAppSlotStorageAccount>?>('storageAccounts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LinuxWebAppSlotStorageAccount>(guardedValue, (value) => LinuxWebAppSlotStorageAccount.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    virtualNetworkBackupRestoreEnabled = registerOutput<bool?>('virtualNetworkBackupRestoreEnabled');
    virtualNetworkSubnetId = registerOutput<String?>('virtualNetworkSubnetId');
    vnetImagePullEnabled = registerOutput<bool?>('vnetImagePullEnabled');
    webdeployPublishBasicAuthenticationEnabled = registerOutput<bool?>('webdeployPublishBasicAuthenticationEnabled');
    zipDeployFile = registerOutput<String>('zipDeployFile');
  }

  /// Creates a typed reference to an existing [LinuxWebAppSlot] resource.
  LinuxWebAppSlot.reference(String urn)
    : super(
        'azure:appservice/linuxWebAppSlot:LinuxWebAppSlot',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['customDomainVerificationId', 'siteCredentials'],
        isResourceReference: true,
      ) {
    appMetadata = registerOutput<Map<String, String>>('appMetadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    appServiceId = registerOutput<String>('appServiceId');
    appSettings = registerOutput<Map<String, String>?>('appSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    authSettings = registerOutput<LinuxWebAppSlotAuthSettings?>('authSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxWebAppSlotAuthSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    authSettingsV2 = registerOutput<LinuxWebAppSlotAuthSettingsV2?>('authSettingsV2', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxWebAppSlotAuthSettingsV2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    backup = registerOutput<LinuxWebAppSlotBackup?>('backup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxWebAppSlotBackup.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clientAffinityEnabled = registerOutput<bool?>('clientAffinityEnabled');
    clientCertificateEnabled = registerOutput<bool?>('clientCertificateEnabled');
    clientCertificateExclusionPaths = registerOutput<String?>('clientCertificateExclusionPaths');
    clientCertificateMode = registerOutput<String?>('clientCertificateMode');
    connectionStrings = registerOutput<List<LinuxWebAppSlotConnectionString>?>('connectionStrings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LinuxWebAppSlotConnectionString>(guardedValue, (value) => LinuxWebAppSlotConnectionString.fromMap((value as Map).cast<String, dynamic>())); });
    customDomainVerificationId = registerOutput<String>('customDomainVerificationId', isSecret: true);
    defaultHostname = registerOutput<String>('defaultHostname');
    enabled = registerOutput<bool?>('enabled');
    ftpPublishBasicAuthenticationEnabled = registerOutput<bool?>('ftpPublishBasicAuthenticationEnabled');
    hostingEnvironmentId = registerOutput<String>('hostingEnvironmentId');
    httpsOnly = registerOutput<bool?>('httpsOnly');
    identity = registerOutput<LinuxWebAppSlotIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxWebAppSlotIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    keyVaultReferenceIdentityId = registerOutput<String>('keyVaultReferenceIdentityId');
    kind = registerOutput<String>('kind');
    logs = registerOutput<LinuxWebAppSlotLogs?>('logs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxWebAppSlotLogs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    outboundIpAddressLists = registerOutput<List<String>>('outboundIpAddressLists', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    outboundIpAddresses = registerOutput<String>('outboundIpAddresses');
    possibleOutboundIpAddressLists = registerOutput<List<String>>('possibleOutboundIpAddressLists', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    possibleOutboundIpAddresses = registerOutput<String>('possibleOutboundIpAddresses');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    servicePlanId = registerOutput<String?>('servicePlanId');
    siteConfig = registerOutput<LinuxWebAppSlotSiteConfig>('siteConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxWebAppSlotSiteConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    siteCredentials = registerOutput<List<LinuxWebAppSlotSiteCredential>>('siteCredentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LinuxWebAppSlotSiteCredential>(guardedValue, (value) => LinuxWebAppSlotSiteCredential.fromMap((value as Map).cast<String, dynamic>())); }, isSecret: true);
    storageAccounts = registerOutput<List<LinuxWebAppSlotStorageAccount>?>('storageAccounts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LinuxWebAppSlotStorageAccount>(guardedValue, (value) => LinuxWebAppSlotStorageAccount.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    virtualNetworkBackupRestoreEnabled = registerOutput<bool?>('virtualNetworkBackupRestoreEnabled');
    virtualNetworkSubnetId = registerOutput<String?>('virtualNetworkSubnetId');
    vnetImagePullEnabled = registerOutput<bool?>('vnetImagePullEnabled');
    webdeployPublishBasicAuthenticationEnabled = registerOutput<bool?>('webdeployPublishBasicAuthenticationEnabled');
    zipDeployFile = registerOutput<String>('zipDeployFile');
  }
}
