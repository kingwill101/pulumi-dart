import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_args.dart';
import 'application_state.dart';

/// Manages a Virtual Desktop Application.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "rg-example-virtualdesktop",
///     location: "West Europe",
/// });
/// const pooledbreadthfirst = new azure.desktopvirtualization.HostPool("pooledbreadthfirst", {
///     name: "pooledbreadthfirst",
///     location: example.location,
///     resourceGroupName: example.name,
///     type: "Pooled",
///     loadBalancerType: "BreadthFirst",
/// });
/// const personalautomatic = new azure.desktopvirtualization.HostPool("personalautomatic", {
///     name: "personalautomatic",
///     location: example.location,
///     resourceGroupName: example.name,
///     type: "Personal",
///     personalDesktopAssignmentType: "Automatic",
///     loadBalancerType: "BreadthFirst",
/// });
/// const remoteapp = new azure.desktopvirtualization.ApplicationGroup("remoteapp", {
///     name: "acctag",
///     location: example.location,
///     resourceGroupName: example.name,
///     type: "RemoteApp",
///     hostPoolId: pooledbreadthfirst.id,
///     friendlyName: "TestAppGroup",
///     description: "Acceptance Test: An application group",
/// });
/// const chrome = new azure.desktopvirtualization.Application("chrome", {
///     name: "googlechrome",
///     applicationGroupId: remoteapp.id,
///     friendlyName: "Google Chrome",
///     description: "Chromium based web browser",
///     path: "C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe",
///     commandLineArgumentPolicy: "DoNotAllow",
///     commandLineArguments: "--incognito",
///     showInPortal: false,
///     iconPath: "C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe",
///     iconIndex: 0,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="rg-example-virtualdesktop",
///     location="West Europe")
/// pooledbreadthfirst = azure.desktopvirtualization.HostPool("pooledbreadthfirst",
///     name="pooledbreadthfirst",
///     location=example.location,
///     resource_group_name=example.name,
///     type="Pooled",
///     load_balancer_type="BreadthFirst")
/// personalautomatic = azure.desktopvirtualization.HostPool("personalautomatic",
///     name="personalautomatic",
///     location=example.location,
///     resource_group_name=example.name,
///     type="Personal",
///     personal_desktop_assignment_type="Automatic",
///     load_balancer_type="BreadthFirst")
/// remoteapp = azure.desktopvirtualization.ApplicationGroup("remoteapp",
///     name="acctag",
///     location=example.location,
///     resource_group_name=example.name,
///     type="RemoteApp",
///     host_pool_id=pooledbreadthfirst.id,
///     friendly_name="TestAppGroup",
///     description="Acceptance Test: An application group")
/// chrome = azure.desktopvirtualization.Application("chrome",
///     name="googlechrome",
///     application_group_id=remoteapp.id,
///     friendly_name="Google Chrome",
///     description="Chromium based web browser",
///     path="C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe",
///     command_line_argument_policy="DoNotAllow",
///     command_line_arguments="--incognito",
///     show_in_portal=False,
///     icon_path="C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe",
///     icon_index=0)
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
///         Name = "rg-example-virtualdesktop",
///         Location = "West Europe",
///     });
///
///     var pooledbreadthfirst = new Azure.DesktopVirtualization.HostPool("pooledbreadthfirst", new()
///     {
///         Name = "pooledbreadthfirst",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Type = "Pooled",
///         LoadBalancerType = "BreadthFirst",
///     });
///
///     var personalautomatic = new Azure.DesktopVirtualization.HostPool("personalautomatic", new()
///     {
///         Name = "personalautomatic",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Type = "Personal",
///         PersonalDesktopAssignmentType = "Automatic",
///         LoadBalancerType = "BreadthFirst",
///     });
///
///     var remoteapp = new Azure.DesktopVirtualization.ApplicationGroup("remoteapp", new()
///     {
///         Name = "acctag",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Type = "RemoteApp",
///         HostPoolId = pooledbreadthfirst.Id,
///         FriendlyName = "TestAppGroup",
///         Description = "Acceptance Test: An application group",
///     });
///
///     var chrome = new Azure.DesktopVirtualization.Application("chrome", new()
///     {
///         Name = "googlechrome",
///         ApplicationGroupId = remoteapp.Id,
///         FriendlyName = "Google Chrome",
///         Description = "Chromium based web browser",
///         Path = "C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe",
///         CommandLineArgumentPolicy = "DoNotAllow",
///         CommandLineArguments = "--incognito",
///         ShowInPortal = false,
///         IconPath = "C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe",
///         IconIndex = 0,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/desktopvirtualization"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("rg-example-virtualdesktop"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pooledbreadthfirst, err := desktopvirtualization.NewHostPool(ctx, "pooledbreadthfirst", &desktopvirtualization.HostPoolArgs{
/// 			Name:              pulumi.String("pooledbreadthfirst"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Type:              pulumi.String("Pooled"),
/// 			LoadBalancerType:  pulumi.String("BreadthFirst"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = desktopvirtualization.NewHostPool(ctx, "personalautomatic", &desktopvirtualization.HostPoolArgs{
/// 			Name:                          pulumi.String("personalautomatic"),
/// 			Location:                      example.Location,
/// 			ResourceGroupName:             example.Name,
/// 			Type:                          pulumi.String("Personal"),
/// 			PersonalDesktopAssignmentType: pulumi.String("Automatic"),
/// 			LoadBalancerType:              pulumi.String("BreadthFirst"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		remoteapp, err := desktopvirtualization.NewApplicationGroup(ctx, "remoteapp", &desktopvirtualization.ApplicationGroupArgs{
/// 			Name:              pulumi.String("acctag"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Type:              pulumi.String("RemoteApp"),
/// 			HostPoolId:        pooledbreadthfirst.ID().ToIDOutput().ToStringOutput(),
/// 			FriendlyName:      pulumi.String("TestAppGroup"),
/// 			Description:       pulumi.String("Acceptance Test: An application group"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = desktopvirtualization.NewApplication(ctx, "chrome", &desktopvirtualization.ApplicationArgs{
/// 			Name:                      pulumi.String("googlechrome"),
/// 			ApplicationGroupId:        remoteapp.ID().ToIDOutput().ToStringOutput(),
/// 			FriendlyName:              pulumi.String("Google Chrome"),
/// 			Description:               pulumi.String("Chromium based web browser"),
/// 			Path:                      pulumi.String("C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe"),
/// 			CommandLineArgumentPolicy: pulumi.String("DoNotAllow"),
/// 			CommandLineArguments:      pulumi.String("--incognito"),
/// 			ShowInPortal:              pulumi.Bool(false),
/// 			IconPath:                  pulumi.String("C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe"),
/// 			IconIndex:                 pulumi.Int(0),
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
///   name     = "rg-example-virtualdesktop"
///   location = "West Europe"
/// }
/// resource "azure_desktopvirtualization_hostpool" "pooledbreadthfirst" {
///   name                = "pooledbreadthfirst"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   type                = "Pooled"
///   load_balancer_type  = "BreadthFirst"
/// }
/// resource "azure_desktopvirtualization_hostpool" "personalautomatic" {
///   name                             = "personalautomatic"
///   location                         = azure_core_resourcegroup.example.location
///   resource_group_name              = azure_core_resourcegroup.example.name
///   type                             = "Personal"
///   personal_desktop_assignment_type = "Automatic"
///   load_balancer_type               = "BreadthFirst"
/// }
/// resource "azure_desktopvirtualization_applicationgroup" "remoteapp" {
///   name                = "acctag"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   type                = "RemoteApp"
///   host_pool_id        = azure_desktopvirtualization_hostpool.pooledbreadthfirst.id
///   friendly_name       = "TestAppGroup"
///   description         = "Acceptance Test: An application group"
/// }
/// resource "azure_desktopvirtualization_application" "chrome" {
///   name                         = "googlechrome"
///   application_group_id         = azure_desktopvirtualization_applicationgroup.remoteapp.id
///   friendly_name                = "Google Chrome"
///   description                  = "Chromium based web browser"
///   path                         = "C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe"
///   command_line_argument_policy = "DoNotAllow"
///   command_line_arguments       = "--incognito"
///   show_in_portal               = false
///   icon_path                    = "C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe"
///   icon_index                   = 0
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
/// import com.pulumi.azure.desktopvirtualization.HostPool;
/// import com.pulumi.azure.desktopvirtualization.HostPoolArgs;
/// import com.pulumi.azure.desktopvirtualization.ApplicationGroup;
/// import com.pulumi.azure.desktopvirtualization.ApplicationGroupArgs;
/// import com.pulumi.azure.desktopvirtualization.Application;
/// import com.pulumi.azure.desktopvirtualization.ApplicationArgs;
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
///             .name("rg-example-virtualdesktop")
///             .location("West Europe")
///             .build());
///
///         var pooledbreadthfirst = new HostPool("pooledbreadthfirst", HostPoolArgs.builder()
///             .name("pooledbreadthfirst")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .type("Pooled")
///             .loadBalancerType("BreadthFirst")
///             .build());
///
///         var personalautomatic = new HostPool("personalautomatic", HostPoolArgs.builder()
///             .name("personalautomatic")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .type("Personal")
///             .personalDesktopAssignmentType("Automatic")
///             .loadBalancerType("BreadthFirst")
///             .build());
///
///         var remoteapp = new ApplicationGroup("remoteapp", ApplicationGroupArgs.builder()
///             .name("acctag")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .type("RemoteApp")
///             .hostPoolId(pooledbreadthfirst.id())
///             .friendlyName("TestAppGroup")
///             .description("Acceptance Test: An application group")
///             .build());
///
///         var chrome = new Application("chrome", ApplicationArgs.builder()
///             .name("googlechrome")
///             .applicationGroupId(remoteapp.id())
///             .friendlyName("Google Chrome")
///             .description("Chromium based web browser")
///             .path("C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe")
///             .commandLineArgumentPolicy("DoNotAllow")
///             .commandLineArguments("--incognito")
///             .showInPortal(false)
///             .iconPath("C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe")
///             .iconIndex(0)
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
///       name: rg-example-virtualdesktop
///       location: West Europe
///   pooledbreadthfirst:
///     type: azure:desktopvirtualization:HostPool
///     properties:
///       name: pooledbreadthfirst
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       type: Pooled
///       loadBalancerType: BreadthFirst
///   personalautomatic:
///     type: azure:desktopvirtualization:HostPool
///     properties:
///       name: personalautomatic
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       type: Personal
///       personalDesktopAssignmentType: Automatic
///       loadBalancerType: BreadthFirst
///   remoteapp:
///     type: azure:desktopvirtualization:ApplicationGroup
///     properties:
///       name: acctag
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       type: RemoteApp
///       hostPoolId: ${pooledbreadthfirst.id}
///       friendlyName: TestAppGroup
///       description: 'Acceptance Test: An application group'
///   chrome:
///     type: azure:desktopvirtualization:Application
///     properties:
///       name: googlechrome
///       applicationGroupId: ${remoteapp.id}
///       friendlyName: Google Chrome
///       description: Chromium based web browser
///       path: C:\Program Files\Google\Chrome\Application\chrome.exe
///       commandLineArgumentPolicy: DoNotAllow
///       commandLineArguments: --incognito
///       showInPortal: false
///       iconPath: C:\Program Files\Google\Chrome\Application\chrome.exe
///       iconIndex: 0
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DesktopVirtualization` - 2025-10-10
///
/// ## Import
///
/// Virtual Desktop Application can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:desktopvirtualization/application:Application example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myGroup1/providers/Microsoft.DesktopVirtualization/applicationGroups/myapplicationgroup/applications/myapplication
/// ```
class Application extends pulumi.CustomResource {
  /// Resource ID for a Virtual Desktop Application Group to associate with the Virtual Desktop Application. Changing this forces a new resource to be created.
  late final pulumi.Output<String> applicationGroupId;
  /// Specifies whether this published application can be launched with command line arguments provided by the client, command line arguments specified at publish time, or no command line arguments at all. Possible values include: `DoNotAllow`, `Allow`, `Require`.
  late final pulumi.Output<String> commandLineArgumentPolicy;
  /// Command Line Arguments for Virtual Desktop Application.
  late final pulumi.Output<String?> commandLineArguments;
  /// Option to set a description for the Virtual Desktop Application.
  late final pulumi.Output<String?> description;
  /// Option to set a friendly name for the Virtual Desktop Application.
  late final pulumi.Output<String> friendlyName;
  /// The index of the icon you wish to use.
  late final pulumi.Output<int?> iconIndex;
  /// Specifies the path for an icon which will be used for this Virtual Desktop Application.
  late final pulumi.Output<String> iconPath;
  /// The name of the Virtual Desktop Application. Changing the name forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The file path location of the app on the Virtual Desktop OS.
  late final pulumi.Output<String> path;
  /// Specifies whether to show the RemoteApp program in the RD Web Access server.
  late final pulumi.Output<bool?> showInPortal;

