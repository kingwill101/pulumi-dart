import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_function_app_args.dart';
import 'linux_function_app_auth_settings.dart';
import 'linux_function_app_auth_settings_v2.dart';
import 'linux_function_app_backup.dart';
import 'linux_function_app_identity.dart';
import 'linux_function_app_site_config.dart';
import 'linux_function_app_state.dart';
import 'linux_function_app_sticky_settings.dart';

/// Manages a Linux Function App.
///
/// &gt; **Note:** This Terraform resource is specifically designed to provision the infrastructure for a Function App, which can host one or more individual functions. To package and deploy application code to the Function App, tools like [Azure Functions Core Tools](https://learn.microsoft.com/azure/azure-functions/functions-run-local) or Azure CLI can be utilized, however application code deployment must typically be performed individually for each Function App.
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
///     skuName: "B1",
/// });
/// const exampleLinuxFunctionApp = new azure.appservice.LinuxFunctionApp("example", {
///     name: "example-linux-function-app",
///     resourceGroupName: example.name,
///     location: example.location,
///     storageAccountName: exampleAccount.name,
///     storageAccountAccessKey: exampleAccount.primaryAccessKey,
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
///     sku_name="B1")
/// example_linux_function_app = azure.appservice.LinuxFunctionApp("example",
///     name="example-linux-function-app",
///     resource_group_name=example.name,
///     location=example.location,
///     storage_account_name=example_account.name,
///     storage_account_access_key=example_account.primary_access_key,
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
///         SkuName = "B1",
///     });
///
///     var exampleLinuxFunctionApp = new Azure.AppService.LinuxFunctionApp("example", new()
///     {
///         Name = "example-linux-function-app",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         StorageAccountName = exampleAccount.Name,
///         StorageAccountAccessKey = exampleAccount.PrimaryAccessKey,
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
/// 			SkuName:           pulumi.String("B1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewLinuxFunctionApp(ctx, "example", &appservice.LinuxFunctionAppArgs{
/// 			Name:                    pulumi.String("example-linux-function-app"),
/// 			ResourceGroupName:       example.Name,
/// 			Location:                example.Location,
/// 			StorageAccountName:      exampleAccount.Name,
/// 			StorageAccountAccessKey: exampleAccount.PrimaryAccessKey,
/// 			ServicePlanId:           exampleServicePlan.ID(),
/// 			SiteConfig:              &appservice.LinuxFunctionAppSiteConfigArgs{},
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
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.appservice.ServicePlan;
/// import com.pulumi.azure.appservice.ServicePlanArgs;
/// import com.pulumi.azure.appservice.LinuxFunctionApp;
/// import com.pulumi.azure.appservice.LinuxFunctionAppArgs;
/// import com.pulumi.azure.appservice.inputs.LinuxFunctionAppSiteConfigArgs;
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
///             .skuName("B1")
///             .build());
///
///         var exampleLinuxFunctionApp = new LinuxFunctionApp("exampleLinuxFunctionApp", LinuxFunctionAppArgs.builder()
///             .name("example-linux-function-app")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .storageAccountName(exampleAccount.name())
///             .storageAccountAccessKey(exampleAccount.primaryAccessKey())
///             .servicePlanId(exampleServicePlan.id())
///             .siteConfig(LinuxFunctionAppSiteConfigArgs.builder()
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
///       skuName: B1
///   exampleLinuxFunctionApp:
///     type: azure:appservice:LinuxFunctionApp
///     name: example
///     properties:
///       name: example-linux-function-app
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       storageAccountName: ${exampleAccount.name}
///       storageAccountAccessKey: ${exampleAccount.primaryAccessKey}
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
/// Linux Function Apps can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/linuxFunctionApp:LinuxFunctionApp example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.Web/sites/site1
/// ```
class LinuxFunctionApp extends pulumi.CustomResource {
  /// A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values.
  ///
  /// &gt; **Note:** For runtime related settings, please use `node_version` in `site_config` to set the node version and use `functions_extension_version` to set the function runtime version, terraform will assign the values to the key `WEBSITE_NODE_DEFAULT_VERSION` and `FUNCTIONS_EXTENSION_VERSION` in app setting.
  ///
  /// &gt; **Note:** For storage related settings, please use related properties that are available such as `storage_account_access_key`, terraform will assign the value to keys such as `WEBSITE_CONTENTAZUREFILECONNECTIONSTRING`, `AzureWebJobsStorage` in app_setting.
  ///
  /// &gt; **Note:** For application insight related settings, please use `application_insights_connection_string` and `application_insights_key`, terraform will assign the value to the key `APPINSIGHTS_INSTRUMENTATIONKEY` and `APPLICATIONINSIGHTS_CONNECTION_STRING` in app setting.
  ///
  /// &gt; **Note:** For health check related settings, please use `health_check_eviction_time_in_min`, terraform will assign the value to the key `WEBSITE_HEALTHCHECK_MAXPINGFAILURES` in app setting.
  ///
  /// &gt; **Note:** Please create a predefined share if you are restricting your storage account to a virtual network by setting `WEBSITE_CONTENTOVERVNET` to 1 in app_setting.
  late final pulumi.Output<Map<String, String>?> appSettings;

