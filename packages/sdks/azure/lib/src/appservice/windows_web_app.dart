import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_web_app_args.dart';
import 'windows_web_app_auth_settings.dart';
import 'windows_web_app_auth_settings_v2.dart';
import 'windows_web_app_backup.dart';
import 'windows_web_app_identity.dart';
import 'windows_web_app_logs.dart';
import 'windows_web_app_site_config.dart';
import 'windows_web_app_state.dart';
import 'windows_web_app_sticky_settings.dart';

/// Manages a Windows Web App.
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
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     skuName: "P1v2",
///     osType: "Windows",
/// });
/// const exampleWindowsWebApp = new azure.appservice.WindowsWebApp("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: exampleServicePlan.location,
///     servicePlanId: exampleServicePlan.id,
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
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     sku_name="P1v2",
///     os_type="Windows")
/// example_windows_web_app = azure.appservice.WindowsWebApp("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example_service_plan.location,
///     service_plan_id=example_service_plan.id,
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
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         SkuName = "P1v2",
///         OsType = "Windows",
///     });
///
///     var exampleWindowsWebApp = new Azure.AppService.WindowsWebApp("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = exampleServicePlan.Location,
///         ServicePlanId = exampleServicePlan.Id,
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
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			SkuName:           pulumi.String("P1v2"),
/// 			OsType:            pulumi.String("Windows"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewWindowsWebApp(ctx, "example", &appservice.WindowsWebAppArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          exampleServicePlan.Location,
/// 			ServicePlanId:     exampleServicePlan.ID(),
/// 			SiteConfig:        &appservice.WindowsWebAppSiteConfigArgs{},
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
/// import com.pulumi.azure.appservice.WindowsWebApp;
/// import com.pulumi.azure.appservice.WindowsWebAppArgs;
/// import com.pulumi.azure.appservice.inputs.WindowsWebAppSiteConfigArgs;
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
///         var exampleServicePlan = new ServicePlan("exampleServicePlan", ServicePlanArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .skuName("P1v2")
///             .osType("Windows")
///             .build());
///
///         var exampleWindowsWebApp = new WindowsWebApp("exampleWindowsWebApp", WindowsWebAppArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(exampleServicePlan.location())
///             .servicePlanId(exampleServicePlan.id())
///             .siteConfig(WindowsWebAppSiteConfigArgs.builder()
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
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       skuName: P1v2
///       osType: Windows
///   exampleWindowsWebApp:
///     type: azure:appservice:WindowsWebApp
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${exampleServicePlan.location}
///       servicePlanId: ${exampleServicePlan.id}
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
/// Windows Web Apps can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/windowsWebApp:WindowsWebApp example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.Web/sites/site1
/// ```
class WindowsWebApp extends pulumi.CustomResource {
  /// A map of key-value pairs of App Settings.
  late final pulumi.Output<Map<String, String>?> appSettings;

  /// An `auth_settings` block as defined below.
  late final pulumi.Output<WindowsWebAppAuthSettings?> authSettings;

  /// An `auth_settings_v2` block as defined below.
  late final pulumi.Output<WindowsWebAppAuthSettingsV2?> authSettingsV2;

  /// A `backup` block as defined below.
  late final pulumi.Output<WindowsWebAppBackup?> backup;

  /// Should Client Affinity be enabled?
  late final pulumi.Output<bool?> clientAffinityEnabled;

  /// Should Client Certificates be enabled?
  late final pulumi.Output<bool?> clientCertificateEnabled;

  /// Paths to exclude when using client certificates, separated by ;
  late final pulumi.Output<String?> clientCertificateExclusionPaths;

  /// The Client Certificate mode. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. This property has no effect when `client_certificate_enabled` is `false`. Defaults to `Required`.
  late final pulumi.Output<String?> clientCertificateMode;

  /// One or more `connection_string` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> connectionStrings;

  /// The identifier used by App Service to perform domain ownership verification via DNS TXT record.
  late final pulumi.Output<String> customDomainVerificationId;

  /// The default hostname of the Windows Web App.
  late final pulumi.Output<String> defaultHostname;

