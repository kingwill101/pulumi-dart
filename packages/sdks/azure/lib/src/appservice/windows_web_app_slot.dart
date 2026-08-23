import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_web_app_slot_args.dart';
import 'windows_web_app_slot_auth_settings.dart';
import 'windows_web_app_slot_auth_settings_v2.dart';
import 'windows_web_app_slot_backup.dart';
import 'windows_web_app_slot_identity.dart';
import 'windows_web_app_slot_logs.dart';
import 'windows_web_app_slot_site_config.dart';
import 'windows_web_app_slot_state.dart';

/// Manages a Windows Web App Slot.
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
///     osType: "Windows",
///     skuName: "P1v2",
/// });
/// const exampleWindowsWebApp = new azure.appservice.WindowsWebApp("example", {
///     name: "example-windows-web-app",
///     resourceGroupName: example.name,
///     location: exampleServicePlan.location,
///     servicePlanId: exampleServicePlan.id,
///     siteConfig: {},
/// });
/// const exampleWindowsWebAppSlot = new azure.appservice.WindowsWebAppSlot("example", {
///     name: "example-slot",
///     appServiceId: exampleWindowsWebApp.id,
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
///     os_type="Windows",
///     sku_name="P1v2")
/// example_windows_web_app = azure.appservice.WindowsWebApp("example",
///     name="example-windows-web-app",
///     resource_group_name=example.name,
///     location=example_service_plan.location,
///     service_plan_id=example_service_plan.id,
///     site_config={})
/// example_windows_web_app_slot = azure.appservice.WindowsWebAppSlot("example",
///     name="example-slot",
///     app_service_id=example_windows_web_app.id,
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
///         OsType = "Windows",
///         SkuName = "P1v2",
///     });
///
///     var exampleWindowsWebApp = new Azure.AppService.WindowsWebApp("example", new()
///     {
///         Name = "example-windows-web-app",
///         ResourceGroupName = example.Name,
///         Location = exampleServicePlan.Location,
///         ServicePlanId = exampleServicePlan.Id,
///         SiteConfig = null,
///     });
///
///     var exampleWindowsWebAppSlot = new Azure.AppService.WindowsWebAppSlot("example", new()
///     {
///         Name = "example-slot",
///         AppServiceId = exampleWindowsWebApp.Id,
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
/// 			OsType:            pulumi.String("Windows"),
/// 			SkuName:           pulumi.String("P1v2"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWindowsWebApp, err := appservice.NewWindowsWebApp(ctx, "example", &appservice.WindowsWebAppArgs{
/// 			Name:              pulumi.String("example-windows-web-app"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          exampleServicePlan.Location,
/// 			ServicePlanId:     exampleServicePlan.ID(),
/// 			SiteConfig:        &appservice.WindowsWebAppSiteConfigArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewWindowsWebAppSlot(ctx, "example", &appservice.WindowsWebAppSlotArgs{
/// 			Name:         pulumi.String("example-slot"),
/// 			AppServiceId: exampleWindowsWebApp.ID(),
/// 			SiteConfig:   &appservice.WindowsWebAppSlotSiteConfigArgs{},
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
///   os_type             = "Windows"
///   sku_name            = "P1v2"
/// }
/// resource "azure_appservice_windowswebapp" "example" {
///   name                = "example-windows-web-app"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_appservice_serviceplan.example.location
///   service_plan_id     = azure_appservice_serviceplan.example.id
///   site_config         = {}
/// }
/// resource "azure_appservice_windowswebappslot" "example" {
///   name           = "example-slot"
///   app_service_id = azure_appservice_windowswebapp.example.id
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
/// import com.pulumi.azure.appservice.WindowsWebApp;
/// import com.pulumi.azure.appservice.WindowsWebAppArgs;
/// import com.pulumi.azure.appservice.inputs.WindowsWebAppSiteConfigArgs;
/// import com.pulumi.azure.appservice.WindowsWebAppSlot;
/// import com.pulumi.azure.appservice.WindowsWebAppSlotArgs;
/// import com.pulumi.azure.appservice.inputs.WindowsWebAppSlotSiteConfigArgs;
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
///             .osType("Windows")
///             .skuName("P1v2")
///             .build());
///
///         var exampleWindowsWebApp = new WindowsWebApp("exampleWindowsWebApp", WindowsWebAppArgs.builder()
///             .name("example-windows-web-app")
///             .resourceGroupName(example.name())
///             .location(exampleServicePlan.location())
///             .servicePlanId(exampleServicePlan.id())
///             .siteConfig(WindowsWebAppSiteConfigArgs.builder()
///                 .build())
///             .build());
///
///         var exampleWindowsWebAppSlot = new WindowsWebAppSlot("exampleWindowsWebAppSlot", WindowsWebAppSlotArgs.builder()
///             .name("example-slot")
///             .appServiceId(exampleWindowsWebApp.id())
///             .siteConfig(WindowsWebAppSlotSiteConfigArgs.builder()
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
///       osType: Windows
///       skuName: P1v2
///   exampleWindowsWebApp:
///     type: azure:appservice:WindowsWebApp
///     name: example
///     properties:
///       name: example-windows-web-app
///       resourceGroupName: ${example.name}
///       location: ${exampleServicePlan.location}
///       servicePlanId: ${exampleServicePlan.id}
///       siteConfig: {}
///   exampleWindowsWebAppSlot:
///     type: azure:appservice:WindowsWebAppSlot
///     name: example
///     properties:
///       name: example-slot
///       appServiceId: ${exampleWindowsWebApp.id}
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
/// Windows Web Apps can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/windowsWebAppSlot:WindowsWebAppSlot example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.Web/sites/site1/slots/slot1
/// ```
class WindowsWebAppSlot extends pulumi.CustomResource {
  /// The ID of the Windows Web App this Deployment Slot will be part of. Changing this forces a new Windows Web App to be created.
  late final pulumi.Output<String> appServiceId;
  /// A map of key-value pairs of App Settings.
  late final pulumi.Output<Map<String, String>?> appSettings;
  /// An `authSettings` block as defined below.
  late final pulumi.Output<WindowsWebAppSlotAuthSettings?> authSettings;
  /// An `authSettingsV2` block as defined below.
  late final pulumi.Output<WindowsWebAppSlotAuthSettingsV2?> authSettingsV2;
  /// A `backup` block as defined below.
  late final pulumi.Output<WindowsWebAppSlotBackup?> backup;
  /// Should Client Affinity be enabled?
  late final pulumi.Output<bool?> clientAffinityEnabled;
  /// Should Client Certificates be enabled?
  late final pulumi.Output<bool?> clientCertificateEnabled;
  /// Paths to exclude when using client certificates, separated by ;
  ///
  /// &gt; **Note:** TLS 1.3 and HTTP 2.0 don't support TLS renegotiation. These protocols will not work if your app is configured with client certificate settings that use TLS renegotiation. Either set `clientCertificateEnabled` to `false`, or set `clientCertificateMode` to `Optional` or `Required` and remove all `clientCertificateExclusionPaths`.
  late final pulumi.Output<String?> clientCertificateExclusionPaths;
  /// The Client Certificate mode. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. This property has no effect when `clientCertificateEnabled` is `false`. Defaults to `Required`.
  late final pulumi.Output<String?> clientCertificateMode;
  /// One or more `connectionString` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> connectionStrings;
  /// The identifier used by App Service to perform domain ownership verification via DNS TXT record.
  late final pulumi.Output<String> customDomainVerificationId;
  /// The default hostname of the Windows Web App Slot.
  late final pulumi.Output<String> defaultHostname;
  /// Should the Windows Web App Slot be enabled? Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// Should the default FTP Basic Authentication publishing profile be enabled. Defaults to `true`.
  late final pulumi.Output<bool?> ftpPublishBasicAuthenticationEnabled;
  /// The ID of the App Service Environment used by App Service Slot.
  late final pulumi.Output<String> hostingEnvironmentId;
  /// Should the Windows Web App Slot require HTTPS connections. Defaults to `false`.
  late final pulumi.Output<bool?> httpsOnly;
  /// An `identity` block as defined below.
  late final pulumi.Output<WindowsWebAppSlotIdentity?> identity;
  /// The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity)
  late final pulumi.Output<String> keyVaultReferenceIdentityId;
  /// The Kind value for this Windows Web App Slot.
  late final pulumi.Output<String> kind;
  /// A `logs` block as defined below.
  late final pulumi.Output<WindowsWebAppSlotLogs?> logs;
  /// The name which should be used for this Windows Web App Slot. Changing this forces a new Windows Web App Slot to be created.
  ///
  /// &gt; **Note:** Terraform will perform a name availability check as part of the creation progress, if this Web App is part of an App Service Environment terraform will require Read permission on the App Service Environment for this to complete reliably.
  late final pulumi.Output<String> name;
  /// A list of outbound IP addresses - such as `["52.23.25.3", "52.143.43.12"]`
  late final pulumi.Output<List<String>> outboundIpAddressLists;
  /// A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12`.
  late final pulumi.Output<String> outboundIpAddresses;
  /// A list of possible outbound ip address.
  late final pulumi.Output<List<String>> possibleOutboundIpAddressLists;
  /// A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12,52.143.43.17` - not all of which are necessarily in use. Superset of `outboundIpAddresses`.
  late final pulumi.Output<String> possibleOutboundIpAddresses;
  /// Should public network access be enabled for the Web App. Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// The ID of the Service Plan in which to run this slot. If not specified the same Service Plan as the Windows Web App will be used.
  ///
  /// &gt; **Note:** `servicePlanId` should only be specified if it differs from the Service Plan of the associated Windows Web App.
  late final pulumi.Output<String?> servicePlanId;
  /// A `siteConfig` block as defined below.
  late final pulumi.Output<WindowsWebAppSlotSiteConfig> siteConfig;
  /// A `siteCredential` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> siteCredentials;
  /// One or more `storageAccount` blocks as defined below.
  ///
  /// &gt; **Note:** Using this value requires `WEBSITE_RUN_FROM_PACKAGE=1` to be set on the App in `appSettings`. Refer to the [Azure docs](https://docs.microsoft.com/en-us/azure/app-service/deploy-run-package) for further details.
  late final pulumi.Output<List<Map<String, dynamic>>?> storageAccounts;
  /// A mapping of tags which should be assigned to the Windows Web App Slot.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Whether backup and restore operations over the linked virtual network are enabled. Defaults to `false`.
  late final pulumi.Output<bool?> virtualNetworkBackupRestoreEnabled;
  /// Whether traffic for the image pull should be routed over the virtual network.
  ///
  /// &gt; **Note:** `virtualNetworkImagePullEnabled` must be set to `true` when running in an App Service Environment.
  late final pulumi.Output<bool> virtualNetworkImagePullEnabled;
  /// The subnet id which will be used by this Web App Slot for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration).
  ///
  /// &gt; **Note:** The AzureRM Terraform provider provides regional virtual network integration via the standalone resource appServiceVirtualNetworkSwiftConnection and in-line within this resource using the `virtualNetworkSubnetId` property. You cannot use both methods simultaneously. If the virtual network is set via the resource `appServiceVirtualNetworkSwiftConnection` then `ignoreChanges` should be used in the web app slot configuration.
  ///
  /// &gt; **Note:** Assigning the `virtualNetworkSubnetId` property requires [RBAC permissions on the subnet](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#permissions)
  late final pulumi.Output<String?> virtualNetworkSubnetId;
  /// Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to `true`.
  ///
  /// &gt; **Note:** Setting this value to true will disable the ability to use `zipDeployFile` which currently relies on the default publishing profile.
  late final pulumi.Output<bool?> webdeployPublishBasicAuthenticationEnabled;
  /// The local path and filename of the Zip packaged application to deploy to this Windows Web App.
  late final pulumi.Output<String> zipDeployFile;