  /// A `auth_settings` block as defined below.
  late final pulumi.Output<LinuxFunctionAppAuthSettings?> authSettings;

  /// An `auth_settings_v2` block as defined below.
  late final pulumi.Output<LinuxFunctionAppAuthSettingsV2?> authSettingsV2;

  /// A `backup` block as defined below.
  late final pulumi.Output<LinuxFunctionAppBackup?> backup;

  /// Should built in logging be enabled. Configures `AzureWebJobsDashboard` app setting based on the configured storage setting. Defaults to `true`.
  ///
  /// &gt; **Note:** `builtin_logging_enabled` is only supported for function app whose function runtime is running on version 1.x.
  late final pulumi.Output<bool?> builtinLoggingEnabled;

  /// Should the function app use Client Certificates.
  late final pulumi.Output<bool?> clientCertificateEnabled;

  /// Paths to exclude when using client certificates, separated by ;
  late final pulumi.Output<String?> clientCertificateExclusionPaths;

  /// The mode of the Function App's client certificates requirement for incoming requests. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. Defaults to `Optional`.
  late final pulumi.Output<String?> clientCertificateMode;

  /// One or more `connection_string` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> connectionStrings;

  /// Should the settings for linking the Function App to storage be suppressed.
  late final pulumi.Output<bool?> contentShareForceDisabled;

  /// The identifier used by App Service to perform domain ownership verification via DNS TXT record.
  late final pulumi.Output<String> customDomainVerificationId;

  /// The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps under the consumption plan. Defaults to `0`.
  late final pulumi.Output<int?> dailyMemoryTimeQuota;

  /// The default hostname of the Linux Function App.
  late final pulumi.Output<String> defaultHostname;

  /// Is the Function App enabled? Defaults to `true`.
  late final pulumi.Output<bool?> enabled;

  /// Should the default FTP Basic Authentication publishing profile be enabled. Defaults to `true`.
  late final pulumi.Output<bool?> ftpPublishBasicAuthenticationEnabled;

  /// The runtime version associated with the Function App. Defaults to `~4`.
  late final pulumi.Output<String?> functionsExtensionVersion;

  /// The ID of the App Service Environment used by Function App.
  late final pulumi.Output<String> hostingEnvironmentId;

  /// Can the Function App only be accessed via HTTPS? Defaults to `false`.
  late final pulumi.Output<bool?> httpsOnly;

  /// A `identity` block as defined below.
  late final pulumi.Output<LinuxFunctionAppIdentity?> identity;

  /// The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity)
  late final pulumi.Output<String> keyVaultReferenceIdentityId;

  /// The Kind value for this Linux Function App.
  late final pulumi.Output<String> kind;

  /// The Azure Region where the Linux Function App should exist. Changing this forces a new Linux Function App to be created.
  late final pulumi.Output<String> location;

