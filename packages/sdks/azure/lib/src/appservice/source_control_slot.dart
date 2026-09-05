import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_control_slot_args.dart';
import 'source_control_slot_github_action_configuration.dart';
import 'source_control_slot_state.dart';

/// Manages an App Service Source Control Slot.
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
///     name: "example-web-app",
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
/// const exampleSourceControlSlot = new azure.appservice.SourceControlSlot("example", {
///     slotId: exampleLinuxWebAppSlot.id,
///     repoUrl: "https://github.com/Azure-Samples/python-docs-hello-world",
///     branch: "master",
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
///     name="example-web-app",
///     resource_group_name=example.name,
///     location=example_service_plan.location,
///     service_plan_id=example_service_plan.id,
///     site_config={})
/// example_linux_web_app_slot = azure.appservice.LinuxWebAppSlot("example",
///     name="example-slot",
///     app_service_id=example_linux_web_app.id,
///     site_config={})
/// example_source_control_slot = azure.appservice.SourceControlSlot("example",
///     slot_id=example_linux_web_app_slot.id,
///     repo_url="https://github.com/Azure-Samples/python-docs-hello-world",
///     branch="master")
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
///         Name = "example-web-app",
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
///     var exampleSourceControlSlot = new Azure.AppService.SourceControlSlot("example", new()
///     {
///         SlotId = exampleLinuxWebAppSlot.Id,
///         RepoUrl = "https://github.com/Azure-Samples/python-docs-hello-world",
///         Branch = "master",
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
/// 			Name:              pulumi.String("example-web-app"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          exampleServicePlan.Location,
/// 			ServicePlanId:     exampleServicePlan.ID().ToIDOutput().ToStringOutput(),
/// 			SiteConfig:        &appservice.LinuxWebAppSiteConfigArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLinuxWebAppSlot, err := appservice.NewLinuxWebAppSlot(ctx, "example", &appservice.LinuxWebAppSlotArgs{
/// 			Name:         pulumi.String("example-slot"),
/// 			AppServiceId: exampleLinuxWebApp.ID().ToIDOutput().ToStringOutput(),
/// 			SiteConfig:   &appservice.LinuxWebAppSlotSiteConfigArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewSourceControlSlot(ctx, "example", &appservice.SourceControlSlotArgs{
/// 			SlotId:  exampleLinuxWebAppSlot.ID().ToIDOutput().ToStringOutput(),
/// 			RepoUrl: pulumi.String("https://github.com/Azure-Samples/python-docs-hello-world"),
/// 			Branch:  pulumi.String("master"),
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
///   name                = "example-web-app"
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
/// resource "azure_appservice_sourcecontrolslot" "example" {
///   slot_id  = azure_appservice_linuxwebappslot.example.id
///   repo_url = "https://github.com/Azure-Samples/python-docs-hello-world"
///   branch   = "master"
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
/// import com.pulumi.azure.appservice.SourceControlSlot;
/// import com.pulumi.azure.appservice.SourceControlSlotArgs;
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
///             .name("example-web-app")
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
///         var exampleSourceControlSlot = new SourceControlSlot("exampleSourceControlSlot", SourceControlSlotArgs.builder()
///             .slotId(exampleLinuxWebAppSlot.id())
///             .repoUrl("https://github.com/Azure-Samples/python-docs-hello-world")
///             .branch("master")
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
///       name: example-web-app
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
///   exampleSourceControlSlot:
///     type: azure:appservice:SourceControlSlot
///     name: example
///     properties:
///       slotId: ${exampleLinuxWebAppSlot.id}
///       repoUrl: https://github.com/Azure-Samples/python-docs-hello-world
///       branch: master
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
/// an App Service Source Control Slot can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/sourceControlSlot:SourceControlSlot example "/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.Web/sites/site1/slots/slot1"
/// ```
class SourceControlSlot extends pulumi.CustomResource {
  /// The URL for the repository. Changing this forces a new resource to be created.
  late final pulumi.Output<String> branch;
  /// A `githubActionConfiguration` block as detailed below. Changing this forces a new resource to be created.
  late final pulumi.Output<SourceControlSlotGithubActionConfiguration?> githubActionConfiguration;
  /// The branch name to use for deployments. Changing this forces a new resource to be created.
  late final pulumi.Output<String> repoUrl;
  /// Should the Deployment Rollback be enabled? Defaults to `false` Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> rollbackEnabled;
  /// The SCM Type in use. This value is decoded by the service from the repository information supplied.
  late final pulumi.Output<String> scmType;
  /// The ID of the Linux or Windows Web App Slot. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Function App Slots are not supported at this time.
  late final pulumi.Output<String> slotId;
  /// Should the Slot use local Git configuration. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> useLocalGit;
  /// Should code be deployed manually. Set to `true` to disable continuous integration, such as webhooks into online repos such as GitHub. Defaults to `false`. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> useManualIntegration;
  /// The repository specified is Mercurial. Defaults to `false`. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> useMercurial;
  /// Indicates if the Slot uses a GitHub action for deployment. This value is decoded by the service from the repository information supplied.
  late final pulumi.Output<bool> usesGithubAction;