  /// Should the Windows Web App be enabled? Defaults to `true`.
  late final pulumi.Output<bool?> enabled;

  /// Should the default FTP Basic Authentication publishing profile be enabled. Defaults to `true`.
  late final pulumi.Output<bool?> ftpPublishBasicAuthenticationEnabled;

  /// The ID of the App Service Environment used by App Service.
  late final pulumi.Output<String> hostingEnvironmentId;

  /// Should the Windows Web App require HTTPS connections. Defaults to `false`.
  late final pulumi.Output<bool?> httpsOnly;

  /// An `identity` block as defined below.
  late final pulumi.Output<WindowsWebAppIdentity?> identity;

  /// The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity)
  late final pulumi.Output<String> keyVaultReferenceIdentityId;

  /// The Kind value for this Windows Web App.
  late final pulumi.Output<String> kind;

  /// The Azure Region where the Windows Web App should exist. Changing this forces a new Windows Web App to be created.
  late final pulumi.Output<String> location;

  /// A `logs` block as defined below.
  late final pulumi.Output<WindowsWebAppLogs?> logs;

  /// The name which should be used for this Windows Web App. Changing this forces a new Windows Web App to be created.
  late final pulumi.Output<String> name;

  /// A list of outbound IP addresses - such as `["52.23.25.3", "52.143.43.12"]`
  late final pulumi.Output<List<String>> outboundIpAddressLists;

  /// A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12`.
  late final pulumi.Output<String> outboundIpAddresses;

  /// A list of possible outbound ip address.
  late final pulumi.Output<List<String>> possibleOutboundIpAddressLists;

  /// A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12,52.143.43.17` - not all of which are necessarily in use. Superset of `outbound_ip_addresses`.
  late final pulumi.Output<String> possibleOutboundIpAddresses;

  /// Should public network access be enabled for the Web App. Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;

  /// The name of the Resource Group where the Windows Web App should exist. Changing this forces a new Windows Web App to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// The ID of the Service Plan that this Windows App Service will be created in.
  late final pulumi.Output<String> servicePlanId;

  /// A `site_config` block as defined below.
  late final pulumi.Output<WindowsWebAppSiteConfig> siteConfig;

  /// A `site_credential` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> siteCredentials;

  /// A `sticky_settings` block as defined below.
  late final pulumi.Output<WindowsWebAppStickySettings?> stickySettings;

  /// One or more `storage_account` blocks as defined below.
  ///
  /// &gt; **Note:** Using this value requires `WEBSITE_RUN_FROM_PACKAGE=1` to be set on the App in `app_settings`. Refer to the [Azure docs](https://docs.microsoft.com/en-us/azure/app-service/deploy-run-package) for further details.
  late final pulumi.Output<List<Map<String, dynamic>>?> storageAccounts;

  /// A mapping of tags which should be assigned to the Windows Web App.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Whether backup and restore operations over the linked virtual network are enabled. Defaults to `false`.
  late final pulumi.Output<bool?> virtualNetworkBackupRestoreEnabled;

  /// Whether traffic for the image pull should be routed over the virtual network.
  ///
  /// &gt; **Note:** `virtual_network_image_pull_enabled` must be set to `true` when running in an App Service Environment.
  late final pulumi.Output<bool> virtualNetworkImagePullEnabled;

  /// The subnet id which will be used by this Web App for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration).
  ///
  /// &gt; **Note:** The AzureRM Terraform provider provides regional virtual network integration via the standalone resource app_service_virtual_network_swift_connection and in-line within this resource using the `virtual_network_subnet_id` property. You cannot use both methods simultaneously. If the virtual network is set via the resource `app_service_virtual_network_swift_connection` then `ignore_changes` should be used in the web app configuration.
  ///
  /// &gt; **Note:** Assigning the `virtual_network_subnet_id` property requires [RBAC permissions on the subnet](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#permissions)
  late final pulumi.Output<String?> virtualNetworkSubnetId;

  /// Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to `true`.
  ///
  /// &gt; **Note:** Setting this value to true will disable the ability to use `zip_deploy_file` which currently relies on the default publishing profile.
  late final pulumi.Output<bool?> webdeployPublishBasicAuthenticationEnabled;