  /// The name which should be used for this Linux Function App. Changing this forces a new Linux Function App to be created. Limit the function name to 32 characters to avoid naming collisions. For more information about [Function App naming rule](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/resource-name-rules#microsoftweb) and [Host ID Collisions](https://github.com/Azure/azure-functions-host/wiki/Host-IDs#host-id-collisions)
  late final pulumi.Output<String> name;

  /// A list of outbound IP addresses. For example `["52.23.25.3", "52.143.43.12"]`
  late final pulumi.Output<List<String>> outboundIpAddressLists;

  /// A comma separated list of outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12`.
  late final pulumi.Output<String> outboundIpAddresses;

  /// A list of possible outbound IP addresses, not all of which are necessarily in use. This is a superset of `outbound_ip_address_list`. For example `["52.23.25.3", "52.143.43.12"]`.
  late final pulumi.Output<List<String>> possibleOutboundIpAddressLists;

  /// A comma separated list of possible outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12,52.143.43.17`. This is a superset of `outbound_ip_addresses`.
  late final pulumi.Output<String> possibleOutboundIpAddresses;

  /// Should public network access be enabled for the Function App. Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;

  /// The name of the Resource Group where the Linux Function App should exist. Changing this forces a new Linux Function App to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// The ID of the App Service Plan within which to create this Function App.
  late final pulumi.Output<String> servicePlanId;

  /// A `site_config` block as defined below.
  late final pulumi.Output<LinuxFunctionAppSiteConfig> siteConfig;

  /// A `site_credential` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> siteCredentials;

  /// A `sticky_settings` block as defined below.
  late final pulumi.Output<LinuxFunctionAppStickySettings?> stickySettings;

  /// The access key which will be used to access the backend storage account for the Function App. Conflicts with `storage_uses_managed_identity`.
  late final pulumi.Output<String?> storageAccountAccessKey;

  /// The backend storage account name which will be used by this Function App.
  late final pulumi.Output<String?> storageAccountName;

  /// One or more `storage_account` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> storageAccounts;

  /// The Key Vault Secret ID, optionally including version, that contains the Connection String to connect to the storage account for this Function App.
  ///
  /// &gt; **Note:** `storage_key_vault_secret_id` cannot be used with `storage_account_name`.
  ///
  /// &gt; **Note:** `storage_key_vault_secret_id` used without a version will use the latest version of the secret, however, the service can take up to 24h to pick up a rotation of the latest version. See the [official docs](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#rotation) for more information.
  late final pulumi.Output<String?> storageKeyVaultSecretId;

  /// Should the Function App use Managed Identity to access the storage account. Conflicts with `storage_account_access_key`.
  ///
  /// &gt; **Note:** One of `storage_account_access_key` or `storage_uses_managed_identity` must be specified when using `storage_account_name`.
  late final pulumi.Output<bool?> storageUsesManagedIdentity;

  /// A mapping of tags which should be assigned to the Linux Function App.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Whether backup and restore operations over the linked virtual network are enabled. Defaults to `false`.
  late final pulumi.Output<bool?> virtualNetworkBackupRestoreEnabled;

  /// The subnet id which will be used by this Function App for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration).
  ///
  /// &gt; **Note:** The AzureRM Terraform provider provides regional virtual network integration via the standalone resource app_service_virtual_network_swift_connection and in-line within this resource using the `virtual_network_subnet_id` property. You cannot use both methods simultaneously. If the virtual network is set via the resource `app_service_virtual_network_swift_connection` then `ignore_changes` should be used in the function app configuration.
  ///
  /// &gt; **Note:** Assigning the `virtual_network_subnet_id` property requires [RBAC permissions on the subnet](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#permissions)
  late final pulumi.Output<String?> virtualNetworkSubnetId;

  /// Should the traffic for the image pull be routed over virtual network enabled. Defaults to `false`.
  ///
  /// &gt; **Note:** The feature can also be enabled via the app setting `WEBSITE_PULL_IMAGE_OVER_VNET`. Must be set to `true` when running in an App Service Environment.
  late final pulumi.Output<bool?> vnetImagePullEnabled;

