import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_service_args.dart';
import 'app_service_auth_settings.dart';
import 'app_service_backup.dart';
import 'app_service_identity.dart';
import 'app_service_logs.dart';
import 'app_service_site_config.dart';
import 'app_service_source_control.dart';
import 'app_service_state.dart';

/// Manages an App Service (within an App Service Plan).
///
/// !&gt; **NOTE:** This resource has been deprecated in version 5.0 of the provider and will be removed in version 6.0. Please use `azure.appservice.LinuxWebApp` and `azure.appservice.WindowsWebApp` resources instead.
///
/// &gt; **Note:** When using Slots - the `app_settings`, `connection_string` and `site_config` blocks on the `azure.appservice.AppService` resource will be overwritten when promoting a Slot using the `azure.appservice.ActiveSlot` resource.
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
/// 			AppServicePlanId:  examplePlan.ID(),
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

  /// A `auth_settings` block as defined below.
  late final pulumi.Output<AppServiceAuthSettings> authSettings;

  /// A `backup` block as defined below.
  late final pulumi.Output<AppServiceBackup?> backup;

  /// Should the App Service send session affinity cookies, which route client requests in the same session to the same instance?
  late final pulumi.Output<bool?> clientAffinityEnabled;

  /// Does the App Service require client certificates for incoming requests? Defaults to `false`.
  late final pulumi.Output<bool?> clientCertEnabled;

  /// Mode of client certificates for this App Service. Possible values are `Required`, `Optional` and `OptionalInteractiveUser`. If this parameter is set, `client_cert_enabled` must be set to `true`, otherwise this parameter is ignored.
  late final pulumi.Output<String> clientCertMode;

  /// One or more `connection_string` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> connectionStrings;

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

  /// A list of outbound IP addresses - such as `["52.23.25.3", "52.143.43.12", "52.143.43.17"]` - not all of which are necessarily in use. Superset of `outbound_ip_address_list`.
  late final pulumi.Output<List<String>> possibleOutboundIpAddressLists;

  /// A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12,52.143.43.17` - not all of which are necessarily in use. Superset of `outbound_ip_addresses`.
  late final pulumi.Output<String> possibleOutboundIpAddresses;

  /// The name of the resource group in which to create the App Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// A `site_config` block as defined below.
  late final pulumi.Output<AppServiceSiteConfig> siteConfig;

  /// A `site_credential` block as defined below, which contains the site-level credentials used to publish to this App Service.
  late final pulumi.Output<List<Map<String, dynamic>>> siteCredentials;

  /// A `source_control` block as defined below.
  late final pulumi.Output<AppServiceSourceControl> sourceControl;

  /// One or more `storage_account` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> storageAccounts;

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
         options ?? pulumi.CustomResourceOptions(),
       ) {
    appServicePlanId = registerOutput<String>('appServicePlanId');
    appSettings = registerOutput<Map<String, String>>('appSettings');
    authSettings = registerOutput<AppServiceAuthSettings>('authSettings');
    backup = registerOutput<AppServiceBackup?>('backup');
    clientAffinityEnabled = registerOutput<bool?>('clientAffinityEnabled');
    clientCertEnabled = registerOutput<bool?>('clientCertEnabled');
    clientCertMode = registerOutput<String>('clientCertMode');
    connectionStrings = registerOutput<List<Map<String, dynamic>>>(
      'connectionStrings',
    );
    customDomainVerificationId = registerOutput<String>(
      'customDomainVerificationId',
    );
    defaultSiteHostname = registerOutput<String>('defaultSiteHostname');
    enabled = registerOutput<bool?>('enabled');
    httpsOnly = registerOutput<bool?>('httpsOnly');
    identity = registerOutput<AppServiceIdentity?>('identity');
    keyVaultReferenceIdentityId = registerOutput<String>(
      'keyVaultReferenceIdentityId',
    );
    location = registerOutput<String>('location');
    logs = registerOutput<AppServiceLogs>('logs');
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
    resourceGroupName = registerOutput<String>('resourceGroupName');
    siteConfig = registerOutput<AppServiceSiteConfig>('siteConfig');
    siteCredentials = registerOutput<List<Map<String, dynamic>>>(
      'siteCredentials',
    );
    sourceControl = registerOutput<AppServiceSourceControl>('sourceControl');
    storageAccounts = registerOutput<List<Map<String, dynamic>>>(
      'storageAccounts',
    );
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [AppService] resource's state with the given [name] and [id].
  static AppService get(
    String name,
    pulumi.Input<String> id, {
    AppServiceState? state,
  }) {
    return AppService._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
    appSettings = registerOutput<Map<String, String>>('appSettings');
    authSettings = registerOutput<AppServiceAuthSettings>('authSettings');
    backup = registerOutput<AppServiceBackup?>('backup');
    clientAffinityEnabled = registerOutput<bool?>('clientAffinityEnabled');
    clientCertEnabled = registerOutput<bool?>('clientCertEnabled');
    clientCertMode = registerOutput<String>('clientCertMode');
    connectionStrings = registerOutput<List<Map<String, dynamic>>>(
      'connectionStrings',
    );
    customDomainVerificationId = registerOutput<String>(
      'customDomainVerificationId',
    );
    defaultSiteHostname = registerOutput<String>('defaultSiteHostname');
    enabled = registerOutput<bool?>('enabled');
    httpsOnly = registerOutput<bool?>('httpsOnly');
    identity = registerOutput<AppServiceIdentity?>('identity');
    keyVaultReferenceIdentityId = registerOutput<String>(
      'keyVaultReferenceIdentityId',
    );
    location = registerOutput<String>('location');
    logs = registerOutput<AppServiceLogs>('logs');
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
    resourceGroupName = registerOutput<String>('resourceGroupName');
    siteConfig = registerOutput<AppServiceSiteConfig>('siteConfig');
    siteCredentials = registerOutput<List<Map<String, dynamic>>>(
      'siteCredentials',
    );
    sourceControl = registerOutput<AppServiceSourceControl>('sourceControl');
    storageAccounts = registerOutput<List<Map<String, dynamic>>>(
      'storageAccounts',
    );
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