  /// The local path and filename of the Zip packaged application to deploy to this Windows Web App.
  ///
  /// &gt; **Note:** Using this value requires either `WEBSITE_RUN_FROM_PACKAGE=1` or `SCM_DO_BUILD_DURING_DEPLOYMENT=true` to be set on the App in `app_settings`. Refer to the Azure docs on [running the Web App directly from the Zip package](https://learn.microsoft.com/en-us/azure/app-service/deploy-run-package), or [automating the build for Zip deploy](https://learn.microsoft.com/en-us/azure/app-service/deploy-zip#enable-build-automation-for-zip-deploy) for further details.
  late final pulumi.Output<String> zipDeployFile;

  /// Creates a new [WindowsWebApp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WindowsWebApp]. {@macro pulumi_appservice_windows_web_app_windows_web_app_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WindowsWebApp(
    String name, {
    WindowsWebAppArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:appservice/windowsWebApp:WindowsWebApp',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    appSettings = registerOutput<Map<String, String>?>('appSettings');
    authSettings = registerOutput<WindowsWebAppAuthSettings?>('authSettings');
    authSettingsV2 = registerOutput<WindowsWebAppAuthSettingsV2?>(
      'authSettingsV2',
    );
    backup = registerOutput<WindowsWebAppBackup?>('backup');
    clientAffinityEnabled = registerOutput<bool?>('clientAffinityEnabled');
    clientCertificateEnabled = registerOutput<bool?>(
      'clientCertificateEnabled',
    );
    clientCertificateExclusionPaths = registerOutput<String?>(
      'clientCertificateExclusionPaths',
    );
    clientCertificateMode = registerOutput<String?>('clientCertificateMode');
    connectionStrings = registerOutput<List<Map<String, dynamic>>?>(
      'connectionStrings',
    );
    customDomainVerificationId = registerOutput<String>(
      'customDomainVerificationId',
    );
    defaultHostname = registerOutput<String>('defaultHostname');
    enabled = registerOutput<bool?>('enabled');
    ftpPublishBasicAuthenticationEnabled = registerOutput<bool?>(
      'ftpPublishBasicAuthenticationEnabled',
    );
    hostingEnvironmentId = registerOutput<String>('hostingEnvironmentId');
    httpsOnly = registerOutput<bool?>('httpsOnly');
    identity = registerOutput<WindowsWebAppIdentity?>('identity');
    keyVaultReferenceIdentityId = registerOutput<String>(
      'keyVaultReferenceIdentityId',
    );
    kind = registerOutput<String>('kind');
    location = registerOutput<String>('location');
    logs = registerOutput<WindowsWebAppLogs?>('logs');
    this.name = registerOutput<String>('name');
    outboundIpAddressLists = registerOutput<List<String>>(
      'outboundIpAddressLists',
    );
    outboundIpAddresses = registerOutput<String>('outboundIpAddresses');
    possibleOutboundIpAddressLists = registerOutput<List<String>>(
      'possibleOutboundIpAddressLists',
    );
    possibleOutboundIpAddresses = registerOutput<String>(
      'possibleOutboundIpAddresses',
    );
    publicNetworkAccessEnabled = registerOutput<bool?>(
      'publicNetworkAccessEnabled',
    );
    resourceGroupName = registerOutput<String>('resourceGroupName');
    servicePlanId = registerOutput<String>('servicePlanId');
    siteConfig = registerOutput<WindowsWebAppSiteConfig>('siteConfig');
    siteCredentials = registerOutput<List<Map<String, dynamic>>>(
      'siteCredentials',
    );
    stickySettings = registerOutput<WindowsWebAppStickySettings?>(
      'stickySettings',
    );
    storageAccounts = registerOutput<List<Map<String, dynamic>>?>(
      'storageAccounts',
    );
    tags = registerOutput<Map<String, String>?>('tags');
    virtualNetworkBackupRestoreEnabled = registerOutput<bool?>(
      'virtualNetworkBackupRestoreEnabled',
    );
    virtualNetworkImagePullEnabled = registerOutput<bool>(
      'virtualNetworkImagePullEnabled',
    );
    virtualNetworkSubnetId = registerOutput<String?>('virtualNetworkSubnetId');
    webdeployPublishBasicAuthenticationEnabled = registerOutput<bool?>(
      'webdeployPublishBasicAuthenticationEnabled',
    );
    zipDeployFile = registerOutput<String>('zipDeployFile');
  }