  /// Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to `true`.
  ///
  /// &gt; **Note:** Setting this value to true will disable the ability to use `zip_deploy_file` which currently relies on the default publishing profile.
  late final pulumi.Output<bool?> webdeployPublishBasicAuthenticationEnabled;

  /// The local path and filename of the Zip packaged application to deploy to this Linux Function App.
  ///
  /// &gt; **Note:** Using this value requires either `WEBSITE_RUN_FROM_PACKAGE=1` or `SCM_DO_BUILD_DURING_DEPLOYMENT=true` to be set on the App in `app_settings`. Refer to the [Azure docs](https://learn.microsoft.com/en-us/azure/azure-functions/functions-deployment-technologies) for further details.
  late final pulumi.Output<String> zipDeployFile;

  /// Creates a new [LinuxFunctionApp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinuxFunctionApp]. {@macro pulumi_appservice_linux_function_app_linux_function_app_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinuxFunctionApp(
    String name, {
    LinuxFunctionAppArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:appservice/linuxFunctionApp:LinuxFunctionApp',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    appSettings = registerOutput<Map<String, String>?>('appSettings');
    authSettings = registerOutput<LinuxFunctionAppAuthSettings?>(
      'authSettings',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LinuxFunctionAppAuthSettings.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    authSettingsV2 = registerOutput<LinuxFunctionAppAuthSettingsV2?>(
      'authSettingsV2',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LinuxFunctionAppAuthSettingsV2.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    backup = registerOutput<LinuxFunctionAppBackup?>(
      'backup',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LinuxFunctionAppBackup.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    builtinLoggingEnabled = registerOutput<bool?>('builtinLoggingEnabled');
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
    contentShareForceDisabled = registerOutput<bool?>(
      'contentShareForceDisabled',
    );
    customDomainVerificationId = registerOutput<String>(
      'customDomainVerificationId',
    );
    dailyMemoryTimeQuota = registerOutput<int?>('dailyMemoryTimeQuota');
    defaultHostname = registerOutput<String>('defaultHostname');
    enabled = registerOutput<bool?>('enabled');
    ftpPublishBasicAuthenticationEnabled = registerOutput<bool?>(
      'ftpPublishBasicAuthenticationEnabled',
    );
    functionsExtensionVersion = registerOutput<String?>(
      'functionsExtensionVersion',
    );
    hostingEnvironmentId = registerOutput<String>('hostingEnvironmentId');
    httpsOnly = registerOutput<bool?>('httpsOnly');
    identity = registerOutput<LinuxFunctionAppIdentity?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LinuxFunctionAppIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    keyVaultReferenceIdentityId = registerOutput<String>(
      'keyVaultReferenceIdentityId',
    );
    kind = registerOutput<String>('kind');
    location = registerOutput<String>('location');
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
    siteConfig = registerOutput<LinuxFunctionAppSiteConfig>(
      'siteConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LinuxFunctionAppSiteConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    siteCredentials = registerOutput<List<Map<String, dynamic>>>(
      'siteCredentials',
    );
    stickySettings = registerOutput<LinuxFunctionAppStickySettings?>(
      'stickySettings',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LinuxFunctionAppStickySettings.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    storageAccountAccessKey = registerOutput<String?>(
      'storageAccountAccessKey',
    );
    storageAccountName = registerOutput<String?>('storageAccountName');
    storageAccounts = registerOutput<List<Map<String, dynamic>>?>(
      'storageAccounts',
    );
    storageKeyVaultSecretId = registerOutput<String?>(
      'storageKeyVaultSecretId',
    );
    storageUsesManagedIdentity = registerOutput<bool?>(
      'storageUsesManagedIdentity',
    );
    tags = registerOutput<Map<String, String>?>('tags');
    virtualNetworkBackupRestoreEnabled = registerOutput<bool?>(
      'virtualNetworkBackupRestoreEnabled',
    );
    virtualNetworkSubnetId = registerOutput<String?>('virtualNetworkSubnetId');
    vnetImagePullEnabled = registerOutput<bool?>('vnetImagePullEnabled');
    webdeployPublishBasicAuthenticationEnabled = registerOutput<bool?>(
      'webdeployPublishBasicAuthenticationEnabled',
    );
    zipDeployFile = registerOutput<String>('zipDeployFile');
  }

  /// Gets an existing [LinuxFunctionApp] resource's state with the given [name] and [id].
  static LinuxFunctionApp get(
    String name,
    pulumi.Input<String> id, {
    LinuxFunctionAppState? state,
  }) {
    return LinuxFunctionApp._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LinuxFunctionApp._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:appservice/linuxFunctionApp:LinuxFunctionApp',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    appSettings = registerOutput<Map<String, String>?>('appSettings');
    authSettings = registerOutput<LinuxFunctionAppAuthSettings?>(
      'authSettings',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LinuxFunctionAppAuthSettings.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    authSettingsV2 = registerOutput<LinuxFunctionAppAuthSettingsV2?>(
      'authSettingsV2',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LinuxFunctionAppAuthSettingsV2.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    backup = registerOutput<LinuxFunctionAppBackup?>(
      'backup',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LinuxFunctionAppBackup.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    builtinLoggingEnabled = registerOutput<bool?>('builtinLoggingEnabled');
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
    contentShareForceDisabled = registerOutput<bool?>(
      'contentShareForceDisabled',
    );
    customDomainVerificationId = registerOutput<String>(
      'customDomainVerificationId',
    );
    dailyMemoryTimeQuota = registerOutput<int?>('dailyMemoryTimeQuota');
    defaultHostname = registerOutput<String>('defaultHostname');
    enabled = registerOutput<bool?>('enabled');
    ftpPublishBasicAuthenticationEnabled = registerOutput<bool?>(
      'ftpPublishBasicAuthenticationEnabled',
    );
    functionsExtensionVersion = registerOutput<String?>(
      'functionsExtensionVersion',
    );
    hostingEnvironmentId = registerOutput<String>('hostingEnvironmentId');
    httpsOnly = registerOutput<bool?>('httpsOnly');
    identity = registerOutput<LinuxFunctionAppIdentity?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LinuxFunctionAppIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    keyVaultReferenceIdentityId = registerOutput<String>(
      'keyVaultReferenceIdentityId',
    );
    kind = registerOutput<String>('kind');
    location = registerOutput<String>('location');
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
    siteConfig = registerOutput<LinuxFunctionAppSiteConfig>(
      'siteConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LinuxFunctionAppSiteConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    siteCredentials = registerOutput<List<Map<String, dynamic>>>(
      'siteCredentials',
    );
    stickySettings = registerOutput<LinuxFunctionAppStickySettings?>(
      'stickySettings',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LinuxFunctionAppStickySettings.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    storageAccountAccessKey = registerOutput<String?>(
      'storageAccountAccessKey',
    );
    storageAccountName = registerOutput<String?>('storageAccountName');
    storageAccounts = registerOutput<List<Map<String, dynamic>>?>(
      'storageAccounts',
    );
    storageKeyVaultSecretId = registerOutput<String?>(
      'storageKeyVaultSecretId',
    );
    storageUsesManagedIdentity = registerOutput<bool?>(
      'storageUsesManagedIdentity',
    );
    tags = registerOutput<Map<String, String>?>('tags');
    virtualNetworkBackupRestoreEnabled = registerOutput<bool?>(
      'virtualNetworkBackupRestoreEnabled',
    );
    virtualNetworkSubnetId = registerOutput<String?>('virtualNetworkSubnetId');
    vnetImagePullEnabled = registerOutput<bool?>('vnetImagePullEnabled');
    webdeployPublishBasicAuthenticationEnabled = registerOutput<bool?>(
      'webdeployPublishBasicAuthenticationEnabled',
    );
    zipDeployFile = registerOutput<String>('zipDeployFile');
  }
}