  /// Creates a new [SourceControlSlot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SourceControlSlot]. {@macro pulumi_appservice_source_control_slot_source_control_slot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SourceControlSlot(
    String name, {
    SourceControlSlotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/sourceControlSlot:SourceControlSlot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    branch = registerOutput<String>('branch');
    githubActionConfiguration = registerOutput<SourceControlSlotGithubActionConfiguration?>('githubActionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SourceControlSlotGithubActionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    repoUrl = registerOutput<String>('repoUrl');
    rollbackEnabled = registerOutput<bool?>('rollbackEnabled');
    scmType = registerOutput<String>('scmType');
    slotId = registerOutput<String>('slotId');
    useLocalGit = registerOutput<bool?>('useLocalGit');
    useManualIntegration = registerOutput<bool?>('useManualIntegration');
    useMercurial = registerOutput<bool?>('useMercurial');
    usesGithubAction = registerOutput<bool>('usesGithubAction');
  }

  /// Gets an existing [SourceControlSlot] resource's state with the given [name] and [id].
  static SourceControlSlot get(
    String name,
    pulumi.Input<String> id, {
    SourceControlSlotState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SourceControlSlot._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SourceControlSlot._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/sourceControlSlot:SourceControlSlot',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    branch = registerOutput<String>('branch');
    githubActionConfiguration = registerOutput<SourceControlSlotGithubActionConfiguration?>('githubActionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SourceControlSlotGithubActionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    repoUrl = registerOutput<String>('repoUrl');
    rollbackEnabled = registerOutput<bool?>('rollbackEnabled');
    scmType = registerOutput<String>('scmType');
    slotId = registerOutput<String>('slotId');
    useLocalGit = registerOutput<bool?>('useLocalGit');
    useManualIntegration = registerOutput<bool?>('useManualIntegration');
    useMercurial = registerOutput<bool?>('useMercurial');
    usesGithubAction = registerOutput<bool>('usesGithubAction');
  }

  /// Creates a typed reference to an existing [SourceControlSlot] resource.
  SourceControlSlot.reference(String urn)
    : super(
        'azure:appservice/sourceControlSlot:SourceControlSlot',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    branch = registerOutput<String>('branch');
    githubActionConfiguration = registerOutput<SourceControlSlotGithubActionConfiguration?>('githubActionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SourceControlSlotGithubActionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    repoUrl = registerOutput<String>('repoUrl');
    rollbackEnabled = registerOutput<bool?>('rollbackEnabled');
    scmType = registerOutput<String>('scmType');
    slotId = registerOutput<String>('slotId');
    useLocalGit = registerOutput<bool?>('useLocalGit');
    useManualIntegration = registerOutput<bool?>('useManualIntegration');
    useMercurial = registerOutput<bool?>('useMercurial');
    usesGithubAction = registerOutput<bool>('usesGithubAction');
  }
}