  /// Creates a new [WindowsWebAppSlot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WindowsWebAppSlot]. {@macro pulumi_appservice_windows_web_app_slot_windows_web_app_slot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WindowsWebAppSlot(
    String name, {
    WindowsWebAppSlotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/windowsWebAppSlot:WindowsWebAppSlot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appServiceId = registerOutput<String>('appServiceId');
    appSettings = registerOutput<Map<String, String>?>('appSettings');
    authSettings = registerOutput<WindowsWebAppSlotAuthSettings?>('authSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsWebAppSlotAuthSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    authSettingsV2 = registerOutput<WindowsWebAppSlotAuthSettingsV2?>('authSettingsV2', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsWebAppSlotAuthSettingsV2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    backup = registerOutput<WindowsWebAppSlotBackup?>('backup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsWebAppSlotBackup.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clientAffinityEnabled = registerOutput<bool?>('clientAffinityEnabled');
    clientCertificateEnabled = registerOutput<bool?>('clientCertificateEnabled');
    clientCertificateExclusionPaths = registerOutput<String?>('clientCertificateExclusionPaths');
    clientCertificateMode = registerOutput<String?>('clientCertificateMode');
    connectionStrings = registerOutput<List<Map<String, dynamic>>?>('connectionStrings');
    customDomainVerificationId = registerOutput<String>('customDomainVerificationId');
    defaultHostname = registerOutput<String>('defaultHostname');
    enabled = registerOutput<bool?>('enabled');
    ftpPublishBasicAuthenticationEnabled = registerOutput<bool?>('ftpPublishBasicAuthenticationEnabled');
    hostingEnvironmentId = registerOutput<String>('hostingEnvironmentId');
    httpsOnly = registerOutput<bool?>('httpsOnly');
    identity = registerOutput<WindowsWebAppSlotIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsWebAppSlotIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    keyVaultReferenceIdentityId = registerOutput<String>('keyVaultReferenceIdentityId');
    kind = registerOutput<String>('kind');
    logs = registerOutput<WindowsWebAppSlotLogs?>('logs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsWebAppSlotLogs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    outboundIpAddressLists = registerOutput<List<String>>('outboundIpAddressLists');
    outboundIpAddresses = registerOutput<String>('outboundIpAddresses');
    possibleOutboundIpAddressLists = registerOutput<List<String>>('possibleOutboundIpAddressLists');
    possibleOutboundIpAddresses = registerOutput<String>('possibleOutboundIpAddresses');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    servicePlanId = registerOutput<String?>('servicePlanId');
    siteConfig = registerOutput<WindowsWebAppSlotSiteConfig>('siteConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsWebAppSlotSiteConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    siteCredentials = registerOutput<List<Map<String, dynamic>>>('siteCredentials');
    storageAccounts = registerOutput<List<Map<String, dynamic>>?>('storageAccounts');
    tags = registerOutput<Map<String, String>?>('tags');
    virtualNetworkBackupRestoreEnabled = registerOutput<bool?>('virtualNetworkBackupRestoreEnabled');
    virtualNetworkImagePullEnabled = registerOutput<bool>('virtualNetworkImagePullEnabled');
    virtualNetworkSubnetId = registerOutput<String?>('virtualNetworkSubnetId');
    webdeployPublishBasicAuthenticationEnabled = registerOutput<bool?>('webdeployPublishBasicAuthenticationEnabled');
    zipDeployFile = registerOutput<String>('zipDeployFile');
  }

  /// Gets an existing [WindowsWebAppSlot] resource's state with the given [name] and [id].
  static WindowsWebAppSlot get(
    String name,
    pulumi.Input<String> id, {
    WindowsWebAppSlotState? state,
  }) {
    return WindowsWebAppSlot._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WindowsWebAppSlot._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/windowsWebAppSlot:WindowsWebAppSlot',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appServiceId = registerOutput<String>('appServiceId');
    appSettings = registerOutput<Map<String, String>?>('appSettings');
    authSettings = registerOutput<WindowsWebAppSlotAuthSettings?>('authSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsWebAppSlotAuthSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    authSettingsV2 = registerOutput<WindowsWebAppSlotAuthSettingsV2?>('authSettingsV2', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsWebAppSlotAuthSettingsV2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    backup = registerOutput<WindowsWebAppSlotBackup?>('backup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsWebAppSlotBackup.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clientAffinityEnabled = registerOutput<bool?>('clientAffinityEnabled');
    clientCertificateEnabled = registerOutput<bool?>('clientCertificateEnabled');
    clientCertificateExclusionPaths = registerOutput<String?>('clientCertificateExclusionPaths');
    clientCertificateMode = registerOutput<String?>('clientCertificateMode');
    connectionStrings = registerOutput<List<Map<String, dynamic>>?>('connectionStrings');
    customDomainVerificationId = registerOutput<String>('customDomainVerificationId');
    defaultHostname = registerOutput<String>('defaultHostname');
    enabled = registerOutput<bool?>('enabled');
    ftpPublishBasicAuthenticationEnabled = registerOutput<bool?>('ftpPublishBasicAuthenticationEnabled');
    hostingEnvironmentId = registerOutput<String>('hostingEnvironmentId');
    httpsOnly = registerOutput<bool?>('httpsOnly');
    identity = registerOutput<WindowsWebAppSlotIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsWebAppSlotIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    keyVaultReferenceIdentityId = registerOutput<String>('keyVaultReferenceIdentityId');
    kind = registerOutput<String>('kind');
    logs = registerOutput<WindowsWebAppSlotLogs?>('logs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsWebAppSlotLogs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    outboundIpAddressLists = registerOutput<List<String>>('outboundIpAddressLists');
    outboundIpAddresses = registerOutput<String>('outboundIpAddresses');
    possibleOutboundIpAddressLists = registerOutput<List<String>>('possibleOutboundIpAddressLists');
    possibleOutboundIpAddresses = registerOutput<String>('possibleOutboundIpAddresses');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    servicePlanId = registerOutput<String?>('servicePlanId');
    siteConfig = registerOutput<WindowsWebAppSlotSiteConfig>('siteConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsWebAppSlotSiteConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    siteCredentials = registerOutput<List<Map<String, dynamic>>>('siteCredentials');
    storageAccounts = registerOutput<List<Map<String, dynamic>>?>('storageAccounts');
    tags = registerOutput<Map<String, String>?>('tags');
    virtualNetworkBackupRestoreEnabled = registerOutput<bool?>('virtualNetworkBackupRestoreEnabled');
    virtualNetworkImagePullEnabled = registerOutput<bool>('virtualNetworkImagePullEnabled');
    virtualNetworkSubnetId = registerOutput<String?>('virtualNetworkSubnetId');
    webdeployPublishBasicAuthenticationEnabled = registerOutput<bool?>('webdeployPublishBasicAuthenticationEnabled');
    zipDeployFile = registerOutput<String>('zipDeployFile');
  }
}