  /// Gets an existing [WindowsWebApp] resource's state with the given [name] and [id].
  static WindowsWebApp get(
    String name,
    pulumi.Input<String> id, {
    WindowsWebAppState? state,
  }) {
    return WindowsWebApp._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WindowsWebApp._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:appservice/windowsWebApp:WindowsWebApp',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    appSettings = registerOutput<Map<String, String>?>('appSettings');
    authSettings = registerOutput<WindowsWebAppAuthSettings?>('authSettings');
    authSettingsV2 = registerOutput<WindowsWebAppAuthSettingsV2?>(
      'authSettingsV2',
    );
    backup = registerOutput<WindowsWebAppBackup?>('backup');
    clientAffinityEnabled = registerOutput<bool?>('clientAffinityEnabled');
    clientCertificateEnabled = registerOutput<bool?>(
      'clientCertificateEnabled',
    );
    clientCertificateExclusionPaths = registerOutput<String?>(
      'clientCertificateExclusionPaths',
    );
    clientCertificateMode = registerOutput<String?>('clientCertificateMode');
    connectionStrings = registerOutput<List<Map<String, dynamic>>?>(
      'connectionStrings',
    );
    customDomainVerificationId = registerOutput<String>(
      'customDomainVerificationId',
    );
    defaultHostname = registerOutput<String>('defaultHostname');
    enabled = registerOutput<bool?>('enabled');
    ftpPublishBasicAuthenticationEnabled = registerOutput<bool?>(
      'ftpPublishBasicAuthenticationEnabled',
    );
    hostingEnvironmentId = registerOutput<String>('hostingEnvironmentId');
    httpsOnly = registerOutput<bool?>('httpsOnly');
    identity = registerOutput<WindowsWebAppIdentity?>('identity');
    keyVaultReferenceIdentityId = registerOutput<String>(
      'keyVaultReferenceIdentityId',
    );
    kind = registerOutput<String>('kind');
    location = registerOutput<String>('location');
    logs = registerOutput<WindowsWebAppLogs?>('logs');
    this.name = registerOutput<String>('name');
    outboundIpAddressLists = registerOutput<List<String>>(
      'outboundIpAddressLists',
    );
    outboundIpAddresses = registerOutput<String>('outboundIpAddresses');
    possibleOutboundIpAddressLists = registerOutput<List<String>>(
      'possibleOutboundIpAddressLists',
    );
    possibleOutboundIpAddresses = registerOutput<String>(
      'possibleOutboundIpAddresses',
    );
    publicNetworkAccessEnabled = registerOutput<bool?>(
      'publicNetworkAccessEnabled',
    );
    resourceGroupName = registerOutput<String>('resourceGroupName');
    servicePlanId = registerOutput<String>('servicePlanId');
    siteConfig = registerOutput<WindowsWebAppSiteConfig>('siteConfig');
    siteCredentials = registerOutput<List<Map<String, dynamic>>>(
      'siteCredentials',
    );
    stickySettings = registerOutput<WindowsWebAppStickySettings?>(
      'stickySettings',
    );
    storageAccounts = registerOutput<List<Map<String, dynamic>>?>(
      'storageAccounts',
    );
    tags = registerOutput<Map<String, String>?>('tags');
    virtualNetworkBackupRestoreEnabled = registerOutput<bool?>(
      'virtualNetworkBackupRestoreEnabled',
    );
    virtualNetworkImagePullEnabled = registerOutput<bool>(
      'virtualNetworkImagePullEnabled',
    );
    virtualNetworkSubnetId = registerOutput<String?>('virtualNetworkSubnetId');
    webdeployPublishBasicAuthenticationEnabled = registerOutput<bool?>(
      'webdeployPublishBasicAuthenticationEnabled',
    );
    zipDeployFile = registerOutput<String>('zipDeployFile');
  }
}