  /// Creates a new [Application].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Application]. {@macro pulumi_desktopvirtualization_application_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Application(
    String name, {
    ApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:desktopvirtualization/application:Application',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    applicationGroupId = registerOutput<String>('applicationGroupId');
    commandLineArgumentPolicy = registerOutput<String>('commandLineArgumentPolicy');
    commandLineArguments = registerOutput<String?>('commandLineArguments');
    description = registerOutput<String?>('description');
    friendlyName = registerOutput<String>('friendlyName');
    iconIndex = registerOutput<int?>('iconIndex');
    iconPath = registerOutput<String>('iconPath');
    this.name = registerOutput<String>('name');
    path = registerOutput<String>('path');
    showInPortal = registerOutput<bool?>('showInPortal');
  }

  /// Gets an existing [Application] resource's state with the given [name] and [id].
  static Application get(
    String name,
    pulumi.Input<String> id, {
    ApplicationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Application._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Application._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:desktopvirtualization/application:Application',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationGroupId = registerOutput<String>('applicationGroupId');
    commandLineArgumentPolicy = registerOutput<String>('commandLineArgumentPolicy');
    commandLineArguments = registerOutput<String?>('commandLineArguments');
    description = registerOutput<String?>('description');
    friendlyName = registerOutput<String>('friendlyName');
    iconIndex = registerOutput<int?>('iconIndex');
    iconPath = registerOutput<String>('iconPath');
    this.name = registerOutput<String>('name');
    path = registerOutput<String>('path');
    showInPortal = registerOutput<bool?>('showInPortal');
  }

  /// Creates a typed reference to an existing [Application] resource.
  Application.reference(String urn)
    : super(
        'azure:desktopvirtualization/application:Application',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    applicationGroupId = registerOutput<String>('applicationGroupId');
    commandLineArgumentPolicy = registerOutput<String>('commandLineArgumentPolicy');
    commandLineArguments = registerOutput<String?>('commandLineArguments');
    description = registerOutput<String?>('description');
    friendlyName = registerOutput<String>('friendlyName');
    iconIndex = registerOutput<int?>('iconIndex');
    iconPath = registerOutput<String>('iconPath');
    this.name = registerOutput<String>('name');
    path = registerOutput<String>('path');
    showInPortal = registerOutput<bool?>('showInPortal');
  }
}
